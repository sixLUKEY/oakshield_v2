import 'package:landing_page/lib.dart';

class About extends StatefulWidget {
  final Widget productsTab;
  const About({super.key, required this.productsTab});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    String platform = PlatformCheck().platformCheck(context: context);
    Size size = MediaQuery.of(context).size;
    Widget aboutData = Column(
      children: [
        const SizedBox(height: 20),
        const Text("About Us.",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
        const SizedBox(height: 10),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            "We are LandingPage, A Flutter package built on top of another Flutter package FloatingTabBar. Landing Page is the combination of following widgets...",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: platform == Platforms.android ||
                        platform == Platforms.iOS ||
                        platform == Platforms.webMobile
                    ? 15
                    : 20),
          ),
        ),
        SizedBox(
            height: platform == Platforms.android ||
                    platform == Platforms.iOS ||
                    platform == Platforms.webMobile
                ? 10
                : 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("LandingPage",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Header",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Footer",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Drawer",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("SectionLabel",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("TabItemUI",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
              ],
            ),
            const SizedBox(width: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text("FloatingTabBar",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Airoll",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Niftile",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Nautics",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Floater",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("OpsShell",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("Vitrify",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  onPressed: () => scrollToSection(
                      (widget.productsTab.key as GlobalKey).currentContext!),
                  child: Text("TopTabBar",
                      style: TextStyle(color: Theme.of(context).primaryColor)),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(height: 10),
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
                  height: size.height * 0.74,
                  width: size.width,
                  child: Vitrify(
                      radius: BorderRadius.circular(10),
                      opacity: 0.1,
                      child: aboutData),
                ),
              ],
            ),
          )
        : SizedBox(
            height: size.height,
            width: size.width,
            child: OpsShell(
              height: size.height * 0.65,
              alignment: Alignment.bottomLeft,
              child: aboutData,
            ),
          );
  }
}
