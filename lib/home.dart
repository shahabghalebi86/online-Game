import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffF7B84B);
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Watch Live',
          style: themeData.textTheme.headlineMedium!
              .copyWith(fontSize: 24, fontWeight: FontWeight.w500),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 8),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18),
                    borderSide: const BorderSide(
                      width: 1,
                      color: Colors.white,
                    )),
                hintText: 'Search live channels or streamers',
                prefixIcon: const Icon(CupertinoIcons.search),
                filled: true,
                fillColor: Colors.transparent,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LivePictur(
                    name: 'Game-alex',
                    view: 550,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'maxresdefault',
                    view: 825,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'maxresdefault',
                    view: 50,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'Game-alex',
                    view: 300,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 18,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(children: [
                AppIcon(
                  themeData: themeData,
                  iconImg: 'overwatch-2',
                  nameApp: 'overwatch',
                  backgroundColor: Colors.amber.shade800,
                ),
                const SizedBox(
                  width: 16,
                ),
                AppIcon(
                  themeData: themeData,
                  iconImg: 'dota-2-logo-A8CAC9B4C9-seeklogo 1',
                  nameApp: 'DOTA 2',
                  backgroundColor: Colors.red.shade800,
                ),
                const SizedBox(
                  width: 16,
                ),
                AppIcon(
                  themeData: themeData,
                  iconImg: 'LoL_icon 1',
                  nameApp: 'League of legends',
                  backgroundColor: Colors.tealAccent.shade700,
                ),
                const SizedBox(
                  width: 16,
                ),
                AppIcon(
                  themeData: themeData,
                  iconImg: 'Apex-Legends-Emblem 1',
                  nameApp: 'Apex Legends',
                  backgroundColor: Colors.deepPurple.shade800,
                ),
                const SizedBox(
                  width: 16,
                ),
                AppIcon(
                  themeData: themeData,
                  iconImg: 'valorant-logo-3D72D9117F-seeklogo 1',
                  nameApp: 'valorant',
                  backgroundColor: Colors.indigo.shade800,
                ),
              ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(32, 0, 32, 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Streamers Live',
                  style: themeData.textTheme.titleLarge,
                ),
                Text(
                  'View all',
                  style: themeData.textTheme.bodySmall!
                      .copyWith(color: primaryColor),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(32, 16, 32, 16),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  LivePictur(
                    name: 'maxresdefault',
                    view: 825,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'Game-alex',
                    view: 300,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'maxresdefault',
                    view: 50,
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  LivePictur(
                    name: 'Game-alex',
                    view: 300,
                  ),
                ],
              ),
            ),
          ),
          // )
        ]),
      ),
    );
  }
}

class AppIcon extends StatelessWidget {
  final String nameApp;
  final String iconImg;
  final Color backgroundColor;
  const AppIcon({
    super.key,
    required this.themeData,
    required this.nameApp,
    required this.iconImg,
    required this.backgroundColor,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            color: backgroundColor.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(
              'assets/img/icons/$iconImg.png',
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 60,
          child: Text(
            nameApp,
            style: themeData.textTheme.bodyLarge!.copyWith(fontSize: 10),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}

class LivePictur extends StatelessWidget {
  final String name;
  final num view;
  const LivePictur({
    super.key,
    required this.name,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          'assets/img/live/$name.png',
          width: 270,
          height: 150,
        ),
      ),
      Positioned(
        left: 10,
        top: 10,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              alignment: Alignment.center,
              width: 45,
              height: 28,
              decoration: BoxDecoration(
                  color: const Color(0xffEB5757),
                  borderRadius: BorderRadius.circular(10)),
              child: const Text('LIVE'),
            ),
            const SizedBox(
              width: 18,
            ),
            Container(
              alignment: Alignment.center,
              width: 62,
              height: 28,
              decoration: BoxDecoration(
                  color: Colors.grey.shade800.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    CupertinoIcons.eye,
                    size: 16,
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text('$view'),
                ],
              ),
            )
          ],
        ),
      ),
    ]);
  }
}
