import 'package:flutter_app/SPControllers/SPLogControl/sp_report_bean_entity.dart';
import 'package:flutter_app/SPControllers/SPLogControl/sp_login_bean_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "SpReportBeanEntity") {
      return SPReportBeanEntity.fromJson(json) as T;
    } else if (T.toString() == "SPLoginBeanEntity") {
      return SPLoginBeanEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}