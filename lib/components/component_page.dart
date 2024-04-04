import 'package:culero/app/resources/app_colors.dart';
import 'package:culero/components/atoms/buttons/active_button.dart';
import 'package:culero/components/atoms/buttons/text_button.dart';
import 'package:flutter/material.dart';
import 'package:culero/components/molecules/latest_review_item.dart';
import 'package:culero/components/molecules/need_review_tile.dart';
import 'package:culero/components/atoms/text/body_text.dart';
import 'package:culero/components/atoms/text/heading_text.dart';
import 'package:culero/components/atoms/text_field/primary_text_form_field.dart';
import 'package:culero/components/atoms/text_field/search_text_field.dart';
import 'package:culero/components/atoms/buttons/primary_button.dart';
import 'package:culero/components/atoms/buttons/secondary_button.dart';
import 'package:culero/components/atoms/card/primary_card.dart';
import 'package:culero/components/molecules/connection_list_tile.dart';
import 'package:culero/components/atoms/indicator/indicator.dart';
import 'package:culero/components/molecules/profile_detail_card.dart';
import 'package:culero/components/molecules/review_card.dart';
import 'package:culero/components/molecules/rating_card.dart';
import 'package:culero/components/molecules/my_review_card.dart';
import 'package:culero/utils/color.dart';
import 'package:culero/utils/font_size.dart';

final controller = TextEditingController();
final controller2 = TextEditingController();

class ComponentPage extends StatelessWidget {
  const ComponentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.l1,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Row(children: [

                Flexible(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: PrimaryButton(text: "Primary Button", onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SecondaryButton(text: "Secondary Button", onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ActiveButton(text: "Active Button", onPressed: () {}),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButtonAtm(text: "Text Button", onPressed: () {}),
                      ),
                    ],
                  ),
                )
              ]),

              // My Review
              const Row(
                children: [
                  SizedBox(
                    width: 518,
                    child: Column(
                      children: [
                        MyReviewCard(data: {
                          "over_all": 4.6,
                          "star_rating": 5,
                          "Professionalism": 4.4,
                          "Reliability": 4.2,
                          "Communication": 4.9,
                        }),
                        // My List tile
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NeedReviewTile(data: {
                            "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                            "name": "Rutik Thakre",
                            "title": "Flutter Developer",
                          }),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NeedReviewTile(data: {
                            "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                            "name": "Rutik Thakre",
                            "title": "Flutter Developer",
                          }),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: NeedReviewTile(data: {
                            "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                            "name": "Rutik Thakre",
                            "title": "Flutter Developer",
                          }),
                        ),
                      ],
                    ),
                  ),
                  LatestReviewItem(data: {
                    "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                    "name": "Noah Smith",
                    "star_rating": 5,
                    "Professionalism": 4.4,
                    "Reliability": 4.2,
                    "Communication": 4.9,
                  }),
                ],
              ),
              // Latest Review Item

              // Review Card
              const ReviewCard(data: {
                "over_all": 4.6,
                "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                "star_rating": 5,
                "review": "What impressed me the most was Logan Davis's strategic thinking and the way they handled challenges. Their clear communication and willingness to listen to team members' ideas created a positive and collaborative work environment.",
                "Professionalism": 4.4,
                "Reliability": 4.2,
                "Communication": 4.9,
                "posted_on": "01/ 28/ 2024",
              }),

              // Rating Card
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: RatingCard(data: {
                  "over_all": 4.6,
                  "Professionalism": 4.4,
                  "Reliability": 4.2,
                  "Communication": 4.9,
                }),
              ),

              // Connection Profile
              const ProfileDetailCard(data: {
                "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                "name": "Rutik Thakre",
                "title": "Flutter Developer",
                "total_reviews": "60",
                "total_connections": "100",
                "created_at": "2020",
              }),

              // List Tile
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 8),
                child: ConnectionListTile(data: {
                  "avatar": "https://avatars.githubusercontent.com/u/58112334?v=4",
                  "name": "Rutik Thakre",
                  "title": "Flutter Developer",
                }),
              ),
              // Atoms
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PrimaryTextFormField(
                  hintText: 'Hint',
                  onChanged: (e) {},
                  controller: controller,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchTextField(controller: controller2, hintText: "Search Here"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Flexible(child: PrimaryButton(text: "PrimaryButton", onPressed: () {})),
                    Flexible(child: SecondaryButton(text: "SecondaryButton", onPressed: () {})),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: PrimaryCard(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeadingText(text: "Heading Text", fontSize: FontSizes.h1),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeadingText(text: "Heading Text", fontSize: FontSizes.h2),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeadingText(text: "Heading Text", fontSize: FontSizes.h3),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeadingText(text: "Heading Text", fontSize: FontSizes.h4),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: HeadingText(text: "Heading Text", fontSize: FontSizes.h5),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: BodyText(text: "Body Text", fontSize: FontSizes.p1),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: BodyText(text: "Body Text", fontSize: FontSizes.p2),
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: BodyText(text: "Body Text", fontSize: FontSizes.p3),
                      )
                    ],
                  ),
                ),
              ),
              const Indicator(
                value: 0.5,
                color: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
