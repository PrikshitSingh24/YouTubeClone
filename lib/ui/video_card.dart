import 'package:flutter/material.dart';
import 'package:randomuidesign/model/video_model.dart';

Widget videoCard(VideoModel model){
  return InkWell(
    onTap: () {},
    child: Container(
    margin: EdgeInsets.only(bottom: 20.0),
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey[900],
                    image: DecorationImage(
                      image: NetworkImage(model.thumnail!),
                      fit: BoxFit.fill
                    ),
                  ),
              ),
              Positioned(
                right: 20,
                  bottom: 10,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 2.0,horizontal: 8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.black
                  ),
                  child: Text(model.videoDuration!,style: TextStyle(color: Colors.white),),
                ),
              )
            ],
          ),
          SizedBox(height: 12.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 40.0,
                height: 40.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                  image: DecorationImage(
                    image: NetworkImage(model.avatar!),
                  ),
                ),
              ),
              SizedBox(width: 12,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(model.videoTitle!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 16),),
                    Text("${model.channel} - ${model.views}",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
              IconButton(onPressed: () {}, icon:Icon(Icons.more_vert,color: Colors.white,) )
            ],
          ),
        ],
      ),
    ),
  );
}