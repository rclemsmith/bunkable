import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:photo_view/photo_view.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: TimeTable(

    ),

  ),
);

class TimeTable extends StatefulWidget {

  @override
  State createState() {
    return _TableTime();
  }
}

class _TableTime extends State<TimeTable> {


  int day = 0  ;

  Widget buildText(int index,String period){

    return Align(
      alignment: Alignment.topLeft,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: new Text(
          '$index. $period',
          style: TextStyle(fontSize: 18.0,),
        ),
      ),
    );
  }

  table(){

    if(day == 0) {
      DateTime date = DateTime.now();
      day = date.weekday;
    }

    if (day == 1){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Monday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
            buildText(1, "Mobile Computing"),
            buildText(2, "Distributed Systems"),
            buildText(3, "Data Warehousing And Data Mining"),
            buildText(4, "Compiler Design"),
            buildText(5, "Artificial Intelligence"),
            buildText(6, "Internet Programming Lab"),
            buildText(7, "Internet Programming Lab"),
            buildText(8, "Internet Programming Lab"),

          ],
        ),
      );
    }else if(day == 2){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Tuesday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
            buildText(1, "Artificial Intelligence"),
            buildText(2, "Mobile Computing"),
            buildText(3, "Compiler Design"),
            buildText(4, "Internet Programming"),
            buildText(5, "Distributed Systems"),
            buildText(6, "Data Warehousing And Data Mining"),
            buildText(7, "Professional Communication"),
            buildText(8, "Professional Communication"),

          ],
        ),
      );
    }else if(day == 3){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Wednesday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
            buildText(1, "Compiler Design"),
            buildText(2, "Internet Programming"),
            buildText(3, "Mobile Application Development Lab"),
            buildText(4, "Mobile Application Development Lab"),
            buildText(5, "Mobile Application Development Lab"),
            buildText(6, "Mobile Application Development Lab"),
            buildText(7, "Mini Project"),
            buildText(8, "Mini Project"),

          ],
        ),
      );
    }else if(day == 4){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Thursday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
            buildText(1, "Distributed Systems"),
            buildText(2, "Internet Programming"),
            buildText(3, "Artificial Intelligence"),
            buildText(4, "Data Warehousing and Data Mining"),
            buildText(5, "Mobile Computing"),
            buildText(6, "I-Cell"),
            buildText(7, "Library"),
            buildText(8, "Mentor"),

          ],
        ),
      );
    }else if(day == 5){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Friday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
            buildText(1, "Internet Programming"),
            buildText(2, "Artificial Intelligence"),
            buildText(3, "Distributed Systems"),
            buildText(4, "Mobile Computing"),
            buildText(5, "Internet Programming Lab"),
            buildText(6, "Compiler Design"),
            buildText(7, "Compiler Design Lab"),
            buildText(8, "Compiler Design Lab"),

          ],
        ),
      );
    }else if(day == 6){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Saturday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),

          ],
        ),
      );
    }else if(day == 7){
      return Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  "Sunday",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30.0),
                ),
              ),
            ),
          ],
        ),
      );

    }
  }


  void increase(int d){

    setState(() {
      day = d ;
    });
  }

  showAlertDialog(BuildContext context,String period,String path){
    return showDialog(context: context,builder: (context){
      return Padding(
        padding: const EdgeInsets.only(left: 2,right: 2,top: 0,bottom: 0),
        child: AlertDialog(
          title: Text("$period"),
          content: PhotoView(
            imageProvider: AssetImage("$path"),
            backgroundDecoration: BoxDecoration(color: Colors.cyanAccent),
            ),

        ),
      );
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Scaffold (
        appBar: AppBar(
          title: Text("Bunk Them All"),
        ),
        body: SlidingUpPanel(
            panel: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                FlatButton.icon(
                    onPressed: (){
                        showAlertDialog(context,"Artificial Intelligence","assets/aip.webp");
                    },
                    icon: Icon(Icons.camera),
                    label: Text("Arificial Intelligence")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Compiler Design","assets/cdp.webp");
                    },
                    icon: Icon(Icons.copyright),
                    label: Text("Compiler Design"),
//                      padding: EdgeInsets.only(left: 1),
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Data Warehousing and Data Mining","assets/dwp.webp");
                    },
                    icon: Icon(Icons.dns),
                    label: Text("Data Warehousing and Data Mining"),
//                    padding: EdgeInsets.only(left: 1),
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Internet Programming","assets/ipf.webp");
                    },
                    icon: Icon(Icons.live_tv),
                    label: Text("Internet Programming")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Mobile Computing","assets/mcf.webp");
                    },
                    icon: Icon(Icons.add_call),
                    label: Text("Mobile Computing")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Distributed Systems","assets/dsp.webp");
                    },
                    icon: Icon(Icons.reorder),
                    label: Text("Distributed Systems")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Mobile Application Lab","assets/mclf.webp");
                    },
                    icon: Icon(Icons.android),
                    label: Text("Mobile Application Lab")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Internet Programming Lab","assets/iplf.webp");
                    },
                    icon: Icon(Icons.play_arrow),
                    label: Text("Internet Programming Lab")
                ),
                FlatButton.icon(
                    onPressed: (){
                      showAlertDialog(context,"Professional Communication","assets/cat.webp");
                    },
                    icon: Icon(Icons.record_voice_over),
                    label: Text("Professional Communication")
                ),
              ],
            ),
          body: table(),
          minHeight: 50,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(24),topRight: Radius.circular(24)),
          margin: const EdgeInsets.only(left: 30,right: 30,bottom: 5),
          boxShadow: [
            BoxShadow(
              blurRadius: 20.0,
              color: Colors.grey,
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: new Row(
            children: <Widget>[
              Container(
                child: FlatButton(
                  onPressed: (){
                    increase(1);
                  },
                  child: Text("Mon"),
                ),
                width: 70.0,
              ),
              Container(
                child: FlatButton(
//                icon: Icon(Icons.airline_seat_flat),
                  child: Text("Tue"),
                  onPressed: (){
                    increase(2);
                  },

                ),
                width: 70,
              ),
              Container(
                child: FlatButton(
//                icon: Icon(Icons.airline_seat_flat),
                  child: Text("Wed"),
                  onPressed: (){
                    increase(3);
                  },

                ),
                width: 70,
              ),
              Container(
                child: FlatButton(
//                icon: Icon(Icons.airline_seat_flat),
                  child: Text("Thu"),
                  onPressed: (){
                    increase(4);
                  },

                ),
                width: 70,
              ),
              Container(
                child: FlatButton(
//                icon: Icon(Icons.airline_seat_flat),
                  child: Text("Fri"),
                  onPressed: (){
                    increase(5);
                  },

                ),
                width: 70,
              )
            ],
          ),
        ),
      ),
    );
  }
}
