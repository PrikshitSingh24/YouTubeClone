import 'package:flutter/material.dart';
import 'package:randomuidesign/model/video_model.dart';
import 'package:randomuidesign/ui/video_card.dart';

void main(){
  runApp(MaterialApp(
    routes: {
      '/': (context) => home(),
    }
  ));
}

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    final list=VideoModel.listOfVideo();
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Image.asset('assets/download.png',width: 90,),
        centerTitle: true,
        leading:IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu,color: Colors.grey,),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Explore',style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              Container(
                margin: EdgeInsets.symmetric(vertical: 12),
                width: double.infinity,
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        backgroundColor: Colors.grey[900],
                        onSelected: (value) {},
                        elevation: 0,
                        label: Text("Gaming",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        backgroundColor: Colors.grey[900],
                        onSelected: (value) {},
                        elevation: 0,
                        label: Text("Programming",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        backgroundColor: Colors.grey[900],
                        onSelected: (value) {},
                        elevation: 0,
                        label: Text("Mobile Development",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 8),
                      child: FilterChip(
                        backgroundColor: Colors.grey[900],
                        onSelected: (value) {},
                        elevation: 0,
                        label: Text("Music",style: TextStyle(color: Colors.white),),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Recommended',style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),),
              SizedBox(height: 20,),

              for(VideoModel model in list)
                videoCard(model)
            ],
          ),
        ),
      ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.black,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
            icon: Icon(Icons.video_camera_back),
            label: 'Shorts'
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.black,
            icon: Icon(Icons.add),
            label: '',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
            icon: Icon(Icons.subscriptions_outlined),
            label: 'Subscription'
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.black,
            icon: Icon(Icons.video_library_sharp),
            label: 'Library'
          ),
        ],
      ),
    );
  }
}
