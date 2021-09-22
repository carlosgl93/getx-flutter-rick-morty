import 'package:get/get.dart';
import 'package:getxrickmorty/services/rickandmorty_service.dart';
import '../core/models/Character.dart';

class CharactersController extends GetxController {
  // List<Character> _characters;
  var _characterObs;

  final RickAndMortyService rickAndMortyService =
      Get.find<RickAndMortyService>();
      
      @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    rickAndMortyService.getCharacters();
  }
// hook justo despues de cargar todo
  @override
  void onReady() {
    super.onReady();
    rickAndMortyService.getCharacters();
  }
}
