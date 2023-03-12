class  ImageS{
  String ? image,title;
  ImageS({this.image,this.title});
}


class videocall{
  String ?Image,Name,like,centry,video,flag,Image2,TImage,year,km,con;
  videocall({this.Image, this.Name, this.like, this.centry,this.video,this.flag,this.Image2,this.TImage,this.year,this.km,this.con});
}


class UserModel {

  List<StoryModel>? stories;
  String? userName;
  String? imageasset;
  UserModel({this.stories, this.userName, this.imageasset});
}

class StoryModel {
  String ?imageUrl;
  StoryModel({this.imageUrl});
}