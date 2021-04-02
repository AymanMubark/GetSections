import 'package:flutter/material.dart';

class SectionsModel with ChangeNotifier{
  List<Sections> sections;

  SectionsModel({this.sections});

  SectionsModel.fromJson(Map<String, dynamic> json) {
    if (json['sections'] != null) {
      sections = new List<Sections>();
      json['sections'].forEach((v) {
        sections.add(new Sections.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.sections != null) {
      data['sections'] = this.sections.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sections with ChangeNotifier {
  Section section;
  List<Providers> providers;

  Sections({this.section, this.providers});

  Sections.fromJson(Map<String, dynamic> json) {
    section =
    json['section'] != null ? new Section.fromJson(json['section']) : null;
    if (json['providers'] != null) {
      providers = new List<Providers>();
      json['providers'].forEach((v) {
        providers.add(new Providers.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.section != null) {
      data['section'] = this.section.toJson();
    }
    if (this.providers != null) {
      data['providers'] = this.providers.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Section with ChangeNotifier{
  int id;
  String places;
  String nameAr;
  String nameEn;
  String descriptionAr;
  String descriptionEn;
  String appImage;

  Section(
      {this.id,
        this.places,
        this.nameAr,
        this.nameEn,
        this.descriptionAr,
        this.descriptionEn,
        this.appImage});

  Section.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    places = json['places'];
    nameAr = json['name_ar'];
    nameEn = json['name_en'];
    descriptionAr = json['description_ar'];
    descriptionEn = json['description_en'];
    appImage = json['app_image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['places'] = this.places;
    data['name_ar'] = this.nameAr;
    data['name_en'] = this.nameEn;
    data['description_ar'] = this.descriptionAr;
    data['description_en'] = this.descriptionEn;
    data['app_image'] = this.appImage;
    return data;
  }
}

class Providers {
  int id;
  int user;
  int bank;
  String bankaccountno;
  String bankaccountiban;
  String accountOwnerName;
  String tradename;
  String tradeImage;
  String profileDescription;
  int providerType;
  String serviceType;
  int publish;
  int accountStatus;
  String lastAvailable;
  String lastLocation;
  String deviceType;
  String osType;
  String osVersion;
  String onesignalId;
  String deviceModel;
  String deviceLanguage;
  Null rejectMsg;
  int maxrate;
  bool isonline;

  Providers(
      {this.id,
        this.user,
        this.bank,
        this.bankaccountno,
        this.bankaccountiban,
        this.accountOwnerName,
        this.tradename,
        this.tradeImage,
        this.profileDescription,
        this.providerType,
        this.serviceType,
        this.publish,
        this.accountStatus,
        this.lastAvailable,
        this.lastLocation,
        this.deviceType,
        this.osType,
        this.osVersion,
        this.onesignalId,
        this.deviceModel,
        this.deviceLanguage,
        this.rejectMsg,
        this.maxrate,
        this.isonline});

  Providers.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    user = json['user'];
    bank = json['bank'];
    bankaccountno = json['bankaccountno'];
    bankaccountiban = json['bankaccountiban'];
    accountOwnerName = json['account_owner_name'];
    tradename = json['tradename'];
    tradeImage = json['trade_image'];
    profileDescription = json['profile_description'];
    providerType = json['provider_type'];
    serviceType = json['service_type'];
    publish = json['publish'];
    accountStatus = json['account_status'];
    lastAvailable = json['last_available'];
    lastLocation = json['last_location'];
    deviceType = json['device_type'];
    osType = json['os_type'];
    osVersion = json['os_version'];
    onesignalId = json['onesignal_id'];
    deviceModel = json['device_model'];
    deviceLanguage = json['device_language'];
    rejectMsg = json['reject_msg'];
    maxrate = json['maxrate'];
    isonline = json['isonline'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user'] = this.user;
    data['bank'] = this.bank;
    data['bankaccountno'] = this.bankaccountno;
    data['bankaccountiban'] = this.bankaccountiban;
    data['account_owner_name'] = this.accountOwnerName;
    data['tradename'] = this.tradename;
    data['trade_image'] = this.tradeImage;
    data['profile_description'] = this.profileDescription;
    data['provider_type'] = this.providerType;
    data['service_type'] = this.serviceType;
    data['publish'] = this.publish;
    data['account_status'] = this.accountStatus;
    data['last_available'] = this.lastAvailable;
    data['last_location'] = this.lastLocation;
    data['device_type'] = this.deviceType;
    data['os_type'] = this.osType;
    data['os_version'] = this.osVersion;
    data['onesignal_id'] = this.onesignalId;
    data['device_model'] = this.deviceModel;
    data['device_language'] = this.deviceLanguage;
    data['reject_msg'] = this.rejectMsg;
    data['maxrate'] = this.maxrate;
    data['isonline'] = this.isonline;
    return data;
  }
}
