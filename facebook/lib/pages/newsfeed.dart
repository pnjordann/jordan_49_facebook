import 'package:facebook/model/story_model.dart';
import 'package:facebook/widgets/createpost.dart';
import 'package:facebook/widgets/newsfeed_post.dart';
import 'package:facebook/widgets/storieslist.dart';
import 'package:flutter/material.dart';

class Newsfeeds extends StatefulWidget {
  const Newsfeeds({super.key});

  @override
  State<Newsfeeds> createState() => _NewsfeedsState();
}

class _NewsfeedsState extends State<Newsfeeds> {

  List<StoryModel> stories = [
    
    StoryModel(
    id: '1', 
    username: 'Kurt', 
    profileImagePath: 'assets/profile/prof1.jpg', 
    storyImagePath: 'assets/myday/myday1.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 5)), 
    isViewed: false),

    StoryModel(
    id: '1', 
    username: 'Finch', 
    profileImagePath: 'assets/profile/prof3.jpg', 
    storyImagePath: 'assets/myday/myday2.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 8)), 
    isViewed: false),

    StoryModel(
    id: '1', 
    username: 'Franz', 
    profileImagePath: 'assets/profile/prof4.jpg', 
    storyImagePath: 'assets/myday/myday4.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 6)), 
    isViewed: false),

    StoryModel(
    id: '1', 
    username: 'Bern', 
    profileImagePath: 'assets/profile/prof5.jpg', 
    storyImagePath: 'assets/myday/myday5.jpg', 
    timestamp: DateTime.now().subtract(const Duration(hours: 9)), 
    isViewed: false),
    
  ];





  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Image.asset(
        "assets/icon/logo.png",
        height: 80,
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          DrawerButton(),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
          Createpost(),
          StoriesList(stories: stories,
          onStoryTap: (story) {}),
          NewsFeedPost(),
          NewsFeedPost(
            name: "Vincent",
            caption: "Off to the next journey. ",
            imageurl: "assets/myday/myday4.jpg"),
        
          NewsFeedPost(
            name: "Lis",
            caption: "Congratulations to my son. ",
            imageurl: 'assets/myday/myday1.jpg',
          ),
          ],
        ),
      ),
    );
  }
}