// ignore_for_file: unnecessary_new

import 'package:mangalyam360app/common/date_model.dart';
import 'package:mangalyam360app/common/event_model.dart';
import 'package:mangalyam360app/common/event_type_model.dart';

List<DateModel> getDates(){

  List<DateModel> dates = <DateModel>[];
  DateModel dateModel = new DateModel();

  //1
  dateModel.date = "10";
  dateModel.weekDay = "Sun";
  dates.add(dateModel);

  dateModel = new DateModel();

  //1
  dateModel.date = "11";
  dateModel.weekDay = "Mon";
  dates.add(dateModel);

  dateModel = new DateModel();


  //1
  dateModel.date = "12";
  dateModel.weekDay = "Tue";
  dates.add(dateModel);

  dateModel = new DateModel();

  //1
  dateModel.date = "13";
  dateModel.weekDay = "Wed";
  dates.add(dateModel);

  dateModel = new DateModel();


  //1
  dateModel.date = "14";
  dateModel.weekDay = "Thu";
  dates.add(dateModel);

  dateModel = new DateModel();


  //1
  dateModel.date = "15";
  dateModel.weekDay = "Fri";
  dates.add(dateModel);

  dateModel = new DateModel();


  //1
  dateModel.date = "16";
  dateModel.weekDay = "Sat";
  dates.add(dateModel);

  dateModel = new DateModel();

  return dates;

}

List<EventTypeModel> getEventTypes(){

  List<EventTypeModel> events = [];
  EventTypeModel eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/bridal1.png";
  eventModel.eventType = "Bridal";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  eventModel.imgAssetPath = "assets/grooms.png";
  eventModel.eventType = "Grooms";
  events.add(eventModel);

  eventModel = new EventTypeModel();


  //1
  eventModel.imgAssetPath = "assets/mehandi.png";
  eventModel.eventType = "Mehandi";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  //1
  eventModel.imgAssetPath = "assets/flowers1.png";
  eventModel.eventType = "Flower";
  events.add(eventModel);

  eventModel = new EventTypeModel();

  return events;
}

List<EventsModel> getEvents(){

  List<EventsModel> events = <EventsModel>[];
  EventsModel eventsModel = new EventsModel();

  //1
  eventsModel.imgeAssetPath = "assets/bridal1.png";
  eventsModel.date = "may 12, 2023";
  eventsModel.desc = "Makeup Meet in Galaxy Field";
  eventsModel.address = "Greenfields, Sec 42, Faridabad";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //2
  eventsModel.imgeAssetPath = "assets/flowers1.png";
  eventsModel.date = "may 12, 2023";
  eventsModel.desc = "Art & Meet in Our Wedding";
      eventsModel.address = "Galaxyfields, Sec 22, Faridabad";
  events.add(eventsModel);

  eventsModel = new EventsModel();

  //3
  eventsModel.imgeAssetPath = "assets/music_event.png";
  eventsModel.date = "may 12, 2023";
  eventsModel.address = "Galaxyfields, Sec 22, Faridabad";
      eventsModel.desc = "Youth Music in Gwalior";
  events.add(eventsModel);

  eventsModel = new EventsModel();

eventsModel.imgeAssetPath = "assets/pandit.png";
  eventsModel.date = "may 12, 2023";
  eventsModel.address = "Galaxyfields, Sec 22, Faridabad";
      eventsModel.desc = "Pandit Ji Astrology Service";
  events.add(eventsModel);

  eventsModel = new EventsModel();


  return events;


}
