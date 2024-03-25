import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class HomeDesktop extends StatefulWidget {
  const HomeDesktop({super.key, required this.goToIndex});
  final void Function() goToIndex;
  @override
  State<HomeDesktop> createState() => _HomeDesktopState();
}

class _HomeDesktopState extends State<HomeDesktop> {

  final messageController = TextEditingController();

  final GlobalKey _containerLearn = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 550,
              width: constraints.maxWidth,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    bottom: 0,
                    child: Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 500,
                        child: Image.network('assets/assets/src/yoha.png'),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                        width: constraints.maxWidth / 2,
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 30),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: Container(
                                  height: 2,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.onPrimary),
                                ),
                              ),
                              Text(
                                '¡Hola!',
                                style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).textTheme.bodyMedium?.color),
                              ),
                              RichText(
                                  text: TextSpan(children: [
                                TextSpan(
                                  text: 'Mi nombre es ',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color),
                                ),
                                const TextSpan(
                                  text: 'Yohanderson',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.blue),
                                ),
                                TextSpan(
                                  text: '\ny soy programador web',
                                  style: TextStyle(
                                      fontSize: 35,
                                      fontWeight: FontWeight.bold,
                                      color: Theme.of(context)
                                          .textTheme
                                          .bodyMedium
                                          ?.color),
                                ),
                              ])),
                              Padding(
                                padding: const EdgeInsets.only(top: 10, right: 50),
                                child: SizedBox(
                                  width: constraints.maxWidth / 2.9,
                                  child: Text(
                                    'Para consultas de contratación, no dudes en escribirme a través de mis redes sociales. Estaré encantado de atenderte. Por favor, recuerda solicitar un presupuesto y proporcionar todos los requisitos necesarios para tu proyecto. Espero tener la oportunidad de trabajar contigo.',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.grey.shade600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: constraints.maxWidth / 4,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'SOBRE MI',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.bodyMedium?.color),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Soy un desarrollador Full Stack apasionado por la tecnología. Siempre en busca de aprender y crecer. ',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).textTheme.bodySmall?.color),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                Scrollable.ensureVisible(
                                  _containerLearn.currentContext!,
                                  duration: const Duration(milliseconds: 500),
                                  curve: Curves.easeInOut,
                                );
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'DESCRUBRE MAS  ',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.color),
                                  ),
                                  const Icon(CupertinoIcons.arrow_right)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                height: 1,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            Text(
                              'MI TRABAJO',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.bodyMedium?.color),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'Me especializo en el desarrollo Full Stack con experiencia en una variedad de proyectos. Te invito a explorar mi trabajo y descubrir lo que puedo hacer.',
                                style: TextStyle(
                                    color:
                                        Theme.of(context).textTheme.bodySmall?.color),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                widget.goToIndex();
                              },
                              child: Row(
                                children: [
                                  Text(
                                    'PROYECTOS  ',
                                    style: TextStyle(
                                        color: Theme.of(context)
                                            .textTheme
                                            .bodyMedium
                                            ?.color),
                                  ),
                                  const Icon(CupertinoIcons.arrow_right)
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: Container(
                                height: 1,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Theme.of(context).colorScheme.primary),
                              ),
                            ),
                            Text(
                              'SIGUEME',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context).textTheme.bodyMedium?.color),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: SizedBox(
                                width: constraints.maxWidth / 6.5,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://www.tiktok.com/@yohandersonmarquez';
                                        if (await canLaunch(url)) {
                                        await launch(url);
                                        } else {
                                        throw 'No se pudo abrir la URL: $url';
                                        }                                      },
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                          'assets/assets/social_media/tiktok.png',
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://www.instagram.com/yohandersonmarquezdev';
                                        if (await canLaunch(url)) {
                                        await launch(url);
                                        } else {
                                        throw 'No se pudo abrir la URL: $url';
                                        }                                      },
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                          'assets/assets/social_media/instagram.png',
                                        ),
                                      ),
                                    ),
                                    InkWell(
                                      onTap: () async {
                                        const url = 'https://wa.me/message/MDXGD7ZI6HQ6C1';
                                        if (await canLaunch(url)) {
                                        await launch(url);
                                        } else {
                                        throw 'No se pudo abrir la URL: $url';
                                        }                                      },
                                      child: SizedBox(
                                        height: 50,
                                        width: 50,
                                        child: Image.network(
                                          'assets/assets/social_media/whatsapp.png',
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              key: _containerLearn,
              height: 550,
              width: constraints.maxWidth,
              decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.onSecondary
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: constraints.maxWidth / 2,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(bottom: 10),
                            child: Text('SOBRE MI',style: TextStyle(
                              color: Theme.of(context).textTheme.bodyMedium?.color,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),),
                          ),
                          Text('Llevo desarrollando sitios web desde el año 2019',style: TextStyle(
                            color: Theme.of(context).textTheme.bodyMedium?.color,
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                          ),),
                          Text('Con experiencia en una variedad de lenguajes de programación y tecnologías, incluyendo JavaScript, Flutter y uso tecnologias como Node.js con express, y más. Me apasiona la tecnología y siempre estoy buscando nuevas oportunidades para aprender y crecer. ¡No dudes en contactarme si quieres saber más!',
                            style: TextStyle(
                            color: Theme.of(context).textTheme.bodySmall?.color,
                            fontSize: 20,
                          ),),

                          Padding(
                            padding: const EdgeInsets.only(top: 30),
                            child: SizedBox(
                              width: constraints.maxWidth / 3,
                              child: Stack(
                                children: [
                                  SizedBox(
                                    width: constraints.maxWidth / 4,
                                    height: 45,
                                    child: TextField(
                                      controller: messageController,
                                      style: const TextStyle(
                                        color: Colors.black
                                      ),
                                      decoration: InputDecoration(
                                        prefixIcon: Icon(Icons.phone, color:  Theme.of(context).inputDecorationTheme.prefixIconColor, size: 20,),
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(width: 1.5,color: Colors.blue), // Color cuando no está enfocado
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                        disabledBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.black), // Color cuando no está enfocado
                                          borderRadius: BorderRadius.circular(12.0),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: const BorderSide(color: Colors.blue), // Color cuando no está enfocado
                                          borderRadius: BorderRadius.circular(50),
                                        ),
                                    ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 10,
                                    child: ElevatedButton(onPressed: () async {
                                      String message = messageController.text;
                                      String encodedMessage = Uri.encodeFull(message);
                                      String whatsappUrl = "https://wa.me/message/MDXGD7ZI6HQ6C1?text=$encodedMessage";
                                      if (await canLaunch(whatsappUrl)) {
                                        await launch(whatsappUrl);
                                      } else {
                                        ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(content: Text('No se pudo abrir WhatsApp',
                                          style: TextStyle(
                                            color: Colors.white
                                          ),)),
                                        );
                                      }
                                    }, child: const Padding(
                                      padding: EdgeInsets.symmetric(vertical: 13, horizontal: 10),
                                      child: Text('Contactame  ',
                                      style: TextStyle(
                                        color: Colors.white
                                      ),
                                      ),
                                    )),
                                  )
                                ],
                              ),
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: constraints.maxWidth / 2,
                    height: 550,
                    child:Stack(
                      children: [
                        Positioned(
                          bottom: -50,
                          left: -50,
                          child: Container(
                            height: 550 ,
                            width: constraints.maxWidth ,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.black
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: -150,
                          left: -80,
                          child: Container(
                            height: 550 ,
                            width: constraints.maxWidth ,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 2, color: Colors.blue
                                ),
                                shape: BoxShape.circle
                            ),
                          ),
                        ),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Center(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 500,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Theme.of(context).colorScheme.primary
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                                      children: [
                                        const Row(
                                          children: [
                                            Text('4',
                                            style: TextStyle(
                                              color: Colors.blue,
                                              fontSize: 45,
                                              fontWeight: FontWeight.bold
                                            ),),
                                            Padding(
                                              padding: EdgeInsets.only(left: 8),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text('Años de'),
                                                  Text('experiencia'),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Row(
                                            children: [
                                              Text('25',
                                              style: TextStyle(
                                                color: Theme.of(context).textTheme.bodyMedium?.color,
                                                fontSize: 45,
                                                fontWeight: FontWeight.bold
                                              ),),
                                              const Padding(
                                                padding: EdgeInsets.only(left: 3),
                                                child: Text('+',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontSize: 35,
                                                  fontWeight: FontWeight.bold
                                                ),),
                                              ),
                                              const Padding(
                                                padding: EdgeInsets.only(left: 8),
                                                child: Column(
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    Text('Proyectos'),
                                                    Text('concretados'),
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(left: 20),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: 22,
                                                child: Text('Diseño',
                                                  style: TextStyle(
                                                      color: Theme.of(context).textTheme.bodyMedium?.color,
                                                      fontWeight: FontWeight.bold,
                                                      fontSize: 20
                                                  ),),
                                              ),
                                              const SizedBox(
                                                height: 25,
                                                child: Text('Responsivo',
                                                style: TextStyle(
                                                  color: Colors.blue,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 20
                                                ),),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 55),
                                      child: Text('Tecnologias',
                                      style: TextStyle(
                                        color: Colors.blue,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold
                                      ),
                                      ),
                                    ),
                                  ),
                                  Wrap(
                                    spacing: 40,
                                    runSpacing: 25,
                                    children: [
                                      Column(
                                        children: [
                                          const Text('PostgreSQL',
                                          style: TextStyle(
                                            fontSize: 25
                                          ),),
                                          Container(
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              color: Theme.of(context).colorScheme.primary
                                            ),
                                            child: SizedBox(
                                              height: 70,
                                                width: 180,
                                                child: Row(
                                                  children: [
                                                    Image.network('assets/assets/tech/postgresql.png'),
                                                    Text('PostgreSQL',
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                        color: Theme.of(context).textTheme.bodyLarge?.color
                                                      ),),
                                                  ],
                                                )),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text('Flutter',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Theme.of(context).colorScheme.primary
                                            ),
                                            child: SizedBox(
                                                height: 70,
                                                width: 180,
                                                child: Padding(
                                                  padding: const EdgeInsets.all(8.0),
                                                  child: Row(
                                                    children: [
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Image.network('assets/assets/tech/flutter.png'),
                                                      ),
                                                      Padding(
                                                        padding: const EdgeInsets.only(left: 10),
                                                        child: Text('Flutter',
                                                          style: TextStyle(
                                                              fontSize: 25,
                                                              color: Theme.of(context).textTheme.bodyLarge?.color
                                                          ),),
                                                      ),
                                                    ],
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text('NodeJS',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Theme.of(context).colorScheme.primary
                                            ),
                                            child: SizedBox(
                                                height: 70,
                                                width: 180,
                                                child: Image.network('assets/assets/tech/nodejs.png')),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          const Text('RestAPI',
                                            style: TextStyle(
                                                fontSize: 25
                                            ),),
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10),
                                                color: Theme.of(context).colorScheme.primary
                                            ),
                                            child: SizedBox(
                                                height: 70,
                                                width: 180,
                                                child: Center(
                                                  child: RichText(
                                                    text: TextSpan(
                                                      children: [
                                                        const TextSpan( text: '{',
                                                          style: TextStyle(
                                                              fontSize: 30,
                                                              color: Colors.blue,
                                                            fontWeight: FontWeight.bold
                                                          ),),
                                                        TextSpan( text: ' REST API ',
                                                          style: TextStyle(
                                                              fontSize: 30,
                                                              color: Theme.of(context).textTheme.bodyLarge?.color,
                                                              fontWeight: FontWeight.bold
                                                          ),),
                                                        const TextSpan( text: '}',
                                                          style: TextStyle(
                                                              fontSize: 30,
                                                              color: Colors.blue,
                                                              fontWeight: FontWeight.bold
                                                          ),),
                                                      ],
                                                    ),
                                                  ),
                                                )),
                                          ),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 225,
              width: constraints.maxWidth,
              decoration: const BoxDecoration(
                  color: Colors.black
              ),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  const Positioned(
                    left: 100,
                    child: SizedBox(
                      width: 400,
                      child: Center(
                        child: Text(' “Cualquier tecnología suficientemente avanzada es equivalente a la magia.”',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30
                        ),),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -5,
                    right: 100,
                    child: SizedBox(
                        height: 225,
                        child: Image.network('assets/assets/src/mono.png')),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
