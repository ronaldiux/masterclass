// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass/utils/utils.dart';

import '../utils/cores_app.dart';
import '../widgets/card_menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final pageController = PageController(keepPage: true, initialPage: 0);
  int page = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoresApp.backgroundColor,
      body: Column(
        children: [
          appBar(),
          Expanded(
            child: PageView(
              onPageChanged: (value) {
                page = value;
                setState(() {});
                print(value);
                setState(() {});
              },
              controller: pageController,
              children: <Widget>[
                ListView(
                  children: const [
                    CardMenu(
                      titulo: 'Animações',
                      conteudo:
                          'Estudo Sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                      exercicios: 4,
                      imageAsset: 'assets/awesome-running.svg',
                      linkGitHub: '',
                    ),
                    CardMenu(
                      titulo: 'Leitura de Mockup',
                      conteudo:
                          'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                      exercicios: 2,
                      imageAsset: 'assets/Icon awesome-glasses.svg',
                      linkGitHub: '',
                    ),
                    CardMenu(
                      titulo: 'PlayGround',
                      conteudo:
                          'Ambiente destinado a testes e estudos em geral',
                      exercicios: 2,
                      imageAsset: 'assets/Icon material-toys.svg',
                      linkGitHub: '',
                    ),
                  ],
                ),
                Center(
                  child: Utils.textPoppins('Repositórios'),
                ),
                Center(
                  child: Utils.textPoppins('Sobre o dev'),
                ),
              ],
            ),
          ),
          bottomNav(),
        ],
      ),
    );
  }

  Widget bottomNav() {
    return SizedBox(
      height: 100,
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  0,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                );
                //  setState(() {});

                //  print(pageController.page);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: (page == 0)
                          ? CoresApp.altBottomNavigator
                          : CoresApp.backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: SvgPicture.asset(
                        'assets/Icon feather-target.svg',
                        semanticsLabel: 'github',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Utils.textPoppins(
                    'Atividades',
                    fontsize: 12,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              width: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  1,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: (page == 1)
                          ? CoresApp.altBottomNavigator
                          : CoresApp.backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2),
                      child: SvgPicture.asset(
                        'assets/Icon awesome-github.svg',
                        semanticsLabel: 'github',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Utils.textPoppins(
                    'Repositorios',
                    fontsize: 12,
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Container(
              width: 1,
              color: Colors.white,
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () {
                pageController.animateToPage(
                  2,
                  duration: const Duration(milliseconds: 250),
                  curve: Curves.easeIn,
                );

                //  setState(() {});

                //  print(pageController.page);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 30,
                    width: 60,
                    decoration: BoxDecoration(
                      color: (page == 2)
                          ? CoresApp.altBottomNavigator
                          : CoresApp.backgroundColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(2),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Utils.textPoppins(
                    'Sobre o dev',
                    fontsize: 12,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget appBar() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 80,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo@3x.png',
              height: 60,
              width: 60,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Utils.textPoppins(
                      'Atividades',
                      fontsize: 20,
                    ),
                    Utils.textPoppins(
                      'Flutterando Masterclass',
                      fontsize: 12,
                    ),
                  ],
                ),
              ),
            ),
            Image.asset(
              'assets/Icon awesome-moon@3x.png',
              height: 25,
              width: 25,
            ),
          ],
        ),
      ),
    );
  }
}
