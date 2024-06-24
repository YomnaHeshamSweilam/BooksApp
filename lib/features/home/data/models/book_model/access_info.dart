import 'package:equatable/equatable.dart';

import 'epub.dart';
import 'pdf.dart';

class AccessInfo extends Equatable {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;

  const AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  factory AccessInfo.fromJson(Map<String, dynamic> jsonData) => AccessInfo(
        country: jsonData['country'] as String?,
        viewability: jsonData['viewability'] as String?,
        embeddable: jsonData['embeddable'] as bool?,
        publicDomain: jsonData['publicDomain'] as bool?,
        textToSpeechPermission: jsonData['textToSpeechPermission'] as String?,
        epub: jsonData['epub'] == null
            ? null
            : Epub.fromJson(jsonData['epub'] as Map<String, dynamic>),
        pdf: jsonData['pdf'] == null
            ? null
            : Pdf.fromJson(jsonData['pdf'] as Map<String, dynamic>),
        webReaderLink: jsonData['webReaderLink'] as String?,
        accessViewStatus: jsonData['accessViewStatus'] as String?,
        quoteSharingAllowed: jsonData['quoteSharingAllowed'] as bool?,
      );

  Map<String, dynamic> toJson() => {
        'country': country,
        'viewability': viewability,
        'embeddable': embeddable,
        'publicDomain': publicDomain,
        'textToSpeechPermission': textToSpeechPermission,
        'epub': epub?.toJson(),
        'pdf': pdf?.toJson(),
        'webReaderLink': webReaderLink,
        'accessViewStatus': accessViewStatus,
        'quoteSharingAllowed': quoteSharingAllowed,
      };

  @override
  List<Object?> get props {
    return [
      country,
      viewability,
      embeddable,
      publicDomain,
      textToSpeechPermission,
      epub,
      pdf,
      webReaderLink,
      accessViewStatus,
      quoteSharingAllowed,
    ];
  }
}
