import 'package:bengo_app/main.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Splash screen shows brand content', (WidgetTester tester) async {
    await tester.pumpWidget(const BengoApp());

    expect(find.text('BENGO'), findsOneWidget);
    expect(find.text('منصتك الذكية للتعلّم والتطور'), findsOneWidget);
  });
}
