import 'package:flutter/widgets.dart';
import 'package:places/domain/sight.dart';
import 'package:flutter/material.dart';

class SightCard extends StatelessWidget {
  const SightCard({Key? key, required this.sight}) : super(key: key);

  final Sight sight;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Container(
          width: 328,
          height: 96,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16), topRight: Radius.circular(16)),
              color: Colors.deepOrange),
          child: Stack(
            children: [
              Positioned(
                child: Text(sight.type,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700)),
                left: 16.0,
                top: 16.0,
              ),
              Positioned(
                child: Container(
                  width: 20.0,
                  height: 18.0,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.white, width: 2.0),
                      color: Colors.white),
                ),
                right: 18.0,
                top: 19.0,
              )
            ],
          )),
      Container(
          width: 328,
          height: 92,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16)),
              color: Color.fromRGBO(245, 245, 245, 1)),
          child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(sight.name,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: const TextStyle(
                          color: Color.fromRGBO(59, 62, 91, 1),
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 2),
                  Text(sight.details,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          color: Color.fromRGBO(124, 126, 146, 1),
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400)),
                ],
              )))
    ]);
  }
}
