import 'api_manager.dart';

Future<dynamic> getEventCall({
  String calendarId = '',
  String eventId = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'GetEvent',
      apiDomain: 'www.googleapis.com',
      apiEndpoint: 'calendar/v3/calendars/calendarId/events/eventId',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'calendarId': calendarId,
        'eventId': eventId,
      },
      returnResponse: true,
    );

Future<dynamic> getJsonPlaceHolderCall({
  int userId,
  int id,
  String title = '',
  String body = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'getJsonPlaceHolder',
      apiDomain: 'jsonplaceholder.typicode.com',
      apiEndpoint: 'posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'userId': userId,
        'id': id,
        'title': title,
        'body': body,
      },
      returnResponse: true,
    );

Future<dynamic> worldTimeAPICall({
  String area = '',
  String location = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'WorldTimeAPI',
      apiDomain: 'worldtimeapi.org',
      apiEndpoint: 'api/timezone/area/location',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'area': area,
        'location': location,
      },
      returnResponse: true,
    );
