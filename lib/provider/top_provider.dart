import 'package:dating_videocall/model/model3.dart';
import 'package:dating_videocall/view/store/Store_screen.dart';
import 'package:flutter/material.dart';

class Top_Provider extends ChangeNotifier{
  dynamic l=2;

  List<ImageS>d1=[
    // ImageS(image:'assets/image/s1.png',title: 'good-looking'),
    // ImageS(image:'assets/image/s3.png',title: 'beauty'),
    // ImageS(image:'assets/image/s2.png',title: 'handsome'),
    // ImageS(image:'assets/image/s4.png',title: 'Cute'),
    // ImageS(image:'assets/image/s5.png',title: 'striking'),
    // ImageS(image:'assets/image/s6.png',title: 'Pretty'),
  ];
  void changsposition(dynamic index){
    l=index;
    notifyListeners();
  }
  String txtNamee = "";
  String txtAge = "";
  late String txtImage = "";
  String txtCountry= "";
  String txtGender = "";
  String countryValue = "";
  String stateValue = "";
  String cityValue= "";


  int i=0;

  void changeicon(int index){
    i = index;
    notifyListeners();
  }
  
  List <videocall>l1 = [
    videocall(con: "Afghanistan	",km: "0.4km",year: "19",TImage: "assets/image/Image.jpg",Image2: "assets/image/21.jpg",flag: "🇦🇫",Image: "assets/image/1.jpg",centry:  "21,Afghanistan",like:"5.6" , Name: "Anastasia" ,video: "assets/video/1.mp4"),
    videocall(con: "Albania",km: "1.5km",year: "22",TImage: "assets/image/Image-1.jpg",Image2: "assets/image/22.jpg",flag: "🇦🇽",Image: "assets/image/2.jpg",centry:  "23,Albania",like:"7.8"   , Name: "Angelina " ,video: "assets/video/2.mp4"),
    videocall(con: "Algeria	",km: "2.0km",year: "20",TImage: "assets/image/Image-2.jpg",Image2: "assets/image/23.jpg",flag: "🇦🇱",Image: "assets/image/3.jpg",centry:  "24,Algeria ",like:"8.5",   Name: "Annika " ,video: "assets/video/3.mp4"),
    videocall(con: "Ando",km: "2.7km",year: "27",TImage: "assets/image/Image-3.jpg",Image2: "assets/image/24.jpg",flag: "🇩🇿",Image: "assets/image/4.jpg",centry:  "19,Andorra",like:"9.4",    Name: "Anya " ,video: "assets/video/4.mp4"),
    videocall(con: "Angola	",km: "0.7km",year: "29",TImage: "assets/image/Image-4.jpg",Image2: "assets/image/25.jpg",flag: "🇦🇸",Image: "assets/image/5.jpg",centry:  "18,Angola",like:"5.2",     Name: "Irina " ,video: "assets/video/5.mp4"),
    videocall(con: "Italy",km: "0.6km",year: "27",TImage: "assets/image/Image-5.jpg",Image2: "assets/image/26.jpg",flag: "🇦🇩",Image: "assets/image/6.jpg",centry:  "24,Madagascar",like:"12.5",Name: "Karine " ,video: "assets/video/6.mp4"),
    videocall(con: "Argentina	",km: "0.9km",year: "28",TImage: "assets/image/Image-6.jpg",Image2: "assets/image/27.jpg",flag: "🇦🇴",Image: "assets/image/7.jpg",centry:  "18,Argentina",like:"18.5", Name: "Katina " ,video: "assets/video/7.mp4"),
    videocall(con: "Armenia",km: "1.4km",year: "22",TImage: "assets/image/Image-7.jpg",Image2: "assets/image/28.jpg",flag: "🇦🇮",Image: "assets/image/8.jpg",centry:  "25,Armenia",like:"28.3",   Name: "Khristina " ,video: "assets/video/8.mp4"),
    videocall(con: "Australia	",km: "1.0km",year: "19",TImage: "assets/image/Image-8.jpg",Image2: "assets/image/29.jpg",flag: "🇦🇶",Image: "assets/image/9.jpg",centry:  "9,Australia",like:"95.4",  Name: "Kira " ,video: "assets/video/9.mp4"),
    videocall(con: "Austria",km: "2.9km",year: "20",TImage: "assets/image/p40.jpg",Image2: "assets/image/30.jpg",flag: "🇦🇬",Image: "assets/image/10.jpg",centry: "19,Austria",like:"55.1",        Name:"Lada ",video: "assets/video/10.mp4"),
    videocall(con: "Azerbaijan	",km: "2.7km",year: "25",TImage: "assets/image/p41.jpg",Image2: "assets/image/31.jpg",flag: "🇦🇷",Image: "assets/image/11.jpg",centry: "22Malawi",like:"95.4",          Name:"Lara ",video: "assets/video/11.mp4"),
    videocall(con: "Bahamas",km: "0.8km",year: "17",TImage: "assets/image/p42.jpg",Image2: "assets/image/32.jpg",flag: "🇦🇲",Image: "assets/image/12.jpg",centry: "20,Malaysia",like:"14.5",       Name:"Lelyah ",video: "assets/video/12.mp4"),
    videocall(con: "Bahrain	",km: "6.7km",year: "24",TImage: "assets/image/p43.jpg",Image2: "assets/image/33.jpg",flag: "🇦🇼",Image: "assets/image/13.jpg",centry: "27,Maldives",like:"85.4"       ,Name:"Lia ",video: "assets/video/13.mp4"),
    videocall(con: "Bangladesh",km: "4.8km",year: "25",TImage: "assets/image/p44.jpg",Image2: "assets/image/34.jpg",flag: "🇦🇺",Image: "assets/image/14.jpg",centry: "29,Mali",like:"94.5",           Name: "Mila ",video: "assets/video/14.mp4"),
    videocall(con: "Barbad",km: "5.9km",year: "28",TImage: "assets/image/p45.jpg",Image2: "assets/image/35.jpg",flag: "🇦🇹",Image: "assets/image/15.jpg",centry: "27,Malta",like:"74.8",          Name: "Nadia ",video: "assets/video/15.mp4"),
    videocall(con: "Belarus",km: "6.4km",year: "19",TImage: "assets/image/p46.jpg",Image2: "assets/image/36.jpg",flag: "🇦🇿",Image: "assets/image/16.jpg",centry: "28,Mexico",like:"25.6"         ,Name: "Natalya ",video: "assets/video/16.mp4"),
    videocall(con: "Belgium	",km: "9.1km",year: "20",TImage: "assets/image/p47.jpg",Image2: "assets/image/37.jpg",flag: "🇧🇸",Image: "assets/image/17.jpg",centry: "22,Micronesia",like:"87.5",      Name: "Nina ",video: "assets/video/17.mp4"),
    videocall(con: "Belize",km: "4.2km",year: "22",TImage: "assets/image/p48.jpg",Image2: "assets/image/38.jpg",flag: "🇧🇭",Image: "assets/image/18.jpg",centry: "19,Moldova",like:"35.4"         ,Name: "Anna ",video: "assets/video/18.mp4"),
    videocall(con: "Benin	",km: "6.4km",year: "24",TImage: "assets/image/p49.jpg",Image2: "assets/image/39.jpg",flag: "🇧🇩",Image: "assets/image/19.jpg",centry: "20,Monaco",like:"15.4",          Name: "Anzhelika ",video: "assets/video/19.mp4"),
    videocall(con: "Bhutan",km: "7.6km",year: "26",TImage: "assets/image/p50.jpg",Image2: "assets/image/40.jpg",flag: "🇧🇧",Image: "assets/image/20.jpg",centry: "25,Mongolia",like:"25.9",        Name: "Avdotya ",video: "assets/video/20.mp4"),
    videocall(con: "Bolivia	",km: "9.4km",year: "28",TImage: "assets/image/p30.jpg",Image2: "assets/image/41.jpg",flag: "🇧🇾",Image: "assets/image/21.jpg",centry: "17,Chad",like:"19.6",            Name: "Bella ",video: "assets/video/21.mp4"),
    videocall(con: "Latvia",km: "2.4km",year: "30",TImage: "assets/image/p31.jpg",Image2: "assets/image/42.jpg",flag: "🇧🇪",Image: "assets/image/22.jpg",centry: "24,Chile",like:"2.4",            Name: "Calina ",video: "assets/video/22.mp4"),
    videocall(con: "Botswana",km: "6.4km",year: "17",TImage: "assets/image/p32.jpg",Image2: "assets/image/43.jpg",flag: "🇧🇿",Image: "assets/image/23.jpg",centry: "25,China",like:"6.4",            Name: "Dariya ",video: "assets/video/23.mp4"),
    videocall(con: "Brazil",km: "6.1km",year: "19",TImage: "assets/image/p33.jpg",Image2: "assets/image/44.jpg",flag: "🇧🇯",Image: "assets/image/24.jpg",centry: "28,Colombia",like:"48.2",        Name: "Dasha ",video: "assets/video/24.mp4"),
    videocall(con: "Brune",km: "0.4km",year: "21",TImage: "assets/image/p34.jpg",Image2: "assets/image/45.jpg",flag: "🇧🇲",Image: "assets/image/25.jpg",centry: "19,Comoros",like:"94.3",        Name: "Diana ",video: "assets/video/25.mp4"),
    videocall(con: "Bulgaria,",km: "9.5km",year: "23",TImage: "assets/image/p35.jpg",Image2: "assets/image/46.jpg",flag: "🇧🇹",Image: "assets/image/26.jpg",centry: "20,Eritrea",like:"94.5",         Name: "Izabelle ",video: "assets/video/26.mp4"),
    videocall(con: "Laos",km: "4.5km",year: "25",TImage: "assets/image/p36.jpg",Image2: "assets/image/47.jpg",flag: "🇧🇴",Image: "assets/image/27.jpg",centry: "22,Estonia",like:"64.2",         Name: "Mischa ",video: "assets/video/27.mp4"),
    videocall(con: "Burundi	",km: "1.0km",year: "27",TImage: "assets/image/p37.jpg",Image2: "assets/image/48.jpg",flag: "🇧🇦",Image: "assets/image/28.jpg",centry: "24,Eswatini",like:"97.5",        Name: "Nadezhda ",video: "assets/video/28.mp4"),
    videocall(con: "Israel	",km: "2.0km",year: "29",TImage: "assets/image/p38.jpg",Image2: "assets/image/49.jpg",flag: "🇧🇼",Image: "assets/image/29.jpg",centry: "26,Ethiopia",like:"99.4",        Name: "Ninotchka ",video: "assets/video/29.mp4"),
    videocall(con: "Cabo Verde",km: "3.0km",year: "22",TImage: "assets/image/p39.jpg",Image2: "assets/image/50.jpg",flag: "🇧🇷",Image: "assets/image/30.jpg",centry: "28,Spain",like:"84.1",            Name: "Oksana ",video: "assets/video/30.mp4"),
    videocall(con: "Cambodia",km: "7.5km",year: "29",TImage: "assets/image/p20.jpg",Image2: "assets/image/1.jpg",flag: "🇻🇬",Image: "assets/image/31.jpg",centry: "30,Sri Lanka",like:"45.1"        ,Name: "Ol'ga ",video: "assets/video/31.mp4"),
    videocall(con: "Cameroon",km: "8.4km",year: "21",TImage: "assets/image/p21.jpg",Image2: "assets/image/2.jpg",flag: "🇧🇳",Image: "assets/image/32.jpg",centry: "17,Sudan",like:"99",              Name: "Olechka ",video: "assets/video/32.mp4"),
    videocall(con: "Canada",km: "6.4km",year: "23",TImage: "assets/image/p22.jpg",Image2: "assets/image/3.jpg",flag: "🇧🇬",Image: "assets/image/33.jpg",centry: "19,Suriname",like:"45.1",         Name: "Olien ",video: "assets/video/33.mp4"),
    videocall(con: "Niger",km: "4.1km",year: "22",TImage: "assets/image/p23.jpg",Image2: "assets/image/4.jpg",flag: "🇧🇫",Image: "assets/image/34.jpg",centry: "21,Sweden",like:"12",             Name: "Olya ",video: "assets/video/34.mp4"),
    videocall(con: "Chad",km: "1.5km",year: "24",TImage: "assets/image/p24.jpg",Image2: "assets/image/5.jpg",flag: "🇧🇮",Image: "assets/image/35.jpg",centry: "23,Switzerland",like:"1.1",       Name: "Paraaha ",video: "assets/video/35.mp4"),
    videocall(con: "Chile	",km: "6.1km",year: "18",TImage: "assets/image/p25.jpg",Image2: "assets/image/6.jpg",flag: "🇰🇭",Image: "assets/image/36.jpg",centry: "25,Syria",like:"6.4",             Name: "Pheodora ",video: "assets/video/36.mp4"),
    videocall(con: "China	",km: "9.4km",year: "21",TImage: "assets/image/p26.jpg",Image2: "assets/image/7.jpg",flag: "🇨🇲",Image: "assets/image/37.jpg",centry: "27,Iceland",like:"8.4",           Name: "Polina ",video: "assets/video/37.mp4"),
    videocall(con: "Colombia",km: "6.1km",year: "22",TImage: "assets/image/p27.jpg",Image2: "assets/image/8.jpg",flag: "🇨🇦",Image: "assets/image/38.jpg",centry: "29,India",like:"14.2",            Name: "Rada ",video: "assets/video/38.mp4"),
    videocall(con: "Comoros",km: "7.2km",year: "23",TImage: "assets/image/p28.jpg",Image2: "assets/image/9.jpg",flag: "🇮🇨",Image: "assets/image/39.jpg",centry: "22Indonesia",like:"46.2",         Name: "Radinka ",video: "assets/video/39.mp4"),
    videocall(con: "Congo ",km: "9.4km",year: "24",TImage: "assets/image/p29.jpg",Image2: "assets/image/10.jpg",flag: "🇨🇻",Image: "assets/image/40.jpg",centry: "29,Iran",like:"94.2",             Name: "Renata ",video: "assets/video/40.mp4"),
    videocall(con: "Costa Rica",km: "6.1km",year: "25",TImage: "assets/image/p10.jpg",Image2: "assets/image/11.jpg",flag: "🇧🇶",Image: "assets/image/41.jpg",centry: "21,Iraq",like:"45.1",             Name: "Roksana",video: "assets/video/41.mp4"),
    videocall(con: "Croatia",km: "7.4km",year: "21",TImage: "assets/image/p11.jpg",Image2: "assets/image/12.jpg",flag: "🇰🇾",Image: "assets/image/42.jpg",centry: "23,Ireland",like:"64.2",           Name: "Roza ",video: "assets/video/42.mp4"),
    videocall(con: "Cuba	",km: "6.4km",year: "23",TImage: "assets/image/p12.jpg",Image2: "assets/image/13.jpg",flag: "🇨🇫",Image: "assets/image/43.jpg",centry: "22,Israel",like:"94.2",            Name: "Svetlana ",video: "assets/video/43.mp4"),
    videocall(con: "Cyprus",km: "6.0km",year: "24",TImage: "assets/image/p13.jpg",Image2: "assets/image/14.jpg",flag: "🇹🇩",Image: "assets/image/44.jpg",centry: "24,Italy",like:"94.5",             Name: "Tavisha ",video: "assets/video/44.mp4"),
    videocall(con: "Czechia ",km: "4.2km",year: "19",TImage: "assets/image/p14.jpg",Image2: "assets/image/15.jpg",flag: "🇮🇴",Image: "assets/image/45.jpg",centry: "18,Jamaica",like:"87.5",           Name: "Vanka ",video: "assets/video/45.mp4"),
    videocall(con: "Democratic ",km: "3.1km",year: "18",TImage: "assets/image/p15.jpg",Image2: "assets/image/16.jpg",flag: "🇨🇱",Image: "assets/image/46.jpg",centry: "21,Japan",like:"94.5",             Name: "Zhanna ",video: "assets/video/46.mp4"),
    videocall(con: "Denmark	",km: "3.9km",year: "24",TImage: "assets/image/p16.jpg",Image2: "assets/image/17.jpg",flag: "🇨🇳",Image: "assets/image/47.jpg",centry: "22,Jordan",like:"1",               Name: "Nika ",video: "assets/video/47.mp4"),
    videocall(con: "Djibouti",km: "3.2km",year: "18",TImage: "assets/image/p17.jpg",Image2: "assets/image/18.jpg",flag: "🇨🇽",Image: "assets/image/48.jpg",centry: "23,Laos",like:"54",                Name: "Nikita ",video: "assets/video/48.mp4"),
    videocall(con: "Iran",km: "4.2km",year: "25",TImage: "assets/image/p18.jpg",Image2: "assets/image/19.jpg",flag: "🇨🇴",Image: "assets/image/49.jpg",centry: "24,Latvia",like:"45.5",            Name: "Raisa ",video: "assets/video/49.mp4"),
    videocall(con: "India",km: "8.4km",year: "19",TImage: "assets/image/p19.jpg",Image2: "assets/image/20.jpg",flag: "🇫🇮",Image: "assets/image/50.jpg",centry: "25,Lebanon",like:"34.1",            Name: "Regina ",video: "assets/video/50.mp4"),
  ];

  videocall?Datapickkk;


  List <Superhero> marvelHeroes = [
    Superhero(
        heroName: 'Spider Man',
        name: 'Peter Parker',
        pathImage: 'assets/image/spiderman-a.png',
        rawColor: "0xffA41209"),
    Superhero(
        heroName: 'Iron Man',
        name: 'Tony Stark',
        pathImage: 'assets/image/ironman-a.png',
        rawColor: "0xffB3790F"),
    Superhero(
        heroName: 'Thor',
        name: 'Thor Odinson',
        pathImage: 'assets/image/thor-c.png',
        rawColor: "0xff3E4953"),
    Superhero(
        heroName: 'Ant Man',
        name: 'Scott Lang',
        pathImage: 'assets/image/antman-a.png',
        rawColor: "0xff98142B"),
    Superhero(
        heroName: 'Black Widow',
        name: 'Natasha Romanova',
        pathImage: 'assets/image/blackwidow-a.png',
        rawColor: "0xff011535"),
    Superhero(
        heroName: 'Captain America',
        name: 'Steve Rogers',
        pathImage: 'assets/image/captain-b.png',
        rawColor: "0xff0232CB"),
    Superhero(
        heroName: 'Hawk eye',
        name: 'Clint Barton',
        pathImage: 'assets/image/hawkeye.png',
        rawColor: "0xff380142"),
    Superhero(
        heroName: 'Hulk',
        name: 'Bruce Banner',
        pathImage: 'assets/image/hulk-b.png',
        rawColor: "0xff047A3B"
    ),
  ];
  
  List<UserModel> sampleUsers = [
    UserModel(imageasset:'assets/image/21.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/40/d3/83/40d38356eb3e28c5f40f20cd6d63f316.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/91/a6/76/91a67607b553683195f931a6064e625f.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/a5/bf/75/a5bf75ee24dabbb1271e9d8208f223ea.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/5b/26/5b/5b265b7087425bf8b794b479d0ebc672.jpg"),
      ],
      userName: "Anastasia",),

    UserModel(imageasset:'assets/image/22.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/06/f1/9c/06f19c63898a6b9ffdf45c3759f00703.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/be/16/c6/be16c65f640350e2a22f3293e93d10a9.jpg"),],
      userName: "Angelina",),

    UserModel(imageasset:'assets/image/23.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/23/ad/50/23ad50be0558a32dc84312f3483820e0.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/e8/c4/2a/e8c42a1fe329f8ca887a45ab6c59bfc2.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/736x/8b/02/83/8b0283d719e63d192d06dbb6980782bd.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/50/82/5d/50825d3f5367f7b05c7a82fc37a39b25.jpg"),],
      userName: "Nadia",),

    UserModel(imageasset:'assets/image/24.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/750x/4d/49/90/4d49907742df50cd0651856bddfaae7b.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/84/19/a2/8419a252f43e900865ddc9aa2cae3e04.jpg"),],
      userName: "Mila",),
    UserModel(imageasset:'assets/image/25.jpg',

      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/ce/69/fa/ce69fa163da546c10477be7787d42e8e.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/70/f0/0b/70f00b6837f7dba45be9cef3355bb683.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/95/a7/25/95a7252a45b9fa0847d98ca4d272a93e.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/59/51/fb/5951fb3e7b6ab95faa71672c255b1266.jpg"),],
      userName: "Lara",),

