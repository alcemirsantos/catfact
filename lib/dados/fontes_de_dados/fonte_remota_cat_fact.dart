import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

import 'fonte_remota.dart';
import '../modelos/cat_fact.dart';
import '../modelos/cat_facts.dart';

class FonteRemotaDeCatFact implements FonteRemota<CatFact> {
  final String urlBase = 'catfact.ninja';

  const FonteRemotaDeCatFact();

  @override
  Future<CatFact> get() async {
    var url = Uri.https(urlBase, '/fact');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return CatFact.fromJson(convert.jsonDecode(response.body));
    } else {
      String fato = 'um fato falso sobre gato';
      return Future.value(
        CatFact(
          fact: fato,
          length: fato.length,
        ),
      );
    }
  }

  @override
  Future<List<CatFact>> getLista() async {
    var url = Uri.https(urlBase, '/facts');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      return CatFacts.fromJson(convert.jsonDecode(response.body)).data!;
    } else {
      String fato = 'um fato falso sobre gato';
      return Future.value(
        [CatFact(fact: fato, length: fato.length)],
      );
    }
  }
}
