import 'package:flutter/material.dart';
import 'package:places/domain/sight.dart';

class SightDetails extends StatelessWidget {
  const SightDetails({Key? key}) : super(key: key);

  //final Sight sight;

  @override
  Widget build(BuildContext context) {
    const colorWhiteSec = Color.fromRGBO(59, 62, 91, 1);

    const sightName = Text('Пряности и радости',
        style: TextStyle(
            fontSize: 24, fontWeight: FontWeight.w700, color: colorWhiteSec));

    const sightType = Text('ресторан',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w700,
          color: colorWhiteSec,
        ));

    const sightTime = Text('закрыто до 09:00',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: colorWhiteSec,
        ));

    const sightDescription = Text(
        'Пряный вкус радостной жизни вместе с шеф-поваром Изо Дзандзава, благодаря которой у гостей ресторана есть возможность выбирать из двух направлений: европейского и восточного',
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.normal,
          color: colorWhiteSec,
        ));

    return Scaffold(
        body: Column(
      children: [
        Stack(
          children: [
            Container(
                width: MediaQuery.of(context).size.width,
                height: 360,
                decoration: const BoxDecoration(color: Colors.grey)),
            Positioned(
              child: Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white, width: 2.0),
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                    color: Colors.white),
              ),
              left: 16.0,
              top: 36.0,
            )
          ],
        ),
        Expanded(
            child: Container(
                color: Colors.white,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16, top: 24, right: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          sightName,
                          const SizedBox(height: 2),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                sightType,
                                const SizedBox(width: 16),
                                sightTime
                              ]),
                          const SizedBox(height: 24),
                          sightDescription,
                          const SizedBox(height: 24),
                          Container(
                              height: 48,
                              width: double.infinity, // TODO:
                              decoration: const BoxDecoration(
                                  color: Color.fromRGBO(76, 175, 80, 1),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12.0))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 15, bottom: 15),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(width: 20, color: Colors.white),
                                    const SizedBox(width: 10),
                                    const Text(
                                      'ПОСТРОИТЬ МАРШРУТ',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              )),
                          const SizedBox(
                            height: 24,
                          ),
                          const Divider(
                              thickness: 0.8,
                              height: 1.0,
                              // TODO: в rgba 0.56 opacity, но выглядит по другому
                              color: Color.fromRGBO(124, 126, 146, 0.24)),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(children: [
                            Expanded(
                                child: SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 22,
                                      height: 19,
                                      color: Colors.tealAccent),
                                  const SizedBox(width: 9),
                                  const Text(
                                    'Запланировать',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(
                                            124, 126, 146, 0.56)),
                                  )
                                ],
                              ),
                            )),
                            Expanded(
                                child: SizedBox(
                              height: 40,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                      width: 22,
                                      height: 19,
                                      color: Colors.amber),
                                  const SizedBox(width: 13),
                                  const Text(
                                    'В Избранное',
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.normal,
                                        color: Color.fromRGBO(
                                            124, 126, 146, 0.56)),
                                  )
                                ],
                              ),
                            ))
                          ])
                        ]))))
      ],
    ));
  }
}
