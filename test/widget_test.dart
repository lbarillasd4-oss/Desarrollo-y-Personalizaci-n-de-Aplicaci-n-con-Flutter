import 'package:flutter_test/flutter_test.dart';
import 'package:mi_tienda_flutter/main.dart';

void main() {
  testWidgets('Mi Campus muestra su contenido',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MiCampusApp());

    expect(find.text('Mi Campus'), findsOneWidget);
    expect(find.text('¡Bienvenido a Mi Campus!'), findsOneWidget);
    expect(find.text('Conocer mi campus'), findsOneWidget);
  });
}