    UserModel(imageasset:'assets/image/26.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/81/44/e1/8144e1b2c2800205527f835fc41fa021.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/0c/88/52/0c88520ceecb78e05364e1bf34413a79.jpg"),],
      userName: "Anya",),

    UserModel(imageasset:'assets/image/27.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/2e/84/1d/2e841dddc38a8e0ae6fc8e67feb3fdcb.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/4b/43/f5/4b43f5516f5c6fd4ccd65708c1d0f5c5.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/736x/5c/bc/06/5cbc062faf6f61f272011d8b967e904d.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/ad/93/fc/ad93fc1c090c386510a242eb651549ee.jpg"),],
      userName: "Khristina",),

    UserModel(imageasset:'assets/image/28.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/26/a3/53/26a353b0c265a32bab6d85bab590c25e.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/736x/60/36/99/603699751e8b90615b365b4ad1d22c57.jpg"),],
      userName: "Nadia",),

    UserModel(imageasset:'assets/image/29.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/76/13/86/7613869de06576c2ae7818049868f327.jpg"),
      ],
      userName: "Bella",),

    UserModel(imageasset:'assets/image/30.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/f4/47/cf/f447cf4cfa5e292caa3308fbaed2c71c.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/ae/e3/cf/aee3cf10cd70c998f8797ee839bb2540.jpg"),],
      userName: "Dasha",),

    UserModel(imageasset:'assets/image/31.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/34/f4/41/34f441bf736f438427de0429fae8c822.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/ca/ae/e0/caaee01ecd7a9da86840caad02fcec2c.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/84/c0/48/84c048d04344c84bc74e4b7e61809237.jpg"),
       ],
      userName: "Oksana",),

    UserModel(imageasset:'assets/image/32.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/750x/40/2d/d5/402dd52b68ecdb2f55ef2da3a8eebb8e.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/aa/40/9f/aa409f929bc9e99cdb0f783b2867df60.jpg "),],
      userName: "Polina",),

    UserModel(imageasset:'assets/image/33.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/d7/c2/3c/d7c23ce5d51a4114c8f1a47a30778997.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/6c/56/50/6c56503197de24fd43b543020b97a7c0.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/fd/d7/f6/fdd7f6b2a2f7e2f108416c186012a0a3.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/33/08/8d/33088df3334d4677f100a1fc9d9559d4.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/aa/e2/3d/aae23dfb759177fa9ce9f40ed3780e09.jpg"),],
      userName: "Rada",),

    UserModel(imageasset:'assets/image/34.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/77/15/28/771528d497a0e07ced87b5bb700fcf89.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/474x/3e/6c/2e/3e6c2ec0c9bbe5a4b06c1862912bf0a6.jpg"),],
      userName: "Regina",),

    UserModel(imageasset:'assets/image/35.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/06/d8/39/06d839f2a818e923d40a88cbf5029ddd.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/bc/1c/bf/bc1cbf140268dc2c031172ab846d517c.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/4f/d1/75/4fd175eb0a64eaf4a8215d2cdc4d8e91.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/aa/c5/ef/aac5ef65b0e3ef30a1174cb1ef361bdf.jpg"),],
      userName: "Tavisha",),

    UserModel(imageasset:'assets/image/36.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/750x/cc/87/67/cc8767cfb269718e76056d8f9f8f83ef.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/ed/d9/e1/edd9e1db715f5b5301c8a8a2593fd99b.jpg"),],
      userName: "Nika",),

    UserModel(imageasset:'assets/image/37.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/c0/29/47/c02947c19e458ff59937c5208952a9cf.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/c2/f9/30/c2f930b59ad342b955d1380af37ba135.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/736x/c1/42/2d/c1422d0eeac72a6c425bc037ee6eee4c.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/22/a0/3d/22a03d3c54f977e06c679f3c04bdd4dc.jpg"),],
      userName: "Nikita",),

    UserModel(imageasset:'assets/image/38.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/750x/b6/5d/22/b65d226da0f232ec85950a70398462ed.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/3f/89/84/3f8984039cecfaef3d48ad3718dbb5b7.jpg"),],
      userName: "Roza",),

    UserModel(imageasset:'assets/image/39.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/a8/e4/d8/a8e4d8e02aad2305a9816d3e0e8989af.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/dc/28/ab/dc28abbdd9175b920d0f0c23f2b6511c.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/c0/0d/20/c00d202e90abc8bc342f345f4d21585b.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/750x/ce/5e/28/ce5e2848d3a6fcbcaf5af619a8c15681.jpg "),],
      userName: "Radinka",),

    UserModel(imageasset:'assets/image/40.jpg',
      stories:[
        StoryModel(imageUrl: "https://i.pinimg.com/564x/f4/fa/fc/f4fafc2a773166bfb63cead187cbef75.jpg"),
        StoryModel(imageUrl: "https://i.pinimg.com/564x/88/b6/6c/88b66c62a73c8df16a5cb49413bbf34d.jpg"),],
      userName: "Vanka",),
 ];
  UserModel?pick;


}