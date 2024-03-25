import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';

//desktop
import 'package:page_web/screems/desktop/home_desktop.dart';
import 'package:page_web/screems/desktop/portfolio_desktop.dart';

//mobile
import 'package:page_web/screems/mobile/home_mobile.dart';
import 'package:page_web/screems/mobile/portfolio_mobile.dart';

//tablet
import 'package:page_web/screems/tablet/home_tablet.dart';
import 'package:page_web/screems/tablet/portfolio_tablet.dart';


class Trips extends StatefulWidget {
  final ValueNotifier<bool> darkMode;
  const Trips({super.key, required this.darkMode});

  @override
  State<Trips> createState() => _TripsState();
}

class _TripsState extends State<Trips> {

  int _selectedIndex = 0;

  bool menuActive = false;

  void goToIndex () {
    setState(() {
      _selectedIndex = 1;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pagesIndex900 = [
      HomeDesktop(goToIndex: goToIndex),
      const PortfolioDesktop(),
    ];

    pagesIndex300 = [
      HomeMobile(goToIndex: goToIndex),
      const PortfolioMobile(),
    ];

    pagesIndex600 = [
      HomeTablet(goToIndex: goToIndex),
      const PortfolioTablet(),
    ];
  }

  //mobile
  late final List<Widget> pagesIndex300;

  Widget buildNavigationBar300() {
    return ValueListenableBuilder<bool>(
        valueListenable: widget.darkMode,
        builder: (context, value, child) {
          var darkModeTheme = value;
          return Container(
            height:70,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              boxShadow: [
                BoxShadow(
                  color: Theme.of(context).colorScheme.onSurface.withOpacity(0.2),
                  spreadRadius: 0.2,
                  blurRadius:20,
                  offset: const Offset(5, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(
                    width: 200,
                    child: RichText(
                      text: TextSpan(
                          style: const TextStyle(
                              fontSize: 30
                          ),
                          children: [
                            const TextSpan(
                                text: '{..} ', style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold)
                            ),
                            TextSpan(text: 'Developer', style: TextStyle( color: Theme.of(context).textTheme.bodyMedium?.color, fontWeight: FontWeight.bold)),
                          ]
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only( right: 20),
                  child: InkWell(
                    onTap: () {
                      if(menuActive == true) {
                        setState(() {
                        menuActive = false;
                        });
                      } else {
                        setState(() {
                        menuActive = true;
                        });
                      }
                    },
                    child: Icon(Icons.menu,),
                  ),
                ),
              ],
            ),
          );
        }
    );
  }

  //tablet
  late final List<Widget> pagesIndex600;

  Widget buildNavigationBar600() {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 200,
              child: RichText(
                text: TextSpan(
                    style: const TextStyle(
                        fontSize: 30
                    ),
                    children: [
                      const TextSpan(
                          text: '{..} ', style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold)
                      ),
                      TextSpan(text: 'Developer', style: TextStyle( color: Theme.of(context).textTheme.bodyMedium?.color, fontWeight: FontWeight.bold)),
                    ]
                ),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                child: _selectedIndex == 0
                    ? Container(
                    height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Theme.of(context).colorScheme.onPrimary,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(2,2),
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5
                          )
                        ]
                    ),child: Center(
                  child: Text('Inicio',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.bodyLarge?.color
                    ),),
                ))
                    : const SizedBox(
                  width: 60,
                  height: 25,
                  child: Center(
                    child: Text('Inicio',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),),
                  ),
                ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 35),
                child: InkWell(
                  child: _selectedIndex == 1
                      ? Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Theme.of(context).colorScheme.onPrimary,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2,2),
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5
                            )
                          ]
                      ),child: Center(
                    child: Text('Portafolio',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Theme.of(context).textTheme.bodyLarge?.color
                      ),),
                  ))
                      : const SizedBox(
                    width: 100,
                    height: 25,
                    child: Center(
                      child: Text('Portafolio',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),),
                    ),
                  ),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  //desktop
  late final List<Widget> pagesIndex900;

  Widget buildNavigationBar900() {
    return SizedBox(
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: SizedBox(
              width: 200,
              child: RichText(
                text: TextSpan(
                  style: const TextStyle(
                    fontSize: 30
                  ),
                  children: [
                    const TextSpan(
                        text: '{..} ', style: TextStyle(color:Colors.blue, fontWeight: FontWeight.bold)
                    ),
                    TextSpan(text: 'Developer', style: TextStyle( color: Theme.of(context).textTheme.bodyMedium?.color, fontWeight: FontWeight.bold)),
                  ]
                ),
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                child: _selectedIndex == 0
                    ? Container(
                  height: 25,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(3),
                        color: Theme.of(context).colorScheme.onPrimary,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(2,2),
                              color: Colors.black.withOpacity(0.3),
                              blurRadius: 5
                          )
                        ]
                    ),child: Center(
                      child: Text('Inicio',
                                        style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).textTheme.bodyLarge?.color
                                        ),),
                    ))
                    : const SizedBox(
                  width: 60,
                  height: 25,
                      child: Center(
                        child: Text('Inicio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                      ),
                    ),
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                },
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 35),
                child: InkWell(
                  child: _selectedIndex == 1
                      ? Container(
                      width: 100,
                      height: 25,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(3),
                          color: Theme.of(context).colorScheme.onPrimary,
                          boxShadow: [
                            BoxShadow(
                                offset: const Offset(2,2),
                                color: Colors.black.withOpacity(0.3),
                                blurRadius: 5
                            )
                          ]
                      ),child: Center(
                        child: Text('Portafolio',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Theme.of(context).textTheme.bodyLarge?.color
                                          ),),
                      ))
                      : const SizedBox(
                    width: 100,
                    height: 25,
                        child: Center(
                          child: Text('Portafolio',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),),
                        ),
                      ),
                  onTap: () {
                    setState(() {
                      _selectedIndex = 1;
                    });
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: widget.darkMode,
        builder: (context, value, child) {
          var darkModeTheme = value;
        return Scaffold(
          body: Stack(
            children: [
              LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth < 600) {
                    return Scaffold(
                      body: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                          Column(
                            children: [
                              buildNavigationBar300(),
                              Expanded(
                                  child: pagesIndex300[_selectedIndex]),
                            ],
                          ),
                          Positioned(
                            top: 70,
                            child: menuActive == true ? menuMobile() : const SizedBox(),)
                        ],
                      ),
                    );
                  }
                  else if (constraints.maxWidth < 800) {
                    return Scaffold(
                      body: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                          Column(
                            children: [
                              buildNavigationBar600(),
                              Expanded(
                                child: pagesIndex600[_selectedIndex],
                              ),
                            ],
                          )
                        ],
                      ),
                    );
                  }
                  else {
                    return Scaffold(
                      body: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context).colorScheme.background,
                            ),
                          ),
                          Column(
                            children: [
                              buildNavigationBar900(),
                              Expanded(
                                child: pagesIndex900[_selectedIndex],
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }
                },
              ),
              /*Positioned(
                left: 15,
                bottom: 0,
                child: darkModeTheme == false ?
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.darkMode.value = true;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      width: 60,
                      height: 25,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.onPrimary,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.3),
                                    blurRadius: 3,
                                  ),
                                  BoxShadow(
                                      offset: const Offset(1,1),
                                      color: Colors.white.withOpacity(0.5),
                                      blurRadius: 3,
                                      inset: true
                                  ),

                                ]
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 6),
                              child: Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(-2,-2),
                                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                          blurRadius: 5,
                                          inset: true
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ) :
                InkWell(
                  onTap: () {
                    setState(() {
                      widget.darkMode.value = false;
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: SizedBox(
                      width: 60,
                      height: 25,
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).colorScheme.background,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    offset: const Offset(2,2),
                                    color: Colors.black.withOpacity(0.2),
                                    blurRadius: 5,
                                  ),
                                  BoxShadow(
                                      offset: const Offset(-2,-2),
                                      color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                                      blurRadius: 4,
                                      inset: true
                                  ),
                                ]
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 6),
                              child: Container(
                                height: 17,
                                width: 17,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.secondary,
                                    shape: BoxShape.circle,
                                    boxShadow: [
                                      BoxShadow(
                                          offset: const Offset(2,2),
                                          color: Colors.white.withOpacity(0.7),
                                          blurRadius: 3,
                                          inset: true
                                      ),
                                    ]
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),)*/
            ],
          ),
        );
      }
    );
  }

  Widget menuMobile() {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: InkWell(
              child: _selectedIndex == 0
                  ? Container(
                  height: 25,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Theme.of(context).colorScheme.onPrimary,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(2,2),
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5
                        )
                      ]
                  ),child: Center(
                child: Text('Inicio',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color
                  ),),
              ))
                  : const SizedBox(
                width: 60,
                height: 25,
                child: Center(
                  child: Text('Inicio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                  menuActive = false;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: InkWell(
              child: _selectedIndex == 1
                  ? Container(
                  width: 100,
                  height: 25,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      color: Theme.of(context).colorScheme.onPrimary,
                      boxShadow: [
                        BoxShadow(
                            offset: const Offset(2,2),
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 5
                        )
                      ]
                  ),child: Center(
                child: Text('Portafolio',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).textTheme.bodyLarge?.color
                  ),),
              ))
                  : const SizedBox(
                width: 100,
                height: 25,
                child: Center(
                  child: Text('Portafolio',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),),
                ),
              ),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                  menuActive = false;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}

