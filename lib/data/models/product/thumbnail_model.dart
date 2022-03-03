import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/entities/product/thumbnail.dart';

part 'thumbnail_model.g.dart';
@JsonSerializable()
class ThumbnailModel extends Thumbnail{
  const  ThumbnailModel({
    required String url,
  }) : super(url: url);

  factory ThumbnailModel.fromJson(Map<String,dynamic> json) => _$ThumbnailModelFromJson(json);

      Map<String, dynamic> toJson() => _$ThumbnailModelToJson(this);


  
}
