import 'package:music_player/data/song_api.dart';
import 'package:music_player/service_locator.dart';

class HomeScreenManager {
  final songApi = getIt<SongApi>();
}
