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

Future<dynamic> worldTimeAPICall({
  String area = '',
  String location = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'WorldTimeAPI',
      apiDomain: 'worldtimeapi.org',
      apiEndpoint: 'api/timezone/$area/$location',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> getJsonPlaceHolderCall() => ApiManager.instance.makeApiCall(
      callName: 'getJsonPlaceHolder',
      apiDomain: 'jsonplaceholder.typicode.com',
      apiEndpoint: 'posts',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> timeZoneCall() => ApiManager.instance.makeApiCall(
      callName: 'timeZone',
      apiDomain: 'worldtimeapi.org',
      apiEndpoint: 'api/timezone/Europe',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnResponse: true,
    );

Future<dynamic> calendarListListCall({
  String yourApiKey = '',
  String yourAccessToken = '',
}) =>
    ApiManager.instance.makeApiCall(
      callName: 'CalendarListList',
      apiDomain: 'www.googleapis.com',
      apiEndpoint: 'calendar/v3/users/me/calendarList?key=$yourApiKey',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer [YOUR_ACCESS_TOKEN]',
        'Accept': 'application/json',
      },
      params: {
        'YOUR_ACCESS_TOKEN': yourAccessToken,
      },
      returnResponse: true,
    );

Future<dynamic> getCalendarEventsCall() => ApiManager.instance.makeApiCall(
      callName: 'GetCalendarEvents',
      apiDomain: 'www.googleapis.com',
      apiEndpoint: 'calendar/v3/calendars/jeremie.bernard01@gmail.com/events',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer ya29.a0AfH6SMDE3VQUgynnCr9gnhbYda9ZLZGoWEF7JeafyQ5niorvGVleJGiHTvoWNi4HvauElwel4unHPbvGATqvlR55rynb7NdRLMk-RWBVNQkv0wpONnejjQm9Wn4Jvt7Bsk9OTzwRLQvxHRbXs0O4HBJfgJ2P',
      },
      params: {},
      returnResponse: true,
    );
