import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/ui/screens/authenticated/home/components/home_feed/components/home_feed_item.dart';

class HomeFeed extends StatelessWidget {
  HomeFeed({Key? key}) : super(key: key);

  final List<FeedItem> _feedItems = [
    FeedItem(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      type: 'network_request',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_form',
      patientName: 'Sarah Turner',
      created: 'Today, 8:52AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_report',
      patientName: 'John Hughes',
      created: 'Yesterday, 7:30PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "It's the referral report for Alex English. Can you send it through if you have it?",
      created: 'Yesterday, 6:13PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "Hi we're missing some information about a patient we referred to you.",
      created: 'Yesterday, 6:11PM',
    ),
    FeedItem(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      type: 'network_request',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_form',
      patientName: 'Sarah Turner',
      created: 'Today, 8:52AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_report',
      patientName: 'John Hughes',
      created: 'Yesterday, 7:30PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "It's the referral report for Alex English. Can you send it through if you have it?",
      created: 'Yesterday, 6:13PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "Hi we're missing some information about a patient we referred to you.",
      created: 'Yesterday, 6:11PM',
    ),
    FeedItem(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      type: 'network_request',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_form',
      patientName: 'Sarah Turner',
      created: 'Today, 8:52AM',
    ),
    FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_report',
      patientName: 'John Hughes',
      created: 'Yesterday, 7:30PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "It's the referral report for Alex English. Can you send it through if you have it?",
      created: 'Yesterday, 6:13PM',
    ),
    FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "Hi we're missing some information about a patient we referred to you.",
      created: 'Yesterday, 6:11PM',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: AnimationLimiter(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _feedItems.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 250),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: HomeFeedItem(
                      feedItem: _feedItems[index],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),

      // ListView.builder(
      //   itemCount: _feedItems.length,
      //   itemBuilder: (context, index) {
      //     return HomeFeedItem(
      //       feedItem: _feedItems[index],
      //     );
      //   },
      // ),
    );
  }
}
