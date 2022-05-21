import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class Videomodels{
  // ignore: non_constant_identifier_names
  String? Video;
  String name;
  String time;
  String title;
  String post;

  Videomodels({required this.Video,required this.name,
  required this.time,required this.title,required this.post});
  }
  List<Videomodels> videomodels = [
      Videomodels(
        Video: YoutubePlayer.convertUrlToId("https://youtu.be/6PfYFeJSGjo"), 
        name: "Mayank", 
        time: "1 hr Ago", 
        title:"I am born to express, not to impress.", 
        post: "assets/ironman.jpg"),
        Videomodels(
        Video: YoutubePlayer.convertUrlToId("https://youtu.be/df2vWVIhUJI"),
        name: "Harsh", 
        time: "12 Min Ago", 
        title: "I live, I love, I fight, I cry, but I never give up", 
        post: "assets/ironman2.jpg"),
        Videomodels(
         Video: YoutubePlayer.convertUrlToId("https://youtu.be/df2vWVIhUJI"), 
        name: "Ramu", 
        time: "12 hour Ago", 
        title:"To success in life... You need two things... Ignorance and Confidence...", 
        post: "assets/ironman3.jpg"),
        Videomodels(
        Video: YoutubePlayer.convertUrlToId("https://youtu.be/54acVVq5clw"), 
        name: "Yuvraj", 
        time: "12 sec Ago", 
        title:"The worst nightmare I've seen is to give up on the things I need..", 
        post: "assets/ironman4.jpg"),
        Videomodels(
        Video: YoutubePlayer.convertUrlToId("https://youtu.be/faple3eqPU0"), 
        name: "Mohit", 
        time: "12 days Ago", 
        title:"Being loyal to a partner is one of the best feelings ever", 
        post: "assets/ironman.jpg"),
        Videomodels(
        Video: YoutubePlayer.convertUrlToId("https://youtu.be/RwxC5J8LI4Q"), 
        name: "Mohini", 
        time: "12 Min Ago", 
        title:'Never hide your secrets from a person who can Read Your Eyes because the one who read your eyes is always expert in Reading Your Heart.', 
        post: "assets/ironman2.jpg"),
        Videomodels(
        Video: "assets/ironman4.jpg", 
        name: "Shyam", 
        time: "12 months Ago", 
        title:"I am born to express, not to impress.", 
        post: "assets/ironman.jpg"),
  ];