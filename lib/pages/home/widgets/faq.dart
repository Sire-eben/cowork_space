import 'package:breej_hub_mobile/core/utils/__utils.dart';
import 'package:breej_hub_mobile/models/faq.dart';
import 'package:flutter/material.dart';

class FrequentlyAskedQuestions extends StatefulWidget {
  const FrequentlyAskedQuestions({super.key});

  @override
  State<FrequentlyAskedQuestions> createState() => _FrequentlyAskedQuestionsState();
}

class _FrequentlyAskedQuestionsState extends State<FrequentlyAskedQuestions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsGeometry.symmetric(vertical: 112),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SelectableText(
                  'Frequently Asked Questions'.allInCaps,
                  style: AppStyles.raleway12Smbd.copyWith(),
                ),
                Gap(16),
                SelectableText(
                  'Your Roadmap to Coworking Clarity',
                  style: AppStyles.raleway13Bd.copyWith(fontSize: 48),
                ),
                Gap(24),
                Padding(
                  padding: EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.1),
                  child: SelectableText(
                    'Frequently asked questions ordered by popularity. Remember that if the visitor has not committed to the call to action, they may still have questions (doubts) that can be answered.',
                    style: AppStyles.raleway14Rg,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: List.generate(faqsList.length, (index) {
                final faq = faqsList[index];
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Gap(20),
                          Text(faq.question, style: AppStyles.raleway14Smbd),
                          if (faq.expand) ...[
                            Gap(16),
                            Text(faq.answer, style: AppStyles.raleway14Rg),
                          ],
                          Gap(20),
                          Container(height: 1, width: 136, color: Colors.black),
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          faq.expand = !faq.expand;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20, left: 20),
                        child: Icon(Icons.arrow_drop_down_circle_outlined),
                      ),
                    ),
                  ],
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
