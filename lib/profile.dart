import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:onlinegame/home.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffF7B84B);
    const secondaryTextColor = Color(0xff828282);
    final ThemeData themeData = Theme.of(context);

    Widget getCurrentScreen() {
      if (selectedIndex == 0) {
        return GamesScreen(themeData: themeData, primaryColor: primaryColor);
      } else if (selectedIndex == 1) {
        return PostsScreen(
          secondaryTextColor: secondaryTextColor,
          themeData: themeData,
        );
      } else if (selectedIndex == 2) {
        return AboutScreen(themeData: themeData, primaryColor: primaryColor);
      } else {
        return const SizedBox.shrink();
      }
    }

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Container(
                  height: 380,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(255, 45, 35, 17),
                      Color.fromARGB(255, 11, 9, 4),
                      Color.fromARGB(255, 0, 0, 0)
                    ], begin: Alignment.bottomCenter, end: Alignment.topCenter),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: SingleChildScrollView(
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Homepage()),
                                  );
                                },
                                icon: const Icon(
                                  CupertinoIcons.back,
                                ),
                              ),
                              const Icon(Icons.settings)
                            ],
                          ),
                          Image.asset(
                            'assets/img/profile/Avatar.png',
                            height: 110,
                            width: 110,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                width: 72,
                                decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 64, 64, 64),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      height: 8,
                                      width: 8,
                                      decoration: BoxDecoration(
                                          color: const Color(0xff6FCF97),
                                          borderRadius:
                                              BorderRadius.circular(4),
                                          border: Border.all(
                                              color: Colors.black, width: 1)),
                                    ),
                                    const SizedBox(
                                      width: 4,
                                    ),
                                    Text(
                                      'Online',
                                      style: themeData.textTheme.titleSmall,
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                width: 24,
                              ),
                              Container(
                                height: 30,
                                width: 72,
                                decoration: BoxDecoration(
                                    color: primaryColor,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'LV.78',
                                      style: themeData.textTheme.titleMedium!
                                          .copyWith(
                                              color: Colors.black,
                                              fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            'SHAZTHEANIMATOR'.toUpperCase(),
                            style: themeData.textTheme.titleLarge!.copyWith(
                              fontSize: 28,
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    '38',
                                    style: themeData.textTheme.titleLarge!
                                        .copyWith(
                                            fontSize: 22, color: primaryColor),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Streams',
                                    style: themeData.textTheme.bodySmall!
                                        .copyWith(
                                            color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 48,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '87.8K',
                                    style: themeData.textTheme.titleLarge!
                                        .copyWith(
                                            fontSize: 22, color: primaryColor),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'Followers',
                                    style: themeData.textTheme.bodySmall!
                                        .copyWith(
                                            color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                width: 48,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '526',
                                    style: themeData.textTheme.titleLarge!
                                        .copyWith(
                                            fontSize: 22, color: primaryColor),
                                  ),
                                  const SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    'following',
                                    style: themeData.textTheme.bodySmall!
                                        .copyWith(
                                            color: Colors.white, fontSize: 12),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 350,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 30, 30, 28),
                        Colors.black
                      ], begin: Alignment.topLeft, end: Alignment.bottomLeft),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32))),
                  child: Column(
                    children: [
                      TabSelector(
                        primaryColor: primaryColor,
                        themeData: themeData,
                        selectedIndex: selectedIndex,
                        onTabChanged: (index) {
                          setState(() {
                            selectedIndex = index;
                          });
                        },
                      ),
                      Expanded(
                        child: getCurrentScreen(),
                      )
                    ],
                  )),
            ),
          ],
        ),
      ),
    );
  }
}

class PostsScreen extends StatefulWidget {
  const PostsScreen({
    super.key,
    required this.secondaryTextColor,
    required this.themeData,
  });

  final Color secondaryTextColor;
  final ThemeData themeData;

  @override
  State<PostsScreen> createState() => PostsScreenState();
}

class PostsScreenState extends State<PostsScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 32,
        ),
        Icon(
          Icons.image_outlined,
          color: widget.secondaryTextColor,
          size: 150,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          'No Post',
          style: widget.themeData.textTheme.headlineMedium!
              .copyWith(color: widget.secondaryTextColor),
        )
      ],
    );
  }
}

class AboutScreen extends StatefulWidget {
  const AboutScreen({
    super.key,
    required this.themeData,
    required this.primaryColor,
  });

  final ThemeData themeData;
  final Color primaryColor;

  @override
  State<AboutScreen> createState() => AboutScreenState();
}

class AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: widget.themeData.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Text(
              'I am a passionat gamer and content creator. Love playing FPS amd MOBA games with me team. Streaming almost every night',
              style: widget.themeData.textTheme.bodyLarge,
            ),
            const SizedBox(height: 16),
            Text(
              'Profile Info',
              style: widget.themeData.textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: widget.primaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'Tehran, Iran',
                  style: widget.themeData.textTheme.titleMedium!
                      .copyWith(fontWeight: FontWeight.w500),
                )
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.email,
                  color: widget.primaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('sha@example.com',
                    style: widget.themeData.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(
                  Icons.calendar_today,
                  color: widget.primaryColor,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text('Joined: Jan 2023',
                    style: widget.themeData.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.w500))
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              'Skills & Insterests',
              style: widget.themeData.textTheme.headlineMedium,
            ),
            const SizedBox(
              height: 16,
            ),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                Chip(
                  label: const Text("FPS"),
                  backgroundColor: widget.primaryColor,
                  labelStyle: widget.themeData.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                  elevation: 0,
                ),
                Chip(
                  label: const Text("MOBA"),
                  backgroundColor: widget.primaryColor,
                  labelStyle: widget.themeData.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                ),
                Chip(
                  label: const Text("Streaming"),
                  backgroundColor: widget.primaryColor,
                  labelStyle: widget.themeData.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                ),
                Chip(
                  label: const Text("Animation"),
                  backgroundColor: widget.primaryColor,
                  labelStyle: widget.themeData.textTheme.titleMedium!
                      .copyWith(color: Colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class GamesScreen extends StatefulWidget {
  const GamesScreen({
    super.key,
    required this.primaryColor,
    required this.themeData,
  });

  final Color primaryColor;
  final ThemeData themeData;

  @override
  State<GamesScreen> createState() => GamesScreenState();
}

class GamesScreenState extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 16,
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 24),
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                Posterimg(
                  nameImg: 'league of legends',
                ),
                SizedBox(width: 16),
                Posterimg(
                  nameImg: 'fortnite',
                ),
                SizedBox(width: 16),
                Posterimg(
                  nameImg: 'fortnite2',
                ),
                SizedBox(width: 16),
                Posterimg(
                  nameImg: 'league of legends',
                ),
                SizedBox(width: 16),
                Posterimg(
                  nameImg: 'fortnite',
                ),
                SizedBox(width: 16),
                Posterimg(
                  nameImg: 'fortnite2',
                ),
              ]),
            ),
          ),
          Row(
            children: [
              Text(
                'Achievement',
                style: widget.themeData.textTheme.titleMedium,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '(2)',
                style: widget.themeData.textTheme.titleMedium!
                    .copyWith(color: widget.primaryColor),
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Image.asset(
                'assets/img/icons/Group.png',
                height: 36,
                width: 36,
              ),
              const SizedBox(
                width: 18,
              ),
              Image.asset(
                'assets/img/icons/Group2.png',
                height: 36,
                width: 36,
              )
            ],
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Text(
                'Team',
                style: widget.themeData.textTheme.titleMedium,
              ),
              const SizedBox(
                width: 4,
              ),
              Text(
                '(6)',
                style: widget.themeData.textTheme.titleMedium!
                    .copyWith(color: widget.primaryColor),
              )
            ],
          ),
          const SizedBox(height: 16),
          const SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Profileimg(
                    backgroundColor: Color(0xffF2D064),
                    nameimg: 'img1',
                  ),
                  SizedBox(width: 16),
                  Profileimg(
                    backgroundColor: Color(0xff28ACA6),
                    nameimg: 'img2',
                  ),
                  SizedBox(width: 16),
                  Profileimg(
                    backgroundColor: Color(0xffE8AEF4),
                    nameimg: 'img3',
                  ),
                  SizedBox(width: 16),
                  Profileimg(
                    backgroundColor: Color(0xff70A3EE),
                    nameimg: 'img4',
                  ),
                  SizedBox(width: 16),
                  Profileimg(
                    backgroundColor: Color(0xffF1D164),
                    nameimg: 'img5',
                  ),
                  SizedBox(width: 16),
                ]),
          ),
        ],
      ),
    );
  }
}

class Profileimg extends StatelessWidget {
  final String nameimg;
  final Color backgroundColor;

  const Profileimg({
    super.key,
    required this.nameimg,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 60,
        width: 60,
        alignment: Alignment.bottomCenter,
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Image.asset(
            'assets/img/profile/$nameimg.png',
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ));
  }
}

class Posterimg extends StatelessWidget {
  final String nameImg;
  const Posterimg({
    super.key,
    required this.nameImg,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Image.asset(
        'assets/img/poster/$nameImg.png',
        height: 110,
        width: 90,
      ),
    );
  }
}

class TabSelector extends StatelessWidget {
  final Color primaryColor;
  final ThemeData themeData;
  final int selectedIndex;
  final Function(int) onTabChanged;

  const TabSelector({
    super.key,
    required this.primaryColor,
    required this.themeData,
    required this.selectedIndex,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    const secondaryTextColor = Color(0xff828282);
    List<String> tabs = ["Games", "Post", "About"];
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(tabs.length, (index) {
          final bool isSelected = selectedIndex == index;
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6),
            child: OutlinedButton(
              onPressed: () => onTabChanged(index),
              style: OutlinedButton.styleFrom(
                foregroundColor: isSelected ? primaryColor : secondaryTextColor,
                side: isSelected
                    ? BorderSide(color: primaryColor, width: 2)
                    : const BorderSide(color: Colors.transparent),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                fixedSize: const Size(100, 40),
              ),
              child: Text(
                tabs[index],
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: isSelected ? primaryColor : secondaryTextColor,
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
