import 'package:equatable/equatable.dart';

import 'access_info.dart';
import 'sale_info.dart';
import 'search_info.dart';
import 'volume_info.dart';

class BookModel extends Equatable {
  final String? kind;
  final String? id;
  final String? etag;
  final String? selfLink;
  final VolumeInfo volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;

  const BookModel({
    this.kind,
    this.id,
    this.etag,
    this.selfLink,
    required this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  factory BookModel.fromJson(jsonData) => BookModel(
        kind: jsonData['kind'] as String?,
        id: jsonData['id'] as String?,
        etag: jsonData['etag'] as String?,
        selfLink: jsonData['selfLink'] as String?,
        volumeInfo: VolumeInfo.fromJson(jsonData['volumeInfo'] as Map<String, dynamic>),
        saleInfo: jsonData['saleInfo'] == null
            ? null
            : SaleInfo.fromJson(jsonData['saleInfo'] as Map<String, dynamic>),
        accessInfo: jsonData['accessInfo'] == null
            ? null
            : AccessInfo.fromJson(jsonData['accessInfo'] as Map<String, dynamic>),
        searchInfo: jsonData['searchInfo'] == null
            ? null
            : SearchInfo.fromJson(jsonData['searchInfo'] as Map<String, dynamic>),
      );
  Map<String, dynamic> toJson() => {
        'kind': kind,
        'id': id,
        'etag': etag,
        'selfLink': selfLink,
        'volumeInfo': volumeInfo.toJson(),
        'saleInfo': saleInfo?.toJson(),
        'accessInfo': accessInfo?.toJson(),
        'searchInfo': searchInfo?.toJson(),
      };

  @override
  List<Object?> get props {
    return [
      kind,
      id,
      etag,
      selfLink,
      volumeInfo,
      saleInfo,
      accessInfo,
      searchInfo,
    ];
  }
}