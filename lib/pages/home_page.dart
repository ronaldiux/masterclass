import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:masterclass/utils/utils.dart';

import '../utils/cores_app.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CoresApp.backgroundColor,
      body: Column(
        children: [
          appBar(),
          Expanded(
            child: ListView(
              children: [
                cardMenu(
                  titulo: 'Animações',
                  conteudo:
                      'Estudo Sobre animações implícitas e controladas, contendo 4 exercícios e 2 estudos',
                  exercicios: 4,
                  imageAsset: 'assets/awesome-running.svg',
                  linkGitHub: '',
                ),
                cardMenu(
                  titulo: 'Leitura de Mockup',
                  conteudo:
                      'Aplicação da técnica de leitura de mockup, contendo 2 exercícios',
                  exercicios: 2,
                  imageAsset: 'assets/Icon awesome-glasses.svg',
                  linkGitHub: '',
                ),
                cardMenu(
                  titulo: 'PlayGround',
                  conteudo: 'Ambiente destinado a testes e estudos em geral',
                  exercicios: 2,
                  imageAsset: 'assets/Icon material-toys.svg',
                  linkGitHub: '',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget bottomNav() {
    return Container(
      height: 80,
      child: Row(
        children: [],
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
                    Utils.textPoppins('Atividades'),
                    Utils.textPoppins('Flutterando Masterclass'),
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

  Widget cardMenu({
    required String titulo,
    required String conteudo,
    required int exercicios,
    required String linkGitHub,
    required String imageAsset,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
          color: CoresApp.corContainerMenu,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: CoresApp.blueButton,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(6),
                        child: SvgPicture.asset(
                          imageAsset,
                          semanticsLabel: titulo,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                      child: Utils.textPoppins(
                        titulo,
                        txtalgn: TextAlign.left,
                      ),
                    ),
                    Row(
                      children: [
                        Utils.textPoppins('Exercicios  '),
                        Utils.textPoppins(
                          exercicios.toString(),
                          fontweight: FontWeight.bold,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Expanded(
                child: Center(
                  child: Utils.textPoppins(
                    conteudo,
                    overflw: TextOverflow.clip,
                    txtalgn: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            'assets/Icon awesome-github.svg',
                            semanticsLabel: 'github',
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Utils.textPoppins(
                            'Acessar Codigo Fonte',
                            fontsize: 14,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 45,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: CoresApp.blueButton,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: Utils.textPoppins('Ver Mais'),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
