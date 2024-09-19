import 'package:ai.labull.org.cn/logic/screens_logic/tasks_screen_logic/image_variation_screen_logic/image_variation_logic.dart';
export 'package:ai.labull.org.cn/logic/screens_logic/tasks_screen_logic/image_variation_screen_logic/image_variation_logic.dart';
import 'package:get_it/get_it.dart';

GetIt getIt = GetIt.instance;

void setupLogicLocator() {
  registerImageVariationLogic(getIt);
}
