import 'package:bloc/bloc.dart';

enum LANGUAGES { FA, EN, FR }

class LanguageBloc extends Bloc<LANGUAGES, String> {
  @override
  String get initialState => 'en';

  @override
  Stream<String> mapEventToState(LANGUAGES event) async* {
    switch (event) {
      case LANGUAGES.FA:
        yield 'fa';
        break;
      case LANGUAGES.FR:
        yield 'fr';
        break;
      case LANGUAGES.EN:
        yield 'en';
        break;
    }
  }
}
