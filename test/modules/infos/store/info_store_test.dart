import 'package:capture_text/core/messages/messages.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:capture_text/modules/infos/store/info_store.dart';

void main() {
  group('InfoStore Test', () {
    late InfoStore infoStore;

    setUp(() {
      infoStore = InfoStore();
    });

    test('setCurrentText updates currentText', () {
      var text = 'Test Text';
      infoStore.setCurrentText(text);
      expect(infoStore.currentText, equals(text));
    });

    test('validateText returns error message for null or empty string', () {
      expect(infoStore.validateText(null), equals(AppMessages.required));
      expect(infoStore.validateText(''), equals(AppMessages.required));
    });

    test('validateText returns null for non-empty string', () {
      expect(infoStore.validateText('Test Text'), isNull);
    });
  });
}
