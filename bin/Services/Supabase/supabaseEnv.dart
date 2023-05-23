import 'package:supabase/supabase.dart';

class SupabaseEnv {
  final _url = "https://kzkyweckjxtafmyplsno.supabase.co";
  final _key =
      "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Imt6a3l3ZWNranh0YWZteXBsc25vIiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTY4NDIzMDU5MywiZXhwIjoxOTk5ODA2NTkzfQ.yZvGo7WyhNrL5BHqvkGxaoM4KI97LIgM_bc5UkpZ5Eo";
  final _JWT =
      "M9GQusUAeykAj5nJfLq6usgrXt9skAnT9VQOCvJv5GoDE0mtHKe8/pwQcpfQn+uXRtwq7k1o40Z7cADnzhnbYQ==";

  get getJWT {
    return _JWT;
  }

  SupabaseClient get supabase {
    final supabase = SupabaseClient(_url, _key);

    return supabase;
  }
}
