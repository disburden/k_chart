class KLinePeriodModel {

  String name;
  String period;
  int preiodIndex;

  KLinePeriodModel({this.name, this.period, this.preiodIndex});

  static List<KLinePeriodModel> topModels() {
    // var model1 = KLinePeriodModel(name: "分时",period: "1min");
    // var model2 = KLinePeriodModel(name: "15分",period: "15min");
    // var model3 = KLinePeriodModel(name: "1小时",period: "60min");
    // var model4 = KLinePeriodModel(name: "4小时",period: "4hour");
    // var model5 = KLinePeriodModel(name: "日线",period: "1day");
    // var model6 = KLinePeriodModel(name: "更多",period: "-1");

    //preiodIndex索引是对应人人汇后台服务器用的
    var model1 = KLinePeriodModel(name: "M1", period: "1min", preiodIndex: 1);
    var model2 = KLinePeriodModel(name: "M5", period: "5min", preiodIndex: 2);
    var model3 = KLinePeriodModel(name: "M15", period: "15min", preiodIndex: 3);
    var model4 = KLinePeriodModel(name: "M30", period: "30min", preiodIndex: 4);
    var model5 = KLinePeriodModel(name: "H1", period: "60min", preiodIndex: 5);
    var model6 = KLinePeriodModel(name: "H4", period: "4hour", preiodIndex: 6);
    var model7 = KLinePeriodModel(name: "D1", period: "1day", preiodIndex: 7);
    var model8 = KLinePeriodModel(name: "W1", period: "1week", preiodIndex: 8);

    return [model1, model2, model3, model4, model5, model6, model7, model8];
  }

  static KLinePeriodModel obtainPeriodModel(int preiodIndex){
    for (KLinePeriodModel pm in KLinePeriodModel.topModels()){
      if (pm.preiodIndex==preiodIndex){
        return pm;
      }
    }
    return null;
  }
}