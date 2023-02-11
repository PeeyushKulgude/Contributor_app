import 'package:assignment_1/screens/homescreen/models/creator_model.dart';
import 'package:get/get.dart';

class CreatorsDataModel {
  RxList<CreatorsData> creatorsList = RxList<CreatorsData>([
    const CreatorsData(
        id: "C1",
        name: "Carry Minati",
        img_url: "assets/carry.jpg",
        job: "Youtuber"),
    const CreatorsData(
        id: "C2",
        name: "Ashish Chanchalani",
        img_url: "assets/ashish.jpg",
        job: "Youtuber"),
    const CreatorsData(
      id: "C3",
      name: "BB ki vines",
      img_url: "assets/bb.png",
      job: "Comedian",
    ),
    const CreatorsData(
        id: "C4",
        name: "Beer Biceps",
        img_url: "assets/beer.png",
        job: "Content Creator"),
    const CreatorsData(
        id: "C5",
        name: "Physics Walla",
        img_url: "assets/physics.jpg",
        job: "Educator"),
    const CreatorsData(
        id: "C6",
        name: "Anubhav Bassi",
        img_url: "assets/anubhav.jpg",
        job: "Standup Comedian"),
  ]);
}
