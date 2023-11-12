enum AppRoutes {
  firstpage(name: "firstpage", path: "/firstpage"),
  secondpage(name: "secondpage", path: "/secondpage"),
  thirdpage(name: "thirdpage", path: "/thirdpage");

  const AppRoutes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  @override
  String toString() => name;
}
