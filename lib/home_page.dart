part of 'lib.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final ScrollController scrollController = ScrollController();
  
  final List<Map<String, String>> myOffices = [
    {
      'label': 'FIVERR',
      'sub': 'fiverr.com',
      'name': 'rizkyeky',
      'icon': 'assets/fiverricon.svg',
      'url': 'https://www.fiverr.com/rizkyeky',
    },
    {
      'label': 'PROJECTS',
      'sub': 'projects.co.id',
      'name': 'rizkyeky',
      'icon': 'assets/projectsicon.svg',
      'url': 'https://projects.co.id/public/browse_users/view/87101e/rizky-eky',
    },
    {
      'label': 'FREELANCER',
      'sub': 'freelancer.co.id',
      'name': 'rizeky',
      'icon': 'assets/freelancericon.svg',
      'url': 'https://www.freelancer.co.id/u/rizeky'
    }
  ];

  final List<Map> svgAnim = [
    {
      'type': 'move',
      'img': 'assets/Ellipse1.svg',
      'tween': Tween<double>(begin: 10, end: 50),
      'duration': const Duration(seconds: 4),
      'top': 0,
      'bottom': null,
      'left': 0,
      'right': null,
    },
    {
      'type': 'rotate',
      'img': 'assets/Polygon1.svg',
      'tween': Tween<double>(begin: 0, end: 1),
      'duration': const Duration(seconds: 5),
      'top': null,
      'bottom': null,
      'left': null,
      'right': null,
    }
  ];

  final List<Map> myPortfolios = [
    {
      'label': 'Instagram',
      'img': 'assets/instagram.jpeg',
      'logo': 'assets/instagram.svg',
      'content1': '@apps.riz.eky',
      'content2': 'Rizky Eky Apps',
      'url': 'https://www.instagram.com/apps.riz.eky/',
      'color': const Color(0xFFBA1B1B)
    },
    {
      'label': 'Github',
      'img': 'assets/github.jpeg',
      'logo': 'assets/github.svg',
      'content1': '@rizkyeky',
      'content2': 'Rizky Eky',
      'url': 'https://github.com/rizkyeky',
      'color': const Color(0xFF666666)
    },
  ];

  final Map myProgrammingField = {
    'Main Field': [
      {
        'label': 'Mobile Development',
        'level': 'Advanced',
        'desc': 'Flutter, Android, iOS, Java, Kotlin, Swift'
      }
    ],
    'Other Fields': [
      {
        'label': 'AI Engineering',
        'level': 'Intermadiate',
        'desc': 'Machine Learning, Deep Learning, Computer Vision, Python, PyTorch, Tensorflow'
      },
      {
        'label': 'Robotic and IoT Engineering',
        'level': 'Intermadiate',
        'desc': 'Arduino, Raspberry Pi, C/C++, Python, Linux'
      },
      {
        'label': 'Web Develompent (Frontend)',
        'level': 'Basic',
        'desc': 'ReactJS, Bootstrap, HTML, CSS, JavaScript'
      },
      {
        'label': 'Graphic Design',
        'level': 'Basic',
        'desc': 'UI/UX, Figma, Photoshop, Illustrator, Blender, Vector, 3D Graphic'
      }
    ],
  };

  final Map myProgrammingLanguages = {
      'Advanced': [
        {
          'label': 'Dart',
          'logo': '',
        },
        {
          'label': 'Python',
          'logo': '',
        },
      ],
      'Intermadiate': [
        {
          'label': 'Java',
        },
        {
          'label': 'JavaScript',
          'logo': '',
        },
      ],
      'Basic': [
        {
          'label': 'Kotlin',
          'logo': '',
        },
        {
          'label': 'C/C++',
          'logo': '',
        },
      ],
      'Still Learning': [
        {
          'label': 'Swift',
          'logo': '',
        },
        {
          'label': 'Go',
          'logo': '',
        },
        {
          'label': 'Rust',
          'logo': '',
        }
      ]
    };

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    const double headerHeight = 60;
    return Scaffold(
      backgroundColor: const Color(0xFFF4FEF9),
      body: CustomScrollView(
        controller: scrollController,
        slivers: [
          const SliverPersistentHeader(
            delegate: HeaderEkyWeb(
              headerHeight: headerHeight
            ),
            pinned: true,
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: screenSize.height-headerHeight,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color(0xFFF4FEF9),
                  ),
                  child: Stack(
                    children: [
                      MirrorAnimation<double>(
                        tween: Tween<double>(begin: 10, end: 50),
                        duration: const Duration(seconds: 4),
                        builder: (context, child, value) {
                          return Positioned(
                            top: value,
                            left: value,
                            child: child ?? const SizedBox(),
                          );
                        },
                        child: SvgPicture.asset('assets/Ellipse1.svg',
                          width: screenSize.width*0.1+100,
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: 20,
                        child: MirrorAnimation<double>(
                          tween: Tween<double>(begin: 0, end: 1),
                          duration: const Duration(seconds: 5),
                          builder: (context, child, value) {
                            return Transform.rotate(
                              angle: value * math.pi,
                              child: SvgPicture.asset('assets/Polygon1.svg',
                                width: screenSize.width*0.1+100,
                              ),
                            );
                          }
                        ),
                      ),
                      Positioned(
                        top: 20,
                        right: screenSize.width / 3,
                        child: MirrorAnimation<double>(
                          tween: Tween<double>(begin: 0, end: 2),
                          duration: const Duration(seconds: 6),
                          builder: (context, child, value) {
                            return Transform.rotate(
                              angle: value/2 * math.pi,
                              child: SvgPicture.asset('assets/Polygon2.svg',
                                width: screenSize.width*0.1+100,
                              ),
                            );
                          }
                        ),
                      ),
                      MirrorAnimation<double>(
                        tween: Tween<double>(begin: 0, end: 50),
                        duration: const Duration(seconds: 5),
                        builder: (context, child, value) {
                          return Positioned(
                            bottom: 50+value,
                            right: 20,
                            child: child ?? const SizedBox(),
                          );
                        },
                        child: SvgPicture.asset('assets/Polygon3.svg',
                          width: screenSize.width*0.1+100,
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        left: 20,
                        child: MirrorAnimation<double>(
                          tween: Tween<double>(begin: 0, end: 1),
                          duration: const Duration(seconds: 6),
                          builder: (context, child, value) {
                            return Transform.rotate(
                              angle: value/3 * math.pi,
                              child: SvgPicture.asset('assets/Triangle1.svg',
                                width: screenSize.width*0.1+100,
                              ),
                            );
                          }
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.topCenter.add(const Alignment(0,0)),
                              child: Image.asset(
                                'assets/profile.png',
                              )
                            ),
                            Align(
                              alignment: Alignment.bottomCenter.add(const Alignment(0,-0.35)),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                padding: const EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 24,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color:const Color(0xFFCDE8DE).withOpacity(0.4)
                                ),
                                child: BackdropFilter(
                                  filter: ImageFilter.blur(
                                    sigmaX: 10, sigmaY: 10,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      const Text.rich(
                                        TextSpan(children: [
                                          TextSpan(
                                            text: 'Hi, There !\n',
                                            style: TextStyle(
                                              fontSize: 16,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "I'm Rizky Eky\n",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          TextSpan(
                                            text: "Mobile App Developer\n",
                                            style: TextStyle(
                                              fontSize: 24,
                                            ),
                                          ),
                                        ]),
                                        style: TextStyle(
                                          height: 1.5,
                                          letterSpacing: 2,
                                          fontFamily: 'FiraCode',
                                        ),
                                      ),
                                      Wrap(
                                        spacing: 16,
                                        runSpacing: 16,
                                        children: [
                                          ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                              primary: const Color(0xFF006B57),
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 32,
                                                vertical: 18,
                                              ),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(32),
                                              ),
                                              textStyle: Theme.of(context).textTheme.button?.copyWith(
                                                fontFamily: 'FiraCode',
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                            onPressed: () {
                                              launchUrl(Uri.parse('https://drive.google.com/file/d/1wNz67t7SzNPisT7kqqtbq4Am60omGfzl/view?usp=sharing'));
                                            },
                                            child: const Text('VIEW CV'),
                                          ),
                                          OutlinedButton(
                                            style: OutlinedButton.styleFrom(
                                              primary: const Color(0xFF006B57),
                                              backgroundColor: Colors.white,
                                              padding: const EdgeInsets.symmetric(
                                                horizontal: 32,
                                                vertical: 18,
                                              ),
                                              side: BorderSide.none,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(32),
                                              ),
                                              textStyle: const TextStyle(
                                                fontFamily: 'FiraCode',
                                                fontWeight: FontWeight.bold,
                                              )
                                            ),
                                            onPressed: () {},
                                            child: const Text('CONTACT ME'),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: screenSize.height+headerHeight
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/wallpaper.jpg'),
                      fit: BoxFit.cover
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text('My Offices',
                          style: TextStyle(
                            letterSpacing: 2,
                            fontFamily: 'SFProDisplay',
                            fontWeight: FontWeight.bold,
                            fontSize: 52,
                            color: Colors.white,
                          )
                        ),
                        const SizedBox(height: 24,),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: List.generate(myOffices.length, (index) {
                            bool isHover = false;
                            return StatefulBuilder(
                              builder: (context, setStateAnimated) => MouseRegion(
                                cursor: SystemMouseCursors.click,
                                onEnter: (event) => setStateAnimated(() => isHover = true),
                                onExit: (event) => setStateAnimated(() => isHover = false),
                                child: GestureDetector(
                                  onLongPressStart: (event) => setStateAnimated(() => isHover = true),
                                  onLongPressEnd: (event) => setStateAnimated(() => isHover = false),
                                  child: AnimatedContainer(
                                    constraints: const BoxConstraints(
                                      maxWidth: 300,
                                    ),
                                    duration: const Duration(milliseconds: 100),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      color: isHover ? const Color(0xFF252525).withOpacity(0.45) : const Color(0xFF252525).withOpacity(0.75),
                                    ),
                                    clipBehavior: Clip.antiAlias,
                                    child: BackdropFilter(
                                      filter: ImageFilter.blur(
                                        sigmaX: 10,
                                        sigmaY: 10,
                                      ),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [Colors.red, '', Colors.orange, '', Colors.green].map<Widget>((e) {
                                              if (e == '') {
                                                return const SizedBox(width: 4);
                                              } else {
                                                return Container(
                                                  width: 10,
                                                  height: 10,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: e as Color,
                                                  ),
                                                );
                                              }
                                            }).toList(),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                              vertical: 30
                                            ),
                                            child: Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                  width: 100,
                                                  height: 100,
                                                  child: Material(
                                                    color: Colors.white,
                                                    shape: RoundedRectangleBorder(
                                                      borderRadius: BorderRadius.circular(16)
                                                    ),
                                                    clipBehavior: Clip.antiAlias,
                                                    child: SvgPicture.asset(myOffices[index]['icon'] ?? 'null',
                                                      width: 100,
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(height: 24,),
                                                Text(myOffices[index]['sub'] ?? 'null',
                                                  style: TextStyle(
                                                    fontFamily: 'SFProDisplay',
                                                    fontSize: 16,
                                                    color: Colors.white.withOpacity(0.75),
                                                  ),
                                                ),
                                                Text(myOffices[index]['label'] ?? 'null',
                                                  style: const TextStyle(
                                                    fontFamily: 'SFProDisplay',
                                                    fontSize: 24,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold
                                                  ),
                                                ),
                                                const SizedBox(height: 8,),
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.end,
                                                  children: [
                                                    Text(myOffices[index]['name'] ?? 'null',
                                                      style: TextStyle(
                                                        fontFamily: 'SFProDisplay',
                                                        fontSize: 20,
                                                        color: Colors.white.withOpacity(0.75),
                                                      ),
                                                    ),
                                                    OutlinedButton(
                                                      onPressed: () => launchUrl(Uri.parse(myOffices[index]['url'] ?? '')),
                                                      style: OutlinedButton.styleFrom(
                                                        textStyle: const TextStyle(
                                                          fontFamily: 'SFProDisplay',
                                                        ),
                                                        primary: Colors.blue,
                                                        backgroundColor: Colors.white,
                                                        side: BorderSide.none,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(16)
                                                        ),
                                                      ),
                                                      child: const Text('See Detail'),
                                                    )
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            );
                          }),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: screenSize.height+headerHeight
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('My Portfolio',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                            color: Color(0xFF006B57)
                          )
                        ),
                        const SizedBox(height: 24,),
                        Wrap(
                          spacing: 16,
                          runSpacing: 16,
                          children: [
                            for (final portfolio in myPortfolios) Card(
                              surfaceTintColor: portfolio['color'],
                              clipBehavior: Clip.antiAlias,
                              child: InkWell(
                                onTap: () {},
                                splashColor: (portfolio['color'] as Color).withOpacity(0.4),
                                highlightColor: (portfolio['color'] as Color).withOpacity(0.1),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Stack(
                                      alignment: AlignmentDirectional.bottomStart,
                                      children: [
                                        Ink.image(image: AssetImage(portfolio['img'] as String),
                                          height: 180,
                                          fit: BoxFit.cover,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(16),
                                          child: SvgPicture.asset(portfolio['logo'] as String,
                                            width: 50,
                                            height: 50,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                           Text(portfolio['label'] as String, style: const TextStyle(
                                            color: Colors.black54,
                                          ),),
                                          const SizedBox(height: 16,),
                                          Text(portfolio['content1'] as String),
                                          const SizedBox(height: 4,),
                                          Text(portfolio['content2'] as String, style: const TextStyle(
                                            fontSize: 12,
                                            color: Colors.black54
                                          ),),
                                          const SizedBox(height: 16,),
                                          Text('SEE DETAIL', style: TextStyle(
                                            color: portfolio['color'] as Color,
                                          ),)
                                        ],
                                      )
                                    )
                                  ],
                                ),
                              )
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: screenSize.height+headerHeight
                ),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        GradientText('My Skill',
                          gradientDirection: GradientDirection.ltr,
                          style: const TextStyle(
                            fontFamily: 'FiraCode',
                            fontWeight: FontWeight.bold,
                            fontSize: 48,
                          ),
                          colors: const [
                            Color.fromARGB(255, 8, 157, 237),
                            Color.fromARGB(255, 193, 108, 230)
                          ],
                        ),
                        const SizedBox(height: 24,),
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Programming Fields',
                                    style: TextStyle(
                                      fontFamily: 'FiraCode',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 16,),
                                  for (final field in myProgrammingField.keys) Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(field,
                                        style: const TextStyle(
                                          fontFamily: 'FiraCode',
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18,
                                          color: Colors.black54
                                        ),
                                      ),
                                      const SizedBox(height: 16,),
                                      for (final subfield in myProgrammingField[field]) ... [
                                        Text(subfield['label'], style: const TextStyle(
                                          fontFamily: 'FiraCode',
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text(subfield['desc'], style: const TextStyle(
                                          fontFamily: 'FiraCode',
                                          color: Colors.black54
                                        ),),
                                        const SizedBox(height: 8,),
                                        Text(subfield['level'], style: const TextStyle(
                                          fontFamily: 'FiraCode',
                                          fontSize: 12,
                                          fontWeight: FontWeight.bold
                                        ),),
                                        const SizedBox(height: 16,)
                                      ],
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 16,),
                        Material(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16)
                          ),
                          clipBehavior: Clip.antiAlias,
                          child: InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(16),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Programming Languages',
                                    style: TextStyle(
                                      fontFamily: 'FiraCode',
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  ),
                                  const SizedBox(height: 16,),
                                  ...myProgrammingLanguages.keys.map<Widget>((e) => Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          for (final lang in myProgrammingLanguages[e]) ...[
                                            Text(lang['label'],
                                              style: const TextStyle(
                                                fontFamily: 'FiraCode',
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const SizedBox(width: 8,),
                                          ]
                                        ],
                                      ),
                                      Text(e, style: const TextStyle(
                                        fontFamily: 'FiraCode',
                                        fontSize: 12,
                                      ),),
                                      const SizedBox(height: 16,),
                                    ],
                                  )).toList()
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.all(16),
                color: Colors.blueGrey,
                child: Wrap(
                  alignment: WrapAlignment.spaceBetween,
                  runSpacing: 8,
                  spacing: 8,
                  children: const [
                     Text('This Web is built with Flutter',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white
                      ),
                    ),
                    Text('eky.web.app Copyright 2022',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              ),
            ])
          )
        ]
      )
    );
  }
}

class HeaderEkyWeb extends SliverPersistentHeaderDelegate {
  
  const HeaderEkyWeb({
    required this.headerHeight,
    this.isDark = false,
  });

  final bool isDark;
  final double headerHeight;

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    return ClipRect(
      clipBehavior: Clip.antiAlias,
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: DecoratedBox(
          decoration: BoxDecoration(color: Colors.white.withOpacity(0.6)),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SvgPicture.asset(
                'assets/eky_logo.svg',
                height: (headerHeight-20)-shrinkOffset*0.25,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  double get maxExtent => headerHeight;

  @override
  double get minExtent => headerHeight-20;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => true;
}
