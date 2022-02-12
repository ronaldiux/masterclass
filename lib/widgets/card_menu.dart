import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/cores_app.dart';
import '../utils/utils.dart';

class CardMenu extends StatelessWidget {
  final String titulo;
  final String conteudo;
  final int exercicios;
  final String linkGitHub;
  final String imageAsset;
  const CardMenu({
    Key? key,
    required this.titulo,
    required this.conteudo,
    required this.exercicios,
    required this.linkGitHub,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
