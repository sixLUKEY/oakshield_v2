import 'package:flutter/cupertino.dart';
import 'package:frontend/main.dart';
import 'package:frontend/product/product.dart';
import 'package:landing_page/lib.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  List<ProductData> pData = [
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box_fill, size: 40, color: primary),
      title: "LandingPage",
      description:
          "Built on top of floating_tabbar, landing_page serves at its best for creating landing screens and welcome interface for any of your project may it be landing UI for your next big project or your portfolio application we got you covered,using the phenominal TabItem model class for maintaining the data and using the rich widget library provided with floating_tabbar making it best experience possible for you create landing pages.",
    ),
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Header",
      description:
          "The Header widget is a custom Flutter widget designed to create a flexible and customizable header for an app.",
    ),
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Footer",
      description:
          "The Footer widget is another custom Flutter widget designed to create a footer for an app.",
    ),
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Drawer",
      description:
          "The Drawer widget is a Flutter widget designed to create a drawer for small screens. It provides a collapsible navigation drawer that can be used on small screens, typically in mobile or tablet layouts.",
    ),
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "SectionLabel",
      description:
          "The SectionLable widget is a stateless Flutter widget designed to display a section label or title with various customizable properties such as font size, text color, and alignment.",
    ),
    ProductData(
      url: landingPageUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "TabItemUI",
      description:
          "The TabItemUI widget in Flutter is designed to represent a user interface element for a single tab item within a larger navigation or tab bar.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box_fill, size: 40, color: primary),
      title: "FloatingTabBar",
      description:
          "floating_tabbar solves and eases the problem of complex navigation user interfaces by providing a responsive solution for Android, iOS, Linux, macOS, Windows, and web platforms.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Airoll",
      description:
          "The Airoll widget is a customized Flutter widget that extends PopupMenuButton and provides additional features for handling hover events, nested pop-up menus, and customization of appearance.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Niftile",
      description:
          "The LandingPage widget is a Flutter widget designed to create landing screens and welcome interfaces. It leverages the floating_tabbar package and utilizes the TabItem model class to manage data.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Nautics",
      description:
          "The Nautics widget is a Flutter widget designed to create a sidebar navigation with the ability to expand and collapse. It supports both icon-based and tile-based navigation, allowing for a flexible and customizable user interface.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Floater",
      description:
          "The Floater class is a simple Flutter widget that creates a floating container with customizable properties.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "OpsShell",
      description:
          "The OpsShell class is a Flutter widget designed to help create responsive screens. It provides a way to wrap the main content of the screen and show a responsive design on large screens while maintaining a normal appearance on small screens.",
    ),
    ProductData(
      url: Uri.parse("https://pub.dev/packages/floating_tabbar#vitrify"),
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "Vitrify",
      description:
          "The Vitrify widget is designed to create a glass card look for its child. It utilizes the ClipRRect widget, BackdropFilter, and Container with a specified color and opacity.",
    ),
    ProductData(
      url: floatingTabBarUrl,
      icon: const Icon(CupertinoIcons.cube_box, size: 40, color: primary),
      title: "TopTabBar",
      description:
          "The TopTabBar widget is designed to create a top TabBar with built-in space for nesting contingency. It allows you to customize the appearance of the TabBar and TabBarView.",
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
                      "Products",
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
                      "Widgets in Packages landing_page and floating_tabbar",
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
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: pData.length,
              itemBuilder: (BuildContext context, int index) {
                int dataIndex = index % pData.length;
                return Product(
                  url: pData[dataIndex].url,
                  icon: pData[dataIndex].icon,
                  title: pData[dataIndex].title,
                  description: pData[dataIndex].description,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
