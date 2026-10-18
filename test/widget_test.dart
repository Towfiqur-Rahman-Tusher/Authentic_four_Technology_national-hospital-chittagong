import 'package:flutter_test/flutter_test.dart';

import 'package:national_hospital_ui/main.dart';

void main() {
  testWidgets('National Hospital app smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const NationalHospitalApp());

    // Verify that the app title / content loads.
    expect(find.text('NATIONAL HOSPITAL'), findsOneWidget);
  });
}
