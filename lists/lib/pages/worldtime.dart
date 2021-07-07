import 'dart:convert';
import 'package:http/http.dart';
import 'package:lists/pages/choose_location.dart';
class WorldTime{
    String location;
  late  String time;
    String flag;

   WorldTime({required this.location,required this.flag,required this.time});
   void getTime() async{
      var url = Uri.parse("http://worldtimeapi.org/api/timezone/Asia/Tokyo");
      Response response = await get(url);
      Map data = jsonDecode(response.body);
      // get properties
      String datetime  = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      print(datetime);
      print(offset);

      // create datetime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours:int.parse(offset)));
      time = now .toString();

   }
}
