import 'package:dart_jsonwebtoken/dart_jsonwebtoken.dart';
import 'package:shelf/shelf.dart';

import '../../Services/Supabase/supabaseEnv.dart';

deleteContactResponse(Request req, String id) async {
  final jwt = JWT.decode(req.headers["authorization"]!);

  final supabase = SupabaseEnv().supabase;
  final listUser = await supabase
      .from("users")
      .select("id")
      .eq("id_auth", jwt.payload["sub"]);

  await supabase
      .from("contact")
      .delete()
      .eq("id_user", listUser[0]["id"])
      .eq("id", int.parse(id));

  return Response.ok(jwt.payload["sub"]);
}
