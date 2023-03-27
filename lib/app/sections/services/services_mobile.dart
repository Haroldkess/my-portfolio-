part of 'services.dart';

class ServiceMobile extends StatefulWidget {
  const ServiceMobile({Key? key}) : super(key: key);

  @override
  State<ServiceMobile> createState() => _ServiceMobileState();
}

class _ServiceMobileState extends State<ServiceMobile> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        const CustomSectionHeading(text: '\nWhat I can do?'),
        Space.y(3.w)!,
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: CustomSectionSubHeading(text: servicesSubHeading),
        ),
        Space.y(5.w)!,
        CarouselSlider.builder(
          itemCount: servicesUtils.length,
          itemBuilder: (BuildContext context, int itemIndex, int i) => Padding(
            padding: EdgeInsets.symmetric(vertical: 0.5.w),
            child: _ServiceCard(service: servicesUtils[i]),
          ),
          options: CarouselOptions(
            viewportFraction: 0.6,
            height: 300,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 200),
            enlargeCenterPage: true,
            autoPlayCurve: Curves.fastOutSlowIn,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enableInfiniteScroll: false,
          ),
        )
      ],
    );
  }
}
