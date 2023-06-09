// ignore_for_file: camel_case_types

import 'package:pharmacy_hn_clone/core/app_image.dart';
import 'package:pharmacy_hn_clone/core/app_string.dart';

class CategoryModel {
  String? name;
  String? image;

  CategoryModel({this.name, this.image});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    return data;
  }
}

List<CategoryModel> items() {
  List<CategoryModel> mList = [];

  CategoryModel mCategoryModel = CategoryModel();

  mCategoryModel.image = AppImage.appWine;
  mCategoryModel.name = AppString.textWineLiqour;
  mList.add(mCategoryModel);

  mCategoryModel = CategoryModel();
  mCategoryModel.image = AppImage.appVitamins;
  mCategoryModel.name = AppString.textVitamins;
  mList.add(mCategoryModel);

  mCategoryModel = CategoryModel();
  mCategoryModel.image = AppImage.appHealth;
  mCategoryModel.name = AppString.textHealth;
  mList.add(mCategoryModel);

  mCategoryModel = CategoryModel();
  mCategoryModel.image = AppImage.appSkinCare;
  mCategoryModel.name = AppString.textSkinCare;
  mList.add(mCategoryModel);

  mCategoryModel = CategoryModel();
  mCategoryModel.image = AppImage.appBabies;
  mCategoryModel.name = AppString.textBabies;
  mList.add(mCategoryModel);

  mCategoryModel = CategoryModel();
  mCategoryModel.image = AppImage.appSnacks;
  mCategoryModel.name = AppString.textSnacks;
  mList.add(mCategoryModel);

  return mList;
}

class CatModel {
  String? name;
  String? image;
  double? price;

  CatModel({this.name, this.image, this.price});

  CatModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    return data;
  }
}

List<CatModel> csitems() {
  List<CatModel> mCatList = [];

  CatModel mCatModel = CatModel();

  mCatModel = CatModel();
  mCatModel.image = AppImage.appDoritosSmall;
  mCatModel.name = AppString.textDoritosTangyCheeseCornChips;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appAveenoBabySmall;
  mCatModel.name = AppString.textAveenoBaby;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appHSSmall;
  mCatModel.name = AppString.textHeadAndShouldersShampoo;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appColgateSmall;
  mCatModel.name = AppString.textColgate;

  mCatList.add(mCatModel);

  return mCatList;
}

List<CatModel> catitems() {
  List<CatModel> mCatList = [];

  CatModel mCatModel = CatModel();

  mCatModel = CatModel();
  mCatModel.image = AppImage.appDoritos;
  mCatModel.name = AppString.textDoritosTangyCheeseCornChips;
  mCatModel.price = 2.25;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appAveenoBaby;
  mCatModel.name = AppString.textAveenoBaby;
  mCatModel.price = 17.96;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appTheOrdinaryHyaluronicAcid;
  mCatModel.name = AppString.textTheOrdinaryHyaluronicAcid;
  mCatModel.price = 22.89;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appHeadAndShouldersShampoo;
  mCatModel.name = AppString.textHeadAndShouldersShampoo;
  mCatModel.price = 16.00;
  mCatList.add(mCatModel);

  return mCatList;
}

List<CatModel> pitems() {
  List<CatModel> mCatList = [];

  CatModel mCatModel = CatModel();

  mCatModel = CatModel();
  mCatModel.image = AppImage.appDoveMen;
  mCatModel.name = AppString.textDoveMen;
  mCatModel.price = 12.25;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appStressRelief;
  mCatModel.name = AppString.textStressRelief;
  mCatModel.price = 17.96;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appTheOrdinary;
  mCatModel.name = AppString.textTheOrdinary;
  mCatModel.price = 22.89;
  mCatList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appSkincareAgeless;
  mCatModel.name = AppString.textSkinCareAgeless;
  mCatModel.price = 16.00;
  mCatList.add(mCatModel);

  return mCatList;
}

class oModel {
  String? name;
  String? image;
  double? price;

  oModel({this.name, this.image, this.price});

  oModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    image = json['image'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['image'] = image;
    data['price'] = price;
    return data;
  }
}

List<CatModel> citems() {
  List<CatModel> mCList = [];

  CatModel mCatModel = CatModel();

  mCatModel = CatModel();
  mCatModel.image = AppImage.appTrueBasicsMultivitSport;
  mCatModel.name = AppString.textTrueBasicsMultivitSport;
  mCatModel.price = 14.00;
  mCList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appPonds;
  mCatModel.name = AppString.textPondsVitaminMicellar;
  mCatModel.price = 17.96;
  mCList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appBePure;
  mCatModel.name = AppString.textFormulaMaskCollection;
  mCatModel.price = 22.89;
  mCList.add(mCatModel);

  mCatModel = CatModel();
  mCatModel.image = AppImage.appPampers;
  mCatModel.name = AppString.textBabyDiapersNewborn;
  mCatModel.price = 16.00;
  mCList.add(mCatModel);

  return mCList;
}

class FeedModel {
  String? image;

  FeedModel({this.image});

  FeedModel.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    return data;
  }
}

List<FeedModel> feeditems() {
  List<FeedModel> mFeedList = [];

  FeedModel mFeedModel = FeedModel();

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appFacebook;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appYoutube;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appInstagram;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appGmail;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appWhatsApp;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appMessenger;
  mFeedList.add(mFeedModel);

  mFeedModel = FeedModel();
  mFeedModel.image = AppImage.appTiktok;
  mFeedList.add(mFeedModel);

  return mFeedList;
}

class NotificationDetails {
  String? nname;
  String? ntime;

  NotificationDetails({this.nname, this.ntime});

  NotificationDetails.fromJson(Map<String, dynamic> json) {
    nname = json['name'];
    ntime = json['time'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = nname;
    data['time'] = ntime;
    return data;
  }
}

List<NotificationDetails> nitems() {
  List<NotificationDetails> mNList = [];

  NotificationDetails mNotModel = NotificationDetails();

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textEarnedRewardPoints;
  mNotModel.ntime = AppString.text1MinAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textOrderSuccessfullyDelivered;
  mNotModel.ntime = AppString.text10MinAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textOrderOutForDelivery;
  mNotModel.ntime = AppString.text50MinAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textOrderConfirmed;
  mNotModel.ntime = AppString.text1HourAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textOrderSuccessfullyCancelled;
  mNotModel.ntime = AppString.text1DayAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textOrderSuccessfullyReturned;
  mNotModel.ntime = AppString.text1MonthAgo;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textReceivedCouponOffCoupon;
  mNotModel.ntime = AppString.text2MonthAgo;
  mNList.add(mNotModel);

  return mNList;
}

List<NotificationDetails> ritems() {
  List<NotificationDetails> mNList = [];

  NotificationDetails mNotModel = NotificationDetails();

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textCreditedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textDebitedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textCreditedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textDebitedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textCreditedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textDebitedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textCreditedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  mNotModel = NotificationDetails();
  mNotModel.nname = AppString.textDebitedOrderDetail;
  mNotModel.ntime = AppString.textDateAndTime;
  mNList.add(mNotModel);

  return mNList;
}

class VendorOrderDetails {
  String? image;

  VendorOrderDetails({this.image});

  VendorOrderDetails.fromJson(Map<String, dynamic> json) {
    image = json['image'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['image'] = image;
    return data;
  }
}

List<VendorOrderDetails> vitems() {
  List<VendorOrderDetails> mNList = [];

  VendorOrderDetails mVMModel = VendorOrderDetails();

  mVMModel = VendorOrderDetails();
  mVMModel.image = AppImage.appDoritosSmall;
  mNList.add(mVMModel);

  mVMModel = VendorOrderDetails();
  mVMModel.image = AppImage.appAveenoBabySmall;
  mNList.add(mVMModel);

  mVMModel = VendorOrderDetails();
  mVMModel.image = AppImage.appHeadAndShouldersShampoo;
  mNList.add(mVMModel);

  return mNList;
}
