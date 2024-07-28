import 'package:landing_page/lib.dart';

class Product extends StatefulWidget {
  final String title;
  final String description;
  final Uri url;
  final Widget icon;
  const Product(
      {super.key,
      required this.title,
      required this.description,
      required this.url,
      required this.icon});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    String platform = PlatformCheck().platformCheck(context: context);

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      height: platform == Platforms.android ||
              platform == Platforms.iOS ||
              platform == Platforms.webMobile
          ? size.height * 0.4
          : size.height * 0.3,
      width: platform == Platforms.android ||
              platform == Platforms.iOS ||
              platform == Platforms.webMobile
          ? size.width * 0.8
          : size.width * 0.2,
      child: Floater(
        radius: BorderRadius.circular(30),
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Theme.of(context).primaryColor.withOpacity(0.3),
              ),
              child: widget.icon,
            ),
            const SizedBox(height: 10),
            Text(
              widget.title,
              style: TextStyle(
                fontSize: platform == Platforms.android ||
                        platform == Platforms.iOS ||
                        platform == Platforms.webMobile
                    ? 20
                    : 30,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(widget.description, maxLines: 4),
            const Spacer(),
            TextButton(
              onPressed: () => setState(() => launchInBrowser(widget.url)),
              child: Text(
                "Read More",
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: platform == Platforms.android ||
                          platform == Platforms.iOS ||
                          platform == Platforms.webMobile
                      ? 15
                      : 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class ProductData {
  String title;
  String description;
  Uri url;
  Widget icon;
  ProductData({
    required this.title,
    required this.description,
    required this.url,
    required this.icon,
  });
}

final Uri floatingTabBarUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#floatingtabbar');
final Uri topTabBarUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#toptabbar');
final Uri floaterUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#floater');
final Uri nauticsUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#nautics');
final Uri opsShellUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#opsshell');
final Uri airollUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#airoll');
final Uri notificationBadgeUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#notificationbadge');
final Uri vitrifyUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#vitrify');
final Uri niftileUrl =
    Uri.parse('https://pub.dev/packages/floating_tabbar#niftile');
final Uri lintsUrl = Uri.parse('https://pub.dev/packages/flutter_lints');
final Uri dartDocUrl = Uri.parse('https://pub.dev/packages/dartdoc');
const String backgroundUrl =
    "https://media3.giphy.com/media/10cXff6xep02Na/giphy.gif?cid=ecf05e47gcaitolrju2yrqlljt7fcvs5qgsgn2at04ue5kdu&ep=v1_gifs_search&rid=giphy.gif&ct=g";
