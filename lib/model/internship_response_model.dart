// To parse this JSON data, do
//
//     final internshipResponseModel = internshipResponseModelFromJson(jsonString);

import 'dart:convert';

///here model is
class InternshipResponseModel {
 late Map<String, InternshipsMeta> internshipsMeta;
 late List<int> internshipIds;

  InternshipResponseModel({
    required this.internshipsMeta,
    required this.internshipIds,
  });

  factory InternshipResponseModel.fromJson(Map<String, dynamic> json) =>
      InternshipResponseModel(
        internshipsMeta: Map.from(json["internships_meta"]).map((k, v) =>
            MapEntry<String, InternshipsMeta>(k, InternshipsMeta.fromJson(v))),
        internshipIds: List<int>.from(json["internship_ids"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "internships_meta": Map.from(internshipsMeta)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "internship_ids": List<dynamic>.from(internshipIds.map((x) => x)),
      };
}

class InternshipsMeta {
  late int id;
  late String title;
  late String employmentType;
  late ApplicationStatusMessage applicationStatusMessage;
  late dynamic jobTitle;
  late bool workFromHome;
  late Segment segment;
  late dynamic segmentLabelValue;
  late dynamic internshipTypeLabelValue;
  late List<Segment> jobSegments;
  late String companyName;
  late String companyUrl;
  late bool isPremium;
  late bool isPremiumInternship;
  late String employerName;
  late String companyLogo;
  late InternshipsMetaType type;
  late String url;
  late int isInternchallenge;
  late bool isExternal;
  late bool isActive;
  late DateTime expiresAt;
  late String closedAt;
  late String profileName;
  late bool partTime;
  late String startDate;
  late String duration;
  late Stipend stipend;
  late dynamic salary;
  late dynamic jobExperience;
  late String experience;
  late String postedOn;
  late int postedOnDateTime;
  late String applicationDeadline;
  late String expiringIn;
  late String postedByLabel;
  late PostedByLabelType postedByLabelType;
  late List<String> locationNames;
  late List<Location> locations;
  late DateTime startDateComparisonFormat;
  late DateTime startDate1;
  late DateTime startDate2;
  late bool isPpo;
  late bool isPpoSalaryDisclosed;
  late dynamic ppoSalary;
  late dynamic ppoSalary2;
  late String ppoLabelValue;
  late bool toShowExtraLabel;
  late String extraLabelValue;
  late bool isExtraLabelBlack;
  late List<dynamic> campaignNames;
  late String campaignName;
  late bool toShowInSearch;
  late String campaignUrl;
  late dynamic campaignStartDateTime;
  late dynamic campaignLaunchDateTime;
  late dynamic campaignEarlyAccessStartDateTime;
  late dynamic campaignEndDateTime;
  late List<LabelElement> labels;
  late LabelsAppElement labelsApp;
  late List<LabelsAppElement> labelsAppInCard;
  late bool isCovidWfhSelected;
  late bool toShowCardMessage;
  late String message;
  late bool isApplicationCappingEnabled;
  late String applicationCappingMessage;
  late List<dynamic> overrideMetaDetails;
  late bool eligibleForEasyApply;
  late bool eligibleForB2BApplyNow;
  late bool toShowB2BLabel;
  late bool isInternationalJob;
  late bool toShowCoverLetter;
  late String? officeDays;

  InternshipsMeta({
    required this.id,
    required this.title,
    required this.employmentType,
    required this.applicationStatusMessage,
    required this.jobTitle,
    required this.workFromHome,
    required this.segment,
    required this.segmentLabelValue,
    required this.internshipTypeLabelValue,
    required this.jobSegments,
    required this.companyName,
    required this.companyUrl,
    required this.isPremium,
    required this.isPremiumInternship,
    required this.employerName,
    required this.companyLogo,
    required this.type,
    required this.url,
    required this.isInternchallenge,
    required this.isExternal,
    required this.isActive,
    required this.expiresAt,
    required this.closedAt,
    required this.profileName,
    required this.partTime,
    required this.startDate,
    required this.duration,
    required this.stipend,
    required this.salary,
    required this.jobExperience,
    required this.experience,
    required this.postedOn,
    required this.postedOnDateTime,
    required this.applicationDeadline,
    required this.expiringIn,
    required this.postedByLabel,
    required this.postedByLabelType,
    required this.locationNames,
    required this.locations,
    required this.startDateComparisonFormat,
    required this.startDate1,
    required this.startDate2,
    required this.isPpo,
    required this.isPpoSalaryDisclosed,
    required this.ppoSalary,
    required this.ppoSalary2,
    required this.ppoLabelValue,
    required this.toShowExtraLabel,
    required this.extraLabelValue,
    required this.isExtraLabelBlack,
    required this.campaignNames,
    required this.campaignName,
    required this.toShowInSearch,
    required this.campaignUrl,
    required this.campaignStartDateTime,
    required this.campaignLaunchDateTime,
    required this.campaignEarlyAccessStartDateTime,
    required this.campaignEndDateTime,
    required this.labels,
    required this.labelsApp,
    required this.labelsAppInCard,
    required this.isCovidWfhSelected,
    required this.toShowCardMessage,
    required this.message,
    required this.isApplicationCappingEnabled,
    required this.applicationCappingMessage,
    required this.overrideMetaDetails,
    required this.eligibleForEasyApply,
    required this.eligibleForB2BApplyNow,
    required this.toShowB2BLabel,
    required this.isInternationalJob,
    required this.toShowCoverLetter,
    required this.officeDays,
  });

  factory InternshipsMeta.fromJson(Map<String, dynamic> json) =>
      InternshipsMeta(
        id: json["id"] ?? "",
        title: json["title"] ?? "",
        employmentType: json["employment_type"] ?? "",
        applicationStatusMessage: ApplicationStatusMessage.fromJson(
            json["application_status_message"]),
        jobTitle: json["job_title"] ?? "",
        workFromHome: json["work_from_home"],
        segment: segmentValues.map[json["segment"]]!,
        segmentLabelValue: json["segment_label_value"],
        internshipTypeLabelValue: json["internship_type_label_value"],
        jobSegments: List<Segment>.from(
            json["job_segments"].map((x) => segmentValues.map[x]!)),
        companyName: json["company_name"] ?? "",
        companyUrl: json["company_url"],
        isPremium: json["is_premium"],
        isPremiumInternship: json["is_premium_internship"],
        employerName: json["employer_name"],
        companyLogo: json["company_logo"] ?? "",
        type: internshipsMetaTypeValues.map[json["type"]]!,
        url: json["url"],
        isInternchallenge: json["is_internchallenge"],
        isExternal: json["is_external"],
        isActive: json["is_active"],
        expiresAt: DateTime.parse(json["expires_at"]),
        closedAt: json["closed_at"],
        profileName: json["profile_name"],
        partTime: json["part_time"],
        startDate: json["start_date"] ?? "",
        duration: json["duration"],
        stipend: Stipend.fromJson(json["stipend"]),
        salary: json["salary"] ?? "",
        jobExperience: json["job_experience"],
        experience: json["experience"],
        postedOn: json["posted_on"],
        postedOnDateTime: json["postedOnDateTime"],
        applicationDeadline: json["application_deadline"],
        expiringIn: json["expiring_in"],
        postedByLabel: json["posted_by_label"] ?? "",
        postedByLabelType:
            postedByLabelTypeValues.map[json["posted_by_label_type"]]!,
        locationNames: List<String>.from(json["location_names"].map((x) => x)),
        locations: List<Location>.from(
            json["locations"].map((x) => Location.fromJson(x))),
        startDateComparisonFormat:
            DateTime.parse(json["start_date_comparison_format"]),
        startDate1: DateTime.parse(json["start_date1"]),
        startDate2: DateTime.parse(json["start_date2"]),
        isPpo: json["is_ppo"],
        isPpoSalaryDisclosed: json["is_ppo_salary_disclosed"],
        ppoSalary: json["ppo_salary"] ?? "",
        ppoSalary2: json["ppo_salary2"] ?? "",
        ppoLabelValue: json["ppo_label_value"] ?? "",
        toShowExtraLabel: json["to_show_extra_label"],
        extraLabelValue: json["extra_label_value"],
        isExtraLabelBlack: json["is_extra_label_black"],
        campaignNames: List<dynamic>.from(json["campaign_names"].map((x) => x)),
        campaignName: json["campaign_name"],
        toShowInSearch: json["to_show_in_search"],
        campaignUrl: json["campaign_url"],
        campaignStartDateTime: json["campaign_start_date_time"],
        campaignLaunchDateTime: json["campaign_launch_date_time"],
        campaignEarlyAccessStartDateTime:
            json["campaign_early_access_start_date_time"],
        campaignEndDateTime: json["campaign_end_date_time"],
        labels: List<LabelElement>.from(
            json["labels"].map((x) => LabelElement.fromJson(x))),
        labelsApp: labelsAppElementValues.map[json["labels_app"]]!,
        labelsAppInCard: List<LabelsAppElement>.from(json["labels_app_in_card"]
            .map((x) => labelsAppElementValues.map[x]!)),
        isCovidWfhSelected: json["is_covid_wfh_selected"],
        toShowCardMessage: json["to_show_card_message"],
        message: json["message"],
        isApplicationCappingEnabled: json["is_application_capping_enabled"],
        applicationCappingMessage: json["application_capping_message"],
        overrideMetaDetails:
            List<dynamic>.from(json["override_meta_details"].map((x) => x)),
        eligibleForEasyApply: json["eligible_for_easy_apply"],
        eligibleForB2BApplyNow: json["eligible_for_b2b_apply_now"],
        toShowB2BLabel: json["to_show_b2b_label"],
        isInternationalJob: json["is_international_job"],
        toShowCoverLetter: json["to_show_cover_letter"],
        officeDays: json["office_days"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "employment_type": employmentTypeValues.reverse[employmentType],
        "application_status_message": applicationStatusMessage.toJson(),
        "job_title": jobTitle,
        "work_from_home": workFromHome,
        "segment": segmentValues.reverse[segment],
        "segment_label_value": segmentLabelValue,
        "internship_type_label_value": internshipTypeLabelValue,
        "job_segments": List<dynamic>.from(
            jobSegments.map((x) => segmentValues.reverse[x])),
        "company_name": companyName,
        "company_url": companyUrl,
        "is_premium": isPremium,
        "is_premium_internship": isPremiumInternship,
        "employer_name": employerName,
        "company_logo": companyLogoValues.reverse[companyLogo],
        "type": internshipsMetaTypeValues.reverse[type],
        "url": url,
        "is_internchallenge": isInternchallenge,
        "is_external": isExternal,
        "is_active": isActive,
        "expires_at":
            "${expiresAt.year.toString().padLeft(4, '0')}-${expiresAt.month.toString().padLeft(2, '0')}-${expiresAt.day.toString().padLeft(2, '0')}",
        "closed_at": closedAt,
        "profile_name": profileName,
        "part_time": partTime,
        "start_date": startDateValues.reverse[startDate],
        "duration": durationValues.reverse[duration],
        "stipend": stipend.toJson(),
        "salary": salary,
        "job_experience": jobExperience,
        "experience": experience,
        "posted_on": postedOn,
        "postedOnDateTime": postedOnDateTime,
        "application_deadline": applicationDeadline,
        "expiring_in": expiringIn,
        "posted_by_label": postedByLabel,
        "posted_by_label_type":
            postedByLabelTypeValues.reverse[postedByLabelType],
        "location_names": List<dynamic>.from(locationNames.map((x) => x)),
        "locations": List<dynamic>.from(locations.map((x) => x.toJson())),
        "start_date_comparison_format":
            "${startDateComparisonFormat.year.toString().padLeft(4, '0')}-${startDateComparisonFormat.month.toString().padLeft(2, '0')}-${startDateComparisonFormat.day.toString().padLeft(2, '0')}",
        "start_date1":
            "${startDate1.year.toString().padLeft(4, '0')}-${startDate1.month.toString().padLeft(2, '0')}-${startDate1.day.toString().padLeft(2, '0')}",
        "start_date2":
            "${startDate2.year.toString().padLeft(4, '0')}-${startDate2.month.toString().padLeft(2, '0')}-${startDate2.day.toString().padLeft(2, '0')}",
        "is_ppo": isPpo,
        "is_ppo_salary_disclosed": isPpoSalaryDisclosed,
        "ppo_salary": ppoSalary,
        "ppo_salary2": ppoSalary2,
        "ppo_label_value": ppoLabelValueValues.reverse[ppoLabelValue],
        "to_show_extra_label": toShowExtraLabel,
        "extra_label_value": extraLabelValue,
        "is_extra_label_black": isExtraLabelBlack,
        "campaign_names": List<dynamic>.from(campaignNames.map((x) => x)),
        "campaign_name": campaignName,
        "to_show_in_search": toShowInSearch,
        "campaign_url": campaignUrl,
        "campaign_start_date_time": campaignStartDateTime,
        "campaign_launch_date_time": campaignLaunchDateTime,
        "campaign_early_access_start_date_time":
            campaignEarlyAccessStartDateTime,
        "campaign_end_date_time": campaignEndDateTime,
        "labels": List<dynamic>.from(labels.map((x) => x.toJson())),
        "labels_app": labelsAppElementValues.reverse[labelsApp],
        "labels_app_in_card": List<dynamic>.from(
            labelsAppInCard.map((x) => labelsAppElementValues.reverse[x])),
        "is_covid_wfh_selected": isCovidWfhSelected,
        "to_show_card_message": toShowCardMessage,
        "message": message,
        "is_application_capping_enabled": isApplicationCappingEnabled,
        "application_capping_message": applicationCappingMessage,
        "override_meta_details":
            List<dynamic>.from(overrideMetaDetails.map((x) => x)),
        "eligible_for_easy_apply": eligibleForEasyApply,
        "eligible_for_b2b_apply_now": eligibleForB2BApplyNow,
        "to_show_b2b_label": toShowB2BLabel,
        "is_international_job": isInternationalJob,
        "to_show_cover_letter": toShowCoverLetter,
        "office_days": officeDays,
      };
}

class ApplicationStatusMessage {
  bool toShow;
  Message message;
  ApplicationStatusMessageType type;

  ApplicationStatusMessage({
    required this.toShow,
    required this.message,
    required this.type,
  });

  factory ApplicationStatusMessage.fromJson(Map<String, dynamic> json) =>
      ApplicationStatusMessage(
        toShow: json["to_show"],
        message: messageValues.map[json["message"]]!,
        type: applicationStatusMessageTypeValues.map[json["type"]]!,
      );

  Map<String, dynamic> toJson() => {
        "to_show": toShow,
        "message": messageValues.reverse[message],
        "type": applicationStatusMessageTypeValues.reverse[type],
      };
}

enum Message { THE_0_APPLICANTS, THE_1_APPLICANTS, THE_2_APPLICANTS }

final messageValues = EnumValues({
  "0 applicants": Message.THE_0_APPLICANTS,
  "1 applicants": Message.THE_1_APPLICANTS,
  "2 applicants": Message.THE_2_APPLICANTS
});

enum ApplicationStatusMessageType { HIGH_APPLICATIONS }

final applicationStatusMessageTypeValues = EnumValues(
    {"high_applications": ApplicationStatusMessageType.HIGH_APPLICATIONS});

enum CompanyLogo {
  EMPTY,
  THE_6385_F8_A1_C006_B1669724321_PNG,
  THE_7_GZRSOJ5_KO8_4424_PNG
}

final companyLogoValues = EnumValues({
  "": CompanyLogo.EMPTY,
  "6385f8a1c006b1669724321.png":
      CompanyLogo.THE_6385_F8_A1_C006_B1669724321_PNG,
  "7gzrsoj5ko8-4424.png": CompanyLogo.THE_7_GZRSOJ5_KO8_4424_PNG
});

enum Duration { THE_2_MONTHS, THE_3_MONTHS, THE_5_MONTHS }

final durationValues = EnumValues({
  "2 Months": Duration.THE_2_MONTHS,
  "3 Months": Duration.THE_3_MONTHS,
  "5 Months": Duration.THE_5_MONTHS
});

enum EmploymentType { INTERNSHIP }

final employmentTypeValues =
    EnumValues({"internship": EmploymentType.INTERNSHIP});

enum Segment { EMPTY, INTERNSHIP_FOR_WOMEN }

final segmentValues = EnumValues(
    {"": Segment.EMPTY, "internship_for_women": Segment.INTERNSHIP_FOR_WOMEN});

class LabelElement {
  List<LabelsAppElement> labelValue;
  List<LabelsAppElement> labelMobile;
  List<LabelsAppElement> labelApp;
  List<LabelsAppElement> labelsAppInCard;

  LabelElement({
    required this.labelValue,
    required this.labelMobile,
    required this.labelApp,
    required this.labelsAppInCard,
  });

  factory LabelElement.fromJson(Map<String, dynamic> json) => LabelElement(
        labelValue: List<LabelsAppElement>.from(
            json["label_value"].map((x) => labelsAppElementValues.map[x]!)),
        labelMobile: List<LabelsAppElement>.from(
            json["label_mobile"].map((x) => labelsAppElementValues.map[x]!)),
        labelApp: List<LabelsAppElement>.from(
            json["label_app"].map((x) => labelsAppElementValues.map[x]!)),
        labelsAppInCard: List<LabelsAppElement>.from(json["labels_app_in_card"]
            .map((x) => labelsAppElementValues.map[x]!)),
      );

  Map<String, dynamic> toJson() => {
        "label_value": List<dynamic>.from(
            labelValue.map((x) => labelsAppElementValues.reverse[x])),
        "label_mobile": List<dynamic>.from(
            labelMobile.map((x) => labelsAppElementValues.reverse[x])),
        "label_app": List<dynamic>.from(
            labelApp.map((x) => labelsAppElementValues.reverse[x])),
        "labels_app_in_card": List<dynamic>.from(
            labelsAppInCard.map((x) => labelsAppElementValues.reverse[x])),
      };
}

enum LabelsAppElement { INTERNATIONAL, INTERNSHIP }

final labelsAppElementValues = EnumValues({
  "International": LabelsAppElement.INTERNATIONAL,
  "Internship": LabelsAppElement.INTERNSHIP
});

class Location {
  String string;
  String link;
  Country country;
  String? region;
  String locationName;

  Location({
    required this.string,
    required this.link,
    required this.country,
    required this.region,
    required this.locationName,
  });

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        string: json["string"],
        link: json["link"],
        country: countryValues.map[json["country"]]!,
        region: json["region"],
        locationName: json["locationName"],
      );

  Map<String, dynamic> toJson() => {
        "string": string,
        "link": link,
        "country": countryValues.reverse[country],
        "region": region,
        "locationName": locationName,
      };
}

enum Country { INDIA, PHILIPPINES }

final countryValues =
    EnumValues({"India": Country.INDIA, "Philippines": Country.PHILIPPINES});

enum PostedByLabelType { INFO, SUCCESS }

final postedByLabelTypeValues = EnumValues(
    {"info": PostedByLabelType.INFO, "success": PostedByLabelType.SUCCESS});

enum PpoLabelValue { WITH_JOB_OFFER }

final ppoLabelValueValues =
    EnumValues({"With job offer": PpoLabelValue.WITH_JOB_OFFER});

enum StartDate { STARTS_IMMEDIATELY }

final startDateValues =
    EnumValues({"Starts Immediately": StartDate.STARTS_IMMEDIATELY});

class Stipend {
  String salary;
  dynamic tooltip;
  int salaryValue1;
  dynamic salaryValue2;
  SalaryType salaryType;
  Currency currency;
  Scale scale;
  bool largeStipendText;

  Stipend({
    required this.salary,
    required this.tooltip,
    required this.salaryValue1,
    required this.salaryValue2,
    required this.salaryType,
    required this.currency,
    required this.scale,
    required this.largeStipendText,
  });

  factory Stipend.fromJson(Map<String, dynamic> json) => Stipend(
        salary: json["salary"],
        tooltip: json["tooltip"],
        salaryValue1: json["salaryValue1"],
        salaryValue2: json["salaryValue2"],
        salaryType: salaryTypeValues.map[json["salaryType"]]!,
        currency: currencyValues.map[json["currency"]]!,
        scale: scaleValues.map[json["scale"]]!,
        largeStipendText: json["large_stipend_text"],
      );

  Map<String, dynamic> toJson() => {
        "salary": salary,
        "tooltip": tooltip,
        "salaryValue1": salaryValue1,
        "salaryValue2": salaryValue2,
        "salaryType": salaryTypeValues.reverse[salaryType],
        "currency": currencyValues.reverse[currency],
        "scale": scaleValues.reverse[scale],
        "large_stipend_text": largeStipendText,
      };
}

enum Currency { INR }

final currencyValues = EnumValues({"INR ": Currency.INR});

enum SalaryType { FIXED }

final salaryTypeValues = EnumValues({"fixed": SalaryType.FIXED});

enum Scale { PERMONTH }

final scaleValues = EnumValues({"permonth": Scale.PERMONTH});

enum InternshipsMetaType { REGULAR, VIRTUAL }

final internshipsMetaTypeValues = EnumValues({
  "regular": InternshipsMetaType.REGULAR,
  "virtual": InternshipsMetaType.VIRTUAL
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

InternshipResponseModel internshipResponseModelFromJson(String str) =>
    InternshipResponseModel.fromJson(json.decode(str));

String internshipResponseModelToJson(InternshipResponseModel data) =>
    json.encode(data.toJson());
