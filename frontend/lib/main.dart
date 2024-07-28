import 'package:frontend/our_team/our_team.dart';
import 'package:frontend/product/product.dart';
import 'package:frontend/products/products.dart';
import 'package:landing_page/lib.dart';

import 'about/about.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appName,
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 255, 223, 58),
        scaffoldBackgroundColor: Color.fromARGB(255, 30, 30, 30),
        cardColor: Color.fromARGB(255, 30, 30, 30),
        fontFamily: manrope,
        useMaterial3: true,
      ),
      home: const LandingPageST(),
    );
  }
}

/// LandingPageST

class LandingPageST extends StatefulWidget {
  const LandingPageST({super.key});

  @override
  State<LandingPageST> createState() => _LandingPageSTState();
}

class _LandingPageSTState extends State<LandingPageST> {
  final GlobalKey<ScaffoldState> _lpkey = GlobalKey();
  List<TabItem> getChildren({required Size size}) {
    Widget products = Products(key: GlobalKey());
    Widget about = About(key: GlobalKey(), productsTab: products);
    List<TabItem> tabItems = [
      TabItem(
        title:
            const Text("Home", style: TextStyle(fontWeight: FontWeight.bold)),
        tab: Home(key: GlobalKey(), aboutTab: about),
        selectedLeading: const Icon(Icons.home_work_rounded),
        onTap: () {},
      ),
      TabItem(
        tab: about,
        title:
            const Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
        selectedLeading: const Icon(Icons.my_library_books_rounded),
        children: [
          TabItem(
              title: const Text("Landing Page"),
              onTap: () {},
              selectedLeading: const Icon(Icons.check_box_rounded, size: 15)),
          TabItem(
              title: const Text("Quick Dev"),
              onTap: () {},
              selectedLeading: const Icon(Icons.check_box_rounded, size: 15)),
          TabItem(
              title: const Text("Responsiveness"),
              onTap: () {},
              selectedLeading: const Icon(Icons.check_box_rounded, size: 15)),
        ],
        onTap: () {},
      ),
      TabItem(
        selectedLeading: const Icon(Icons.star_rounded),
        title: const Text("Our Team",
            style: TextStyle(fontWeight: FontWeight.bold)),
        onTap: () {},
        tab: OurTeam(key: GlobalKey()),
      ),
      TabItem(
        title: const Text("Products",
            style: TextStyle(fontWeight: FontWeight.bold)),
        tab: products,
        selectedLeading: const Icon(Icons.workspaces_rounded),
        children: [
          TabItem(
            title: const Text("LandingPage"),
            onTap: () {},
            selectedLeading: const Icon(Icons.circle, size: 10),
            children: [
              TabItem(
                  title: const Text("Header"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Footer"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Drawer"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("SectionLabel"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("TabItemUI"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
            ],
          ),
          TabItem(
            title: const Text("FloatingTabBar"),
            onTap: () {},
            selectedLeading: const Icon(Icons.circle, size: 10),
            children: [
              TabItem(
                  title: const Text("Airoll"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Niftile"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Nautics"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Floater"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("OpsShell"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("Vitrify"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
              TabItem(
                  title: const Text("TopTabBar"),
                  onTap: () {},
                  selectedLeading:
                      const Icon(Icons.check_box_rounded, size: 15)),
            ],
          ),
        ],
        onTap: () {},
      ),
    ];
    return tabItems;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return LandingPage(
      background: const BoxDecoration(
        image: DecorationImage(
          image: NetworkImage(backgroundUrl),
          fit: BoxFit.cover,
        ),
      ),
      scaffoldKey: _lpkey,
      showLeadingIconOnHeader: true,
      children: getChildren(size: size),
      title: "LandingPage",
    );
  }
}

List<TabItem> menuItems = [
  TabItem(
      title: const Text('Option 1'),
      onTap: () {},
      badgeCount: 2,
      color: Colors.amber),
  TabItem(title: const Text('Option 2'), onTap: () {}),
  TabItem(
    title: const Text('Option 3'),
    onTap: () {},
    children: subItems,
    trailing: const Icon(Icons.nightlight_round),
  ),
];

List<TabItem> subItems = [
  TabItem(title: const Text('Nested Option 1'), onTap: () {}),
  TabItem(
      title: const Text('Nested Option 2'),
      onTap: () => debugPrint("Nested Option 2")),
];

class Home extends StatefulWidget {
  final Widget aboutTab;
  const Home({super.key, required this.aboutTab});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String platform = PlatformCheck().platformCheck(context: context);
    Widget homeData = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.height * 0.11
              : size.height * 0.1,
          width: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.width
              : size.width * 0.4,
          child: RichText(
            textAlign: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? TextAlign.center
                : TextAlign.start,
            text: TextSpan(
              text: "Welcome to ",
              style: TextStyle(
                color: darkBlack,
                fontSize: platform == Platforms.android ||
                        platform == Platforms.iOS ||
                        platform == Platforms.webMobile
                    ? 26
                    : 36,
                fontWeight: FontWeight.w800,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "LandingPage",
                  style: TextStyle(
                    color: primary,
                    fontSize: platform == Platforms.android ||
                            platform == Platforms.iOS ||
                            platform == Platforms.webMobile
                        ? 26
                        : 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                TextSpan(
                  text: "\nFlutter Package",
                  style: TextStyle(
                    color: darkBlack,
                    fontSize: platform == Platforms.android ||
                            platform == Platforms.iOS ||
                            platform == Platforms.webMobile
                        ? 26
                        : 36,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.height * 0.2
              : size.height * 0.1,
          width: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.width
              : size.width * 0.4,
          padding: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? const EdgeInsets.all(8.0)
              : EdgeInsets.zero,
          child: Text(
            "landing_page serves at its best for creating landing screens and welcome interface for any of your Flutter project.",
            textAlign: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? TextAlign.center
                : TextAlign.start,
            style: TextStyle(
              color: platform == Platforms.android ||
                      platform == Platforms.iOS ||
                      platform == Platforms.webMobile
                  ? darkGrey
                  : primary,
              fontWeight: FontWeight.w400,
              fontSize: platform == Platforms.android ||
                      platform == Platforms.iOS ||
                      platform == Platforms.webMobile
                  ? 14
                  : 18,
            ),
          ),
        ),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          height: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.height * 0.11
              : size.height * 0.1,
          width: platform == Platforms.android ||
                  platform == Platforms.iOS ||
                  platform == Platforms.webMobile
              ? size.width
              : size.width * 0.4,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () =>
                    setState(() => launchInBrowser(landingPageUrl)),
                child: Text(
                  "Get Started",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: platform == Platforms.android ||
                            platform == Platforms.iOS ||
                            platform == Platforms.webMobile
                        ? 14
                        : 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              const Flexible(child: SizedBox(width: 32)),
              ElevatedButton.icon(
                onPressed: () => scrollToSection(
                    (widget.aboutTab.key as GlobalKey).currentContext!),
                icon: Icon(Icons.keyboard_double_arrow_down_rounded,
                    color: Theme.of(context).primaryColor),
                label: Text(
                  "Know More",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: platform == Platforms.android ||
                            platform == Platforms.iOS ||
                            platform == Platforms.webMobile
                        ? 14
                        : 16,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );

    return platform == Platforms.android ||
            platform == Platforms.iOS ||
            platform == Platforms.webMobile
        ? SizedBox(
            height: size.height,
            width: size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  height: size.height * 0.5,
                  width: size.width,
                  child: Vitrify(
                      radius: BorderRadius.circular(10),
                      opacity: 0.1,
                      child: homeData),
                ),
              ],
            ),
          )
        : SizedBox(
            height: size.height,
            width: size.width,
            child: OpsShell(
              height: size.height * 0.5,
              alignment: Alignment.bottomRight,
              child: Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: homeData,
              ),
            ),
          );
  }
}
