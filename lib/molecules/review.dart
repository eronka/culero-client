import 'package:flutter/material.dart';
import 'package:culero/atoms/card/secondary_card.dart';
import 'package:culero/atoms/text/body_text.dart';
import 'package:culero/utils/color.dart';
import 'package:culero/utils/font_size.dart';

import '../atoms/text/heading_text.dart';
// This is Review Card
class Review extends StatelessWidget {
  final Map<String, dynamic> data;

  const Review({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return SecondaryCard(
      border: false,
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: NetworkImage(data['avatar']!),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.baseline,
                            textBaseline: TextBaseline.alphabetic,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              HeadingText(
                                text: data["over_all"].toString(),
                                fontSize: 24,
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 4),
                                child: HeadingText(
                                  text: "/",
                                  fontSize: 13,
                                ),
                              ),
                              const HeadingText(
                                text: "5",
                                fontSize: 13,
                              )
                            ],
                          ),
                          Row(
                            children: List.generate(
                              data['star_rating'],
                              (index) => Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.star_rate,
                                  size: 16,
                                  color: Theme.of(context).colorScheme.primary,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined),
                  iconSize: 30,
                ),
              )
            ],
          ),
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                child: BodyText(
                  text: "Review:",
                  fontSize: FontSizes.p2,
                ),
              ),
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: HeadingText(
                    text: data["review"],
                    fontSize: FontSizes.p2,
                  ),
                ),
              )
            ],
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    const HeadingText(
                      text: "Professionalism",
                      fontColor: bodyText2,
                      fontSize: FontSizes.p2,
                    ),
                    HeadingText(
                      text: data['Professionalism'].toString(),
                      fontSize: FontSizes.h2,
                    )
                  ],
                ),
                Column(
                  children: [
                    const HeadingText(
                      text: "Reliability",
                      fontColor: bodyText2,
                      fontSize: FontSizes.p2,
                    ),
                    HeadingText(
                      text: data['Reliability'].toString(),
                      fontSize: FontSizes.h2,
                    )
                  ],
                ),
                Column(
                  children: [
                    const HeadingText(
                      text: "Communication",
                      fontColor: bodyText2,
                      fontSize: FontSizes.p2,
                    ),
                    HeadingText(
                      text: data['Communication'].toString(),
                      fontSize: FontSizes.h2,
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
