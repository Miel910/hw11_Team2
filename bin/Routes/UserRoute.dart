import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../Middelwares/User/CheckTokenMiddelware.dart';
import '../Response/User/addContactResponse.dart';
import '../Response/User/deleteContactResponse.dart';

class UserRoute {
  Handler get handler {
    final router = Router()
      ..post('/add_contact', addContactResponse)
      ..delete("/delete_contact/<id>", deleteContactResponse);
    final pipline =
        Pipeline().addMiddleware(checkTokenMiddleware()).addHandler(router);

    return pipline;
  }
}
