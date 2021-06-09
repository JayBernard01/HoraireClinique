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
            'Bearer ya29.a0AfH6SMBfMV6qtORmxHp5_q-tsVacT-njB-SoIU8_wLu4z0EiqmX-z9cYonXq-Vxn1v24NNl0-btPB2lAwcM1u4P9cnWjBVLbv3nDLiFwav5tyb9LiLmGMdguZAR8cZln2J1tLBU6HqgoPgrKy0Tdii9H0KmCbVcRVDboxkCULuG8FdrB5dH9e_VmjSyifnIDPLzNGaeIp5Ho4Y90xiimsC0g2-gWBMNUcN-VxLrq9ozHbIELXv2wos',
      },
      params: {},
      returnResponse: true,
    );
