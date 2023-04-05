import 'package:flutter/material.dart';
import 'package:mangalyam360app/pages/mapscreen.dart';
import 'package:mangalyam360app/pages/vendor.dart';
import '../common/data.dart';
import '../common/date_model.dart';
import '../common/event_model.dart';
import '../common/event_type_model.dart';
import 'package:mangalyam360app/pages/bottomnavbar.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<DateModel> dates = <DateModel>[];
  List<EventTypeModel> eventsType = [];
  List<EventsModel> events = <EventsModel>[];
  
 @override
  void initState() {
    super.initState();
    dates = getDates();
    eventsType = getEventTypes();
    events = getEvents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
               color:Colors.blue[300]
              ),
            ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 60,horizontal: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Image.asset("assets/logo.png",height: 30,),
                        SizedBox(width: 8,),
                        Row(
                          children: <Widget>[
                            Text("Mangalyam", style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w800
                            ),),
                            Text("360", style: TextStyle(
                                color: Color(0xffFCCD00),
                                fontSize: 22,
                                fontWeight: FontWeight.w800
                            ),)
                          ],
                        ),
                        Spacer(),
                        Image.asset("assets/notify.png", height: 22,),
                        SizedBox(width: 16,),
                        Image.asset("assets/menu.png", height: 22,)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text("Hello!", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 21
                            ),),
                          ],
                        ),
                        Spacer(),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: Color(0xffFAE072)
                            ),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(30),
                              child: Image.asset("assets/profilepic.jpeg", height: 40,)),
                        )
                      ],
                    ),
                     Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search for NearBy',
                  hintStyle: TextStyle(fontSize: 18,
                  fontWeight: FontWeight.bold),
                  suffixIcon: InkWell(
                    onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => MyLocation(),));       
                    },
                    child: Icon(Icons.search,
                    size: 35,
                    color: Colors.black,),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
            ),
                    SizedBox(height: 20,),
                    SizedBox(height: 16,),
                    Text("Near By", style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    ),),
                    SizedBox(height: 16,),
                    InkWell(
                      onTap: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context) => VendorScreen(),));
                      },
                      child: Container(
                        height: 100,
                        child: ListView.builder(
                          itemCount: eventsType.length,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index){
                            return EventTile(
                              imgAssetPath: eventsType[index].imgAssetPath,
                              eventType: eventsType[index].eventType,
                            );
                            }),
                      ),
                    ),

                    /// Popular Events
                    SizedBox(height: 16,),
                    Text("popular Artists", style: TextStyle(
                        color: Colors.white,
                        fontSize: 20
                    ),),
                    Container(
                      child: ListView.builder(
                        itemCount: events.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index){
                          return PopularEventTile(
                            desc: events[index].desc,
                            imgeAssetPath: events[index].imgeAssetPath,
                            date: events[index].date,
                            address: events[index].address,
                          );

                          }),
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      bottomNavigationBar:HomeBottomBar() ,
    );
  }
}

class DateTile extends StatelessWidget {

  String weekDay;
  String date;
  bool isSelected;
  DateTile({required this.weekDay,required this.date, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: isSelected ? Color(0xffFCCD00) : Colors.transparent,
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(date, style: TextStyle(
            color: isSelected ? Colors.black : Colors.white,
            fontWeight: FontWeight.w600
          ),),
          SizedBox(height: 10,),
          Text(weekDay, style: TextStyle(
              color: isSelected ? Colors.black : Colors.white,
              fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}

class EventTile extends StatelessWidget {

  String imgAssetPath;
  String eventType;
  EventTile({ required this.imgAssetPath,required this.eventType});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 30),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 189, 215, 228),
        borderRadius: BorderRadius.circular(12)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imgAssetPath, height: 70,),
          SizedBox(height: 12,),
          Text(eventType, style: TextStyle(
            color: Colors.black
          ),)
        ],
      ),
    );
  }
}

class PopularEventTile extends StatelessWidget {

  String desc;
  String date;
  String address;
  String imgeAssetPath;/// later can be changed with imgUrl
  PopularEventTile({required this.address,required this.date,
  required this.imgeAssetPath,required this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 84, 122, 146),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: InkWell(
              onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => MyLocation(),));
              },
              child: Container(
                padding: EdgeInsets.only(left: 16),
                width: MediaQuery.of(context).size.width - 100,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(desc, style: TextStyle(
                        color: Colors.white,
                      fontSize: 18
                    ),),
                    SizedBox(height: 8,),
                    Row(
                      children: <Widget>[
                        Image.asset("assets/calender.png", height: 12,),
                        SizedBox(width: 8,),
                        Text(date, style: TextStyle(
                            color: Colors.white,
                            fontSize: 10
                        ),)
                      ],
                    ),
                    SizedBox(height: 4,),
                    Row(
                      children: <Widget>[
                        Image.asset("assets/location.png", height: 12,),
                        SizedBox(width: 8,),
                        Text(address, style: TextStyle(
                          color: Colors.white,
                          fontSize: 10
                        ),)
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(8), 
              bottomRight: Radius.circular(8)),
              child: Image.asset(imgeAssetPath, height: 100,width: 120, fit: BoxFit.cover,)),
        ],
      ),
    );
  }
}