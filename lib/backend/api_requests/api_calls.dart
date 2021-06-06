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
