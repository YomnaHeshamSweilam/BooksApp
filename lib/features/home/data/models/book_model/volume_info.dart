import 'package:equatable/equatable.dart';

import 'image_links.dart';
import 'industry_identifier.dart';
import 'panelization_summary.dart';
import 'reading_modes.dart';

class VolumeInfo extends Equatable {
  final String? title;
  final List<String>? authors;
  final String? publisher;
  final String? publishedDate;
  final String? description;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;

  const VolumeInfo({
    this.title,
    this.authors,
    this.publisher,
    this.publishedDate,
    this.description,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    required this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  factory VolumeInfo.fromJson(Map<String, dynamic> jsonData) => VolumeInfo(
        title: jsonData['title'] as String?,
        authors: (jsonData['authors'] as List<dynamic>?)?.cast<String>(),
        publisher: jsonData['publisher'] as String?,
        publishedDate: jsonData['publishedDate'] as String?,
        description: jsonData['description'] as String?,
        industryIdentifiers: (jsonData['industryIdentifiers'] as List<dynamic>?)
            ?.map((e) => IndustryIdentifier.fromJson(e as Map<String, dynamic>))
            .toList(),
        readingModes: jsonData['readingModes'] == null
            ? null
            : ReadingModes.fromJson(
                jsonData['readingModes'] as Map<String, dynamic>),
        pageCount: jsonData['pageCount'] as int?,
        printType: jsonData['printType'] as String?,
        categories: (jsonData['categories'] as List<dynamic>?)?.cast<String>(),
        maturityRating: jsonData['maturityRating'] as String?,
        allowAnonLogging: jsonData['allowAnonLogging'] as bool?,
        contentVersion: jsonData['contentVersion'] as String?,
        panelizationSummary: jsonData['panelizationSummary'] == null
            ? null
            : PanelizationSummary.fromJson(
                jsonData['panelizationSummary'] as Map<String, dynamic>),
        imageLinks: jsonData['imageLinks'] == null
            ? null
            :  ImageLinks.fromJson(jsonData['imageLinks'] as Map<String, dynamic>),
        language: jsonData['language'] as String?,
        previewLink: jsonData['previewLink'] as String?,
        infoLink: jsonData['infoLink'] as String?,
        canonicalVolumeLink: jsonData['canonicalVolumeLink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'title': title,
        'authors': authors,
        'publisher': publisher,
        'publishedDate': publishedDate,
        'description': description,
        'industryIdentifiers':
            industryIdentifiers?.map((e) => e.toJson()).toList(),
        'readingModes': readingModes?.toJson(),
        'pageCount': pageCount,
        'printType': printType,
        'categories': categories,
        'maturityRating': maturityRating,
        'allowAnonLogging': allowAnonLogging,
        'contentVersion': contentVersion,
        'panelizationSummary': panelizationSummary?.toJson(),
        'imageLinks': imageLinks?.toJson(),
        'language': language,
        'previewLink': previewLink,
        'infoLink': infoLink,
        'canonicalVolumeLink': canonicalVolumeLink,
      };

  @override
  List<Object?> get props {
    return [
      title,
      authors,
      publisher,
      publishedDate,
      description,
      industryIdentifiers,
      readingModes,
      pageCount,
      printType,
      categories,
      maturityRating,
      allowAnonLogging,
      contentVersion,
      panelizationSummary,
      imageLinks,
      language,
      previewLink,
      infoLink,
      canonicalVolumeLink,
    ];
  }
}
