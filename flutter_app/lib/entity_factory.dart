import 'package:flutter_app/SPControllers/SPLogControl/s_p_login_bean_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "SPLoginBeanEntity") {
      return SPLoginBeanEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}