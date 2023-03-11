import 'package:dating_videocall/model/model3.dart';
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
}