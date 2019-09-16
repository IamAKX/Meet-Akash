class SkillModel {
  final String name, icon;
  final int expertiseLevel;

  const SkillModel({this.name, this.icon, this.expertiseLevel});
}

List<SkillModel> languageList = [
  SkillModel(name: 'Java', icon: 'assets/image/java.png', expertiseLevel: 5),
  SkillModel(name: 'C#', icon: 'assets/image/csharp.png', expertiseLevel: 4),
  SkillModel(name: 'Dart', icon: 'assets/image/dart.png', expertiseLevel: 4),
  SkillModel(
      name: 'JavaScript',
      icon: 'assets/image/javascript.png',
      expertiseLevel: 4),
  SkillModel(
      name: 'Python', icon: 'assets/image/python.png', expertiseLevel: 4),
  SkillModel(name: 'HTML', icon: 'assets/image/html.png', expertiseLevel: 4),
  SkillModel(name: 'XML', icon: 'assets/image/xml.png', expertiseLevel: 3),
  SkillModel(name: 'CSS', icon: 'assets/image/css.png', expertiseLevel: 3),
  SkillModel(name: 'PHP', icon: 'assets/image/php.png', expertiseLevel: 3),
  SkillModel(name: 'C', icon: 'assets/image/c.png', expertiseLevel: 3),
  SkillModel(name: 'C++', icon: 'assets/image/cpp.png', expertiseLevel: 3),
  SkillModel(
      name: 'Kotlin', icon: 'assets/image/kotlin.png', expertiseLevel: 2),
  SkillModel(name: 'Swift', icon: 'assets/image/swift.png', expertiseLevel: 1),
  SkillModel(
      name: 'Objective C',
      icon: 'assets/image/objectiveC.png',
      expertiseLevel: 1),
];

const List<SkillModel> technologyList = [
  SkillModel(
      name: 'Android', icon: 'assets/image/android.png', expertiseLevel: 5),
  SkillModel(
      name: 'Flutter', icon: 'assets/image/flutter.png', expertiseLevel: 4),
  SkillModel(
      name: 'MEAN Stack', icon: 'assets/image/mean.png', expertiseLevel: 3),
  SkillModel(
      name: 'Angular JS', icon: 'assets/image/angular.png', expertiseLevel: 3),
  SkillModel(
      name: 'Ionic 2', icon: 'assets/image/ionic.png', expertiseLevel: 3),
  SkillModel(
      name: 'Ionic 3', icon: 'assets/image/ionic.png', expertiseLevel: 2),
  SkillModel(name: 'iOS', icon: 'assets/image/ios.png', expertiseLevel: 2),
  SkillModel(
      name: 'React JS', icon: 'assets/image/reactjs.png', expertiseLevel: 2),
];

const List<SkillModel> dbList = [
  SkillModel(
      name: 'Mongo DB', icon: 'assets/image/mongo.png', expertiseLevel: 4),
  SkillModel(
      name: 'Oracle', icon: 'assets/image/oracledb.png', expertiseLevel: 4),
  SkillModel(name: 'Derby', icon: 'assets/image/derby.png', expertiseLevel: 4),
  SkillModel(name: 'MySQL', icon: 'assets/image/mysql.png', expertiseLevel: 3),
];

const List<SkillModel> scriptingList = [
  SkillModel(
      name: 'Expect Script',
      icon: 'assets/image/expectscript.png',
      expertiseLevel: 5),
  SkillModel(
      name: 'Shell Script',
      icon: 'assets/image/shellscript.png',
      expertiseLevel: 4),
  SkillModel(
      name: 'Python', icon: 'assets/image/python.png', expertiseLevel: 3),
];

const List<SkillModel> otherList = [
  SkillModel(name: 'IOT', icon: 'assets/image/iot.png', expertiseLevel: 4),
  SkillModel(
      name: 'Analytical',
      icon: 'assets/image/analytics.png',
      expertiseLevel: 4),
  SkillModel(
      name: 'Debugging', icon: 'assets/image/debug.png', expertiseLevel: 4),
];
