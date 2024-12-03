import '../../dados/modelos/cat_fact.dart';
import '../../dados/repositorios/repositorio_cat_fact.dart';
import '../../dominio/respositorio/repositorio.dart';

class RecuperarFatoDeGato {
  final Repositorio _repositorio;
  RecuperarFatoDeGato() : _repositorio = ReporsitorioDeFatoDeGato();

  Future<CatFact> call() async => await _repositorio.get();
}
