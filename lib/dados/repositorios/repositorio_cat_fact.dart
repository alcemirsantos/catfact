import '../../dados/fontes_de_dados/fonte_remota_cat_fact.dart';
import '../../dados/modelos/cat_fact.dart';
import '../../dominio/respositorio/repositorio.dart';

class ReporsitorioDeFatoDeGato extends Repositorio<CatFact> {
  ReporsitorioDeFatoDeGato({super.fonteRemota = const FonteRemotaDeCatFact()});
}
