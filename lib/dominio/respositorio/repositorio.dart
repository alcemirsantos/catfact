import '../../dados/fontes_de_dados/fonte_remota.dart';

abstract class Repositorio<T> {
  FonteRemota fonteRemota;

  Repositorio({required this.fonteRemota});

  Future<T> get() async {
    return await fonteRemota.get();
  }

//   Future<List<T>> getLista() async {
//     return await fonteRemota.getLista();
//   }
}
