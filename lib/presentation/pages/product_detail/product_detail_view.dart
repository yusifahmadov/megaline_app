import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import '../../../data/models/product/product_edge_model.dart';
import '../../bloc/slider_indicator/slider_indicator_cubit.dart';
import 'image/product_image_view.dart';
import '../../widgets/buttons/async_button.dart';

import '../../../core/injection/injection.dart';
import '../../utility/padding/padding.dart';

class ProductDetailView extends StatefulWidget {
  final ProductEdgeModel product;

  const ProductDetailView({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductDetailView> createState() => _ProductDetailViewState();
}

class _ProductDetailViewState extends State<ProductDetailView> {
  SliderIndicatorCubit sliderIndicatorCubit = getIt<SliderIndicatorCubit>();

  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Theme.of(context).colorScheme.primary,
          title: SizedBox(
              width: 250,
              child: Text(
                widget.product.node.name,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1!
                    .copyWith(color: Colors.white, fontSize: 15),
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                maxLines: 1,
              )),
          actions: const [
            Padding(
              padding: MegaPadding.right20(),
              child: Icon(Icons.share),
            )
          ],
        ),
        body: Stack(
          children: [
            LayoutBuilder(builder: ((context, constraints) {
              return Padding(
                padding: const MegaPadding.normalHorizontal(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _productImageSlider(),
                    const SizedBox(height: 30),
                    SizedBox(
                        width: constraints.maxWidth / 1.3,
                        child: Text(widget.product.node.name)),
                    const SizedBox(height: 10),
                    SizedBox(
                        width: constraints.maxWidth / 1.3,
                        child: Text(
                            "${widget.product.node.pricing.priceRange.start.gross.amount.toString()} AZN")),
                  ],
                ),
              );
            })),
            Align(
              alignment: Alignment.bottomCenter,
              heightFactor: 11.2,
              child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Theme.of(context)
                            .colorScheme
                            .primary
                            .withOpacity(0.15),
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: const Offset(0, 3))
                  ]),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MegaMaterialTextButton(
                        onPressed: () async {},
                        text:
                            "Səbətə Əlavə Et    ${widget.product.node.pricing.priceRange.start.gross.amount} AZN",
                        maxSize: true),
                  )),
            ),
          ],
        ));
  }

  StreamBuilder<int> _productImageSlider() {
    return StreamBuilder<int>(
        stream: sliderIndicatorCubit.indicator,
        initialData: 0,
        builder: (context, snapshot) {
          return Column(
            children: [
              Padding(
                padding: const MegaPadding.top30(),
                child: CarouselSlider.builder(
                    carouselController: carouselController,
                    itemCount: widget.product.node.media.length,
                    itemBuilder: (context, a, b) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(PageRouteBuilder(
                              pageBuilder: (_, __, ___) => ProductImageView(
                                  imageUrl: widget.product.node.media[a].url)));
                        },
                        child: CachedNetworkImage(
                          imageUrl: widget.product.node.media[a].url,
                          progressIndicatorBuilder: (context, a, b) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          },
                          errorWidget: (context, url, error) =>
                              const Icon(Icons.error),
                        ),
                      );
                    },
                    options: CarouselOptions(
                        enableInfiniteScroll: false,
                        onPageChanged: (a, b) {
                          sliderIndicatorCubit.updateIndicator(
                              a, widget.product.node.media.length);
                        })),
              ),
              DotsIndicator(
                dotsCount: widget.product.node.media.length,
                position: snapshot.data!.toDouble(),
                decorator: DotsDecorator(
                    activeColor: Theme.of(context).colorScheme.primary),
              )
            ],
          );
        });
  }

  @override
  void dispose() {
    sliderIndicatorCubit.close();
    super.dispose();
  }
}
