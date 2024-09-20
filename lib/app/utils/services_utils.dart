class ServicesUtils {
  final String name;
  final String icon;
  final List<String> tool;
  final String description;
    final String iconFlutter;
     

  ServicesUtils(
      {required this.name,
      required this.icon,
      required this.description,
      required this.tool,
      required this.iconFlutter,
});
      
}

List<ServicesUtils> servicesUtils = [
  ServicesUtils(
    name: 'Flutter',
    icon: 'assets/icons/android.svg',
    description:
        "Building and Implementation of Native Application on Android devices.",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/flut.svg' ,
 
  ),
  ServicesUtils(
    name: 'Dart',
    icon: 'assets/icons/apple.svg',
    description:
        "Building and Implementation of Application on the ios mobile os.",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/dart.svg' ,

  ),

  ServicesUtils(
    name: 'Firebase',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/fire.svg' ,
 
  ),
   ServicesUtils(
    name: 'Java',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/java.svg' ,

  ),
     ServicesUtils(
    name: 'Nodejs',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/node.svg' ,

  ),
    ServicesUtils(
    name: 'Git',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/git.svg' ,

  ),
     ServicesUtils(
    name: 'SqFlite',
    icon: 'assets/icons/website.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/sqf.svg' ,

  ),
       ServicesUtils(
    name: 'ServerPod',
    icon: 'assets/icons/server.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/server.svg' ,
  
  ),
     ServicesUtils(
    name: 'Html',
    icon: 'assets/icons/html.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/html.svg' ,
  
  ),
     ServicesUtils(
    name: 'CSS',
    icon: 'assets/icons/css.svg',
    description:
        "Building and Implementation of PWA on the web..",
    tool: ['Flutter','Api integration','cloud services'],
    iconFlutter: 'assets/icons/css.svg' ,
  
  ),
];
