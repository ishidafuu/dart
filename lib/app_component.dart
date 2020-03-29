import 'package:angular/angular.dart';
import 'package:angular_router/angular_router.dart';

import 'src/routes.dart';
import 'src/hero_service.dart';
import 'src/highlight_directive.dart';
import 'src/auto_id_directive.dart';

@Component(
  selector: 'my-app',
  templateUrl: 'app_component.html',
  styleUrls: ['app_component.css'],
  directives: [routerDirectives, HighlightDirective, autoIdDirective],
  providers: [ClassProvider(HeroService)],
  exports: [RoutePaths, Routes],
)
class AppComponent {
  String color;
  final title = 'Tour of Heroes';
}
