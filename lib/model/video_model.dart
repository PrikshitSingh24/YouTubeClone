class VideoModel{
  String? thumnail;
  String? videoTitle;
  String? videoDuration;
  String? avatar;
  String? channel;
  String? views;
  String? data;

  VideoModel({
   required this.thumnail,
    required this.videoTitle,
    required this.videoDuration,
    required this.avatar,
    required this.channel,
    required this.views,
    required this.data,
});

  static List<VideoModel> listOfVideo(){
    return[
      VideoModel(
        thumnail: "https://i.ytimg.com/vi/IHaTbJPdB-s/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDYucUplnTaCZol4d4kOh12WIHxXw",
        videoTitle: "Learn Git in 20 minutes",
        videoDuration: "23:30",
        avatar: "https://yt3.ggpht.com/ytc/AL5GRJXjrfspJ8wxKzvK-Q9qRfQGRPFGj1OfJGzDDDOp=s68-c-k-c0x00ffffff-no-rj",
        channel: "Web dev simplified",
        views: "163k",
        data: "4 years ago",
      ),
      VideoModel(
        thumnail: "https://i.ytimg.com/vi/AysWlOWXIts/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLCxcmBFwbIKSv3gs--aSerE85PtEA",
        videoTitle: "New Git Users Be Like",
        videoDuration: "03:09",
        avatar: "https://yt3.ggpht.com/I5kRQcjSCh1reytT7YDGIUMpx7Po69c0A1s3dr3u694YLlFtRG-I-CahJfQ9Fc5nGYFuCi7XgfE=s68-c-k-c0x00ffffff-no-rj",
        channel: "Mr. P Solver",
        views: "524k",
        data: "3 months ago",
      ),
      VideoModel(
        thumnail: "https://i.ytimg.com/vi/cLLsc4Hlo-8/hq720.jpg?sqp=-oaymwEcCOgCEMoBSFXyq4qpAw4IARUAAIhCGAFwAcABBg==&rs=AOn4CLDsNdOrktgcSkus8_-maN8fMIN_uA",
        videoTitle: "PyTorch vs TensorFlow | Ishan Misra and Lex Fridman",
        videoDuration: "3:47",
        avatar: "https://yt3.ggpht.com/ytc/AL5GRJWSpZEszRakeC3YZs41nv_KUzSvaDAwn75umPey=s68-c-k-c0x00ffffff-no-rj",
        channel: "Lex Clips",
        views: "47k",
        data: "1 years ago",
      ),
    ];
  }


}