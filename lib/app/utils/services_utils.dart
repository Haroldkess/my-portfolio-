class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
    final String iconFlutter;
      final String iconFirebase;
        final String iconApi;

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool,
      required this.iconFlutter,
      required this.iconFirebase,
      required this.iconApi,});
      
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Android App Development',
    icon: 'assets/icons/android.svg',
    description:
        "Building and Implementation of Native Application on Android devices.",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/flut.svg' ,
    iconApi: "assets/icons/api.svg",
    iconFirebase: 'assets/icons/firebase.svg',
  ),
  ServicesUtils(
    name: 'iOS App Development',
    icon: 'assets/icons/apple.svg',
    description:
        "Building and Implementation of Application on the ios mobile os.",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/flut.svg' ,
    iconApi: "assets/icons/api.svg",
    iconFirebase: 'assets/icons/firebase.svg',
  ),
  // ServicesUtils(
  //   name: 'UI/UX Designing',
  //   icon: 'assets/icons/graphic.svg',
  //   description:
  //       "I'm creating elegant designs suited to your needs following core design theory. ",
  //   tool: ['Adobe XD', 'Figma', 'Photoshop'],
  // ),
  ServicesUtils(
    name: 'Web App Development',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/flut.svg' ,
    iconApi: "assets/icons/api.svg",
    iconFirebase: 'assets/icons/firebase.svg',
  ),
];
