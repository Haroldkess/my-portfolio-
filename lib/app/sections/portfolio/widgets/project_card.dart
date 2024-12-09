import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:harolddevportfolio/app/utils/project_utils.dart';
import 'package:harolddevportfolio/core/color/colors.dart';
import 'package:harolddevportfolio/core/configs/configs.dart';
import 'package:harolddevportfolio/core/res/responsive.dart';
import 'package:harolddevportfolio/core/util/constants.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatefulWidget {
  final ProjectUtils project;

  const ProjectCard({Key? key, required this.project}) : super(key: key);
  @override
  ProjectCardState createState() => ProjectCardState();
}

class ProjectCardState extends State<ProjectCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    // double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    var theme = Theme.of(context);
    return InkWell(
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Color.fromARGB(0, 151, 137, 137),
      onTap: () => openURL(widget.project.links),
      onHover: (isHovering) {
        if (isHovering) {
          setState(() => isHover = true);
        } else {
          setState(() => isHover = false);
        }
      },
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1.w),
            width: Responsive.isDesktop(context) ? 30.w : 70.w,
            height: 36.h * 1.2,
            decoration: BoxDecoration(
              gradient: isHover ? pinkpurple : grayBack,
              borderRadius: BorderRadius.circular(10),
              boxShadow: isHover ? [primaryColorShadow] : [blackColorShadow],
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Padding(
                  padding: isHover ? const EdgeInsets.all(20) : EdgeInsets.zero,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/dev1.svg",
                        height: height * 0.05,
                      ),
                      SizedBox(height: height * 0.02),
                      Text(
                        widget.project.titles,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: isHover ? whiteColor : theme.textColor,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: height * 0.01),
                      Text(
                        widget.project.description,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isHover ? whiteColor : theme.textColor,
                        ),
                      ),
                      SizedBox(height: height * 0.01),
                    ],
                  ),
                ),
                AnimatedOpacity(
                  duration: const Duration(milliseconds: 400),
                  opacity: isHover ? 0.1 : 1.0,
                  child: Container(
                    width: Responsive.isDesktop(context) ? 30.w : 70.w,
                    height: 36.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: AssetImage(widget.project.banners),
                          fit: BoxFit.cover),
                    ),
                    // child: Image.asset(
                    //   widget.project.banners,
                    //   fit: BoxFit.cover,
                    // ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 1.w),
            width: Responsive.isDesktop(context) ? 30.w : 70.w,
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: Text(
              widget.project.description,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: isHover ? whiteColor : theme.textColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
