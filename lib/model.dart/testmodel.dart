import 'package:washmyclothes/utils/constant/imagename.dart';

class IntroModel {
  String? image;
  String? title;

  IntroModel({
    this.image,
    this.title,
  });
}

List<IntroModel> contents = [
  IntroModel(
    title: 'All',
    image: Imagecall.menu,
    //al Opportunities Pvt Ltd has experienced counselors with years of expertise.',
  ),
  IntroModel(
    title: 'Wash and fold',
    image: Imagecall.washandfold,
  ),
  IntroModel(
    title: 'Wash and steam iron',
    image: Imagecall.washandiron,
  ),
  IntroModel(
    title: 'Premium laundry',
    image: Imagecall.premimum,
  )
];

class Ordermodel {
  String? image;
  String? title;
  String? orderid;
  String? services;
  String? paid;

  Ordermodel({this.image, this.title, this.orderid, this.services, this.paid});
}

List<Ordermodel> order = [
  Ordermodel(
      title: 'All',
      image: Imagecall.premimum,
      orderid: "#22546544",
      services: " Wash and fold",
      paid: "paid"
      //al Opportunities Pvt Ltd has experienced counselors with years of expertise.',
      ),
  Ordermodel(
      title: 'Wash and fold',
      image: Imagecall.washandfold,
      orderid: "#546544",
      services: " Steam iron",
      paid: "Unpaid"),
  Ordermodel(
      title: 'Wash and steam iron',
      image: Imagecall.washandiron,
      orderid: "#5465433",
      services: "Wash and fold",
      paid: "paid"),
  Ordermodel(
      title: 'Premium laundry',
      image: Imagecall.premimum,
      orderid: "#546544332",
      services: " Steam iron",
      paid: "Unpaid"),
  Ordermodel(
      title: 'Wash and steam iron',
      image: Imagecall.washandiron,
      orderid: "#5465433",
      services: "Wash and fold",
      paid: "paid"),
  Ordermodel(
      title: 'Premium laundry',
      image: Imagecall.premimum,
      orderid: "#546544332",
      services: " Steam iron",
      paid: "Unpaid")
];

class noticedata {
  String? image;
  String? status;

  String? time;

  noticedata({this.image, this.status, this.time});
}

List<noticedata> noticedetails = [
  noticedata(
    image: Imagecall.ready,
    status: "r",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.delivered,
    status: "d",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.progress,
    status: "p",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.ready,
    status: "d",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.delivered,
    status: "d",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.progress,
    status: "p",
    time: "12:10",
  ),
  noticedata(
    image: Imagecall.progress,
    status: "p",
    time: "12:10",
  ),
];
