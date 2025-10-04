import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GameDetsilScreen extends StatelessWidget {
  const GameDetsilScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffF7B84B);
    final ThemeData themeData = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/img/backgound/background.png',
                  width: double.infinity,
                  height: 420,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: 50,
                  right: 16,
                  child: Container(
                    alignment: Alignment.center,
                    width: 32,
                    height: 32,
                    decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(16)),
                    child: Icon(
                      CupertinoIcons.heart_solid,
                      color: Colors.grey.shade600,
                      size: 24,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 180,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          // Colors.black,
                          Colors.black.withOpacity(0.9),
                          Colors.black.withOpacity(0.7),
                          Colors.black.withOpacity(0.5),
                          Colors.transparent,
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 280,
                  right: 16,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Fortnite'.toUpperCase(),
                            style: themeData.textTheme.headlineMedium,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                              fixedSize: const Size(108, 45),
                              backgroundColor: primaryColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              showSnakBar(context, 'Share button is clicked');
                            },
                            child: Text(
                              "Following",
                              style: themeData.textTheme.bodyLarge!.copyWith(
                                  color: Colors.black,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                      // const SizedBox(
                      //   height: 8,
                      // ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(16, 12, 16, 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '7.2M',
                              style: themeData.textTheme.bodyMedium!.copyWith(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text('followers',
                                style: themeData.textTheme.bodySmall),
                            const SizedBox(
                              width: 18,
                            ),
                            const Icon(
                              CupertinoIcons.eye_solid,
                              size: 16,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '534.8k',
                              style: themeData.textTheme.bodyMedium!.copyWith(
                                  color: primaryColor,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            Text('viewers',
                                style: themeData.textTheme.bodySmall)
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: 28,
                        height: 28,
                        decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(16)),
                        child: Icon(
                          CupertinoIcons.person_solid,
                          color: Colors.grey.shade600,
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 400,
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color.fromARGB(255, 30, 30, 28), Colors.black],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomLeft),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                child: Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(28, 16, 24, 24),
                      child: Text(
                        'Live Channels',
                        style: themeData.textTheme.titleLarge,
                      ),
                    ),
                    Positioned(
                      top: 32,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(24),
                        child: SingleChildScrollView(
                          physics: const BouncingScrollPhysics(),
                          child: Column(
                            children: [
                              Column(
                                children: [
                                  LiveChannels(
                                    themeData: themeData,
                                    imgLive: 'maxresdefault 1',
                                    imgProfile: '01',
                                    nameLive: 'Game Pro Lejend',
                                    nameprofile: 'Rishab',
                                    numberView: 78.4,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  LiveChannels(
                                    themeData: themeData,
                                    imgLive: 'maxresdefault 2',
                                    imgProfile: '02',
                                    nameLive: 'Game Tournomet',
                                    nameprofile: 'Ravi',
                                    numberView: 23.5,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  LiveChannels(
                                    themeData: themeData,
                                    imgLive: 'maxresdefault 3',
                                    imgProfile: '03',
                                    nameLive: 'World War Game',
                                    nameprofile: 'Agnee',
                                    numberView: 20.5,
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  LiveChannels(
                                    themeData: themeData,
                                    imgLive: 'maxresdefault 1',
                                    imgProfile: '01',
                                    nameLive: 'Call Of Duty',
                                    nameprofile: 'Rishab',
                                    numberView: 15.1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LiveChannels extends StatelessWidget {
  final String imgLive;
  final String nameLive;
  final double numberView;
  final String imgProfile;
  final String nameprofile;

  const LiveChannels({
    super.key,
    required this.themeData,
    required this.imgLive,
    required this.nameLive,
    required this.numberView,
    required this.imgProfile,
    required this.nameprofile,
  });

  final ThemeData themeData;

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xffF7B84B);
    return Row(
      children: [
        Stack(children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(24),
            child: Image.asset(
              'assets/img/live/$imgLive.png',
              width: 170,
              height: 110,
            ),
          ),
          Positioned(
            left: 10,
            top: 15,
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
                  child: Text('LIVE'.toUpperCase()),
                ),
              ],
            ),
          ),
        ]),
        const SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                nameLive,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                style: themeData.textTheme.titleLarge,
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Icon(
                    CupertinoIcons.eye_solid,
                    size: 18,
                    color: themeData.textTheme.bodySmall!.color,
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    '$numberView',
                    style:
                        themeData.textTheme.bodySmall!.copyWith(fontSize: 16),
                  ),
                  Text(
                    'K',
                    style:
                        themeData.textTheme.bodySmall!.copyWith(fontSize: 16),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Viewers',
                    style:
                        themeData.textTheme.bodySmall!.copyWith(fontSize: 16),
                  )
                ],
              ),
              const SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Padding(
                          padding: const EdgeInsets.all(0.8),
                          child: Image.asset(
                            'assets/img/profile/$imgProfile.png',
                            fit: BoxFit.cover,
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 1,
                        right: 1,
                        child: Container(
                          height: 10,
                          width: 10,
                          decoration: BoxDecoration(
                              color: Colors.red,
                              border: Border.all(color: Colors.black, width: 2),
                              borderRadius: BorderRadius.circular(5)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    nameprofile,
                    style: themeData.textTheme.titleMedium,
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}

void showSnakBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(
      message,
    ),
    behavior: SnackBarBehavior.floating,
  ));
}
