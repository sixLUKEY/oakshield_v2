import 'package:frontend/product/product.dart';
import 'package:landing_page/lib.dart';

class OurTeam extends StatefulWidget {
  const OurTeam({super.key});

  @override
  State<OurTeam> createState() => _OurTeamState();
}

class _OurTeamState extends State<OurTeam> {
  List<ProductData> otData = [
    ProductData(
      title: "floating_tabbar",
      description:
          "The floating_tabbar package for Flutter allows you to use the responsive design for all platforms made from the Material Design System.",
      url: Uri.parse("https://pub.dev/packages/floating_tabbar"),
      icon: const Icon(Icons.star_rounded, size: 40, color: primary),
    ),
    ProductData(
      title: "flutter_lints",
      description:
          "This package contains a recommended set of lints for Flutter apps, packages, and plugins to encourage good coding practices for Flutter.",
      url: lintsUrl,
      icon: const Icon(Icons.star_rounded, size: 40, color: primary),
    ),
    ProductData(
      title: "dartdoc",
      description:
          "Use dart doc to generate HTML documentation for your Dart package. Run dart doc . from the root directory of a package, to use the package.",
      url: dartDocUrl,
      icon: const Icon(Icons.star_rounded, size: 40, color: primary),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String platform = PlatformCheck().platformCheck(context: context);
    return SizedBox(
      height: size.height,
      width: size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? size.width
                : null,
            margin: const EdgeInsets.symmetric(horizontal: 10),
            child: Vitrify(
              opacity: 0.1,
              radius: BorderRadius.circular(10),
              child: Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Column(
                  children: [
                    Text(
                      "Our Team",
                      style: TextStyle(
                        fontSize: platform == Platforms.android ||
                                platform == Platforms.iOS ||
                                platform == Platforms.webMobile
                            ? 20
                            : 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Packages used in making of LandingPage",
                      style: TextStyle(
                        fontSize: platform == Platforms.android ||
                                platform == Platforms.iOS ||
                                platform == Platforms.webMobile
                            ? 15
                            : 20,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? size.height * 0.6
                : size.height * 0.5,
            width: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? size.width
                : size.width * 0.64,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: otData.length,
              itemBuilder: (BuildContext context, int index) {
                int dataIndex = index % otData.length;
                return Product(
                  url: otData[dataIndex].url,
                  icon: otData[dataIndex].icon,
                  title: otData[dataIndex].title,
                  description: otData[dataIndex].description,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
