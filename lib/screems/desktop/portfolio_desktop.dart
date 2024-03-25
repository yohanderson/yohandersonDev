import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../dates.dart';

class PortfolioDesktop extends StatefulWidget {
  const PortfolioDesktop({super.key});

  @override
  State<PortfolioDesktop> createState() => _PortfolioDesktopState();
}

class _PortfolioDesktopState extends State<PortfolioDesktop> {


bool sizedBox = false;

  final Dates dates = Dates();

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {

        ValueNotifier<List<bool>> boolListNotifier = ValueNotifier<List<bool>>(List.generate(dates.portfolioDev.length, (index) => false));


        return SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 40, top: 20, bottom: 20),
                child: Row(
                  children: [
                    Text('PORTAFOLIO',
                      style: TextStyle(
                        fontSize: 45,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    Text(' DEV',
                    style: TextStyle(
                      fontSize: 45,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold
                    ),)
                  ],
                ),
              ),
              Center(
                child: Wrap(
                  spacing: 50,
                  runSpacing: 50,
                  children: List.generate(dates.portfolioDev.length, (index) {
                    final photosController = PageController();
                    final item = dates.portfolioDev[index];
                    return ValueListenableBuilder(
                        valueListenable: boolListNotifier,
                        builder: (context, List<bool> boolList, child) {
                        return SizedBox(
                          width: 450,
                          height: 330,
                          child: Center(
                            child: Stack(
                              children: [
                                Positioned(
                                  top: 0,
                                  child: SizedBox(
                                    width: 450,
                                    height: 250,
                                    child: PageView.builder(
                                      controller: photosController,
                                      itemCount: item['fotos'].length,
                                      itemBuilder: (context, index) {
                                        final photo = item['fotos'][index];
                                        return ClipRRect(
                                          borderRadius: BorderRadius.circular(10),
                                          child: Image.network(photo,
                                            fit: BoxFit.cover,
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: -1,
                                  bottom: 0,
                                  child: Container(
                                    width: 451,
                                    height: boolList[index] == false ? 140 : 300,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                            color: Theme.of(context).colorScheme.background,
                                            borderRadius: const BorderRadius.only(
                                              topRight: Radius.circular(10),
                                              topLeft: Radius.circular(10),
                                            )
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(item['title'], style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                    color: Theme.of(context).textTheme.bodyMedium?.color)),
                                                Row(
                                                  children: [
                                                    InkWell(
                                                      onTap: (){
                                                        setState(() {
                                                          photosController.previousPage(
                                                            duration: const Duration(milliseconds: 300),
                                                            curve: Curves.ease,
                                                          );
                                                        });
                                                      },
                                                      child: const Icon(CupertinoIcons.arrowtriangle_left_circle_fill),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets.only(left: 10),
                                                      child: InkWell(
                                                        onTap: (){
                                                          setState(() {
                                                            photosController.nextPage(
                                                              duration: const Duration(milliseconds: 300),
                                                              curve: Curves.ease,
                                                            );
                                                          });
                                                        },
                                                        child: const Icon(CupertinoIcons.arrowtriangle_right_circle_fill),
                                                      ),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(child: Container(
                                          decoration: BoxDecoration(
                                              color: Theme.of(context).colorScheme.onSecondary,
                                              borderRadius: const BorderRadius.only(
                                                bottomLeft: Radius.circular(10),
                                                bottomRight: Radius.circular(10),
                                              )
                                          ),
                                          child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                  padding: const EdgeInsets.all(10),
                                                   child: Text(item['description']),
                                                  ),
                                                ],
                                              )),
                                        )),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                    bottom: 10,
                                    right: 10,
                                    child: InkWell(
                                      onTap: () {
                                        boolList[index] = !boolList[index];
                                        boolListNotifier.value = List.from(boolList);
                                      },
                                  child: boolList[index] == false ? const Icon(CupertinoIcons.arrowtriangle_up_circle_fill, color: Colors.white, size: 18) : const Icon(CupertinoIcons.arrowtriangle_down_circle_fill, color: Colors.white, size: 18),
                                ))
                              ],
                            ),
                          ),
                        );
                      }
                    );
                  }),
                )
              ),
              const SizedBox(
                height: 40,
              )
            ],
          ),
        );
      }
    );
  }
}
