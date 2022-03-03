import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../product_detail/product_detail_view.dart';
import '../../../core/data_states/data_state.dart';
import '../../../core/injection/injection.dart';
import '../../../data/models/product/product_edge_model.dart';
import '../../bloc/product/product_bloc.dart';
import '../../bloc/product/product_event.dart';
import '../../utility/border_radius/border_radius.dart';
import '../../utility/padding/padding.dart';
import '../../widgets/input_decoration/mega_input_decoration.dart';
import '../../widgets/text_form_field/mega_text_form_field.dart';

class AllProductsScreenView extends StatelessWidget {
  const AllProductsScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: true,
        bottom: false,
        child: Scaffold(
          body: MultiBlocProvider(
            providers: [
              BlocProvider<ProductBloc>(
                create: (context) =>
                    getIt<ProductBloc>()..add(ProductPageStarted()),
              ),
            ],
            child: Padding(
              padding: const MegaPadding.normalHorizontal(),
              child: Column(
                children: [const SearchField(), _productList()],
              ),
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<ProductBloc, DataState<List<ProductEdgeModel>>> _productList() {
    return BlocBuilder<ProductBloc, DataState<List<ProductEdgeModel>>>(
      builder: (context, state) {
        if (state.isInProgress) {
          return const Expanded(child:  Center(child:  CircularProgressIndicator()));
        } else if (state.isFailure) {
          return const Center(
            child: Text("Xəta baş verdi"),
          );
        } else if (state.isEmpty) {
          return const Center(
            child: Text("Məhsul Yoxdur"),
          );
        } else if (state.isSuccess) {
          return Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    childAspectRatio: 3 / 8.5),
                itemCount: state.data!.length,
                itemBuilder: (context, int index) {
                  return Padding(
                    padding: const MegaPadding.top30(),
                    child: InkWell(
                      onTap: () async {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => ProductDetailView(
                                  product: state.data![index],
                                )));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: NormalBorderRadius(),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.04),
                                offset: const Offset(0, 3),
                                blurRadius: 5,
                                spreadRadius: 3,
                              )
                            ]),
                        child: Stack(
                          children: [
                            
                            Column(
                              children: [
                                _productImage(state, index),
                                _productProperties(state, index, context)
                              ],
                            ),
                             Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                  padding:const EdgeInsets.all(8.0),
                                  child: IconButton(onPressed: ()async{}, icon:const Icon(Icons.favorite_border)),
                                )),
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          );
        } else {
          return const SizedBox();
        }
      },
    );
  }

  Expanded _productProperties(DataState<List<ProductEdgeModel>> state,
      int index, BuildContext context) {
    return Expanded(
        flex: 2,
        child: Container(
            decoration:  BoxDecoration(
                color: Theme.of(context).colorScheme.primary,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const MegaPadding.top8ProductHorizontal(),
                  child: Text(
                    state.data![index].node.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white, fontSize: 15),
                  ),
                ),
                Padding(
                  padding: const MegaPadding.top8ProductHorizontal(),
                  child: Text(
                    state.data![index].node.category.name,
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white, fontSize: 14),
                  ),
                ),
                Padding(
                  padding: const MegaPadding.top8ProductHorizontal(),
                  child: Text(
                    "${state.data![index].node.pricing.priceRange.start.gross.amount.toString()} AZN",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1!
                        .copyWith(color: Colors.white, fontSize: 16),
                  ),
                )
              ],
            )));
  }

  Expanded _productImage(DataState<List<ProductEdgeModel>> state, int index) {
    return Expanded(
        flex: 4,
        child: Transform.scale(
          scale: 0.8,
          child: CachedNetworkImage(
            imageUrl: state.data![index].node.thumbnail.url,
            progressIndicatorBuilder: (context,a,b){
              return const Center(child: CircularProgressIndicator(),);
            },
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ));
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const MegaPadding.top30(),
      child: MegaTextField(
          decoration: MegaInputDecoration(
              context: context,
              hintText: "Axtar",
              fillColor: const Color(0xffF0F3F7)),
          textStyle: Theme.of(context).textTheme.bodyText1!),
    );
  }
}
