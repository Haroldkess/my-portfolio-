part of '../main_section.dart';

class _Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(
        dragDevices: {
          PointerDeviceKind.touch,
          PointerDeviceKind.mouse,
          PointerDeviceKind.stylus,
          PointerDeviceKind.trackpad,
        },
      ),
      child: ScrollablePositionedList.builder(
        padding: EdgeInsets.zero,
        itemCount: BodyUtils.views.length,
        itemBuilder: (context, index) => BodyUtils.views[index],
        itemScrollController: scrollProvider.itemScrollController,
      ),
    );
  }
}
