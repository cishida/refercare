import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/styled_widgets/chip_button.dart';

class HomeFeed extends StatelessWidget {
  HomeFeed({Key? key}) : super(key: key);

  final List<_FeedItem> _feedItems = [
    _FeedItem(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      type: 'network_request',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
    _FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_form',
      patientName: 'Sarah Turner',
      created: 'Today, 8:52AM',
    ),
    _FeedItem(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      type: 'referral_report',
      patientName: 'John Hughes',
      created: 'Yesterday, 7:30PM',
    ),
    _FeedItem(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      type: 'message',
      message:
          "It's the referral report for Alex English. Can you send it through if you have it?",
      created: 'Yesterday, 6:13PM',
    ),
    _FeedItem(
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
      child: ListView.builder(
        itemCount: _feedItems.length,
        itemBuilder: (context, index) {
          return HomeFeedItem(
            feedItem: _feedItems[index],
          );
        },
      ),
    );
  }
}

class HomeFeedItem extends StatelessWidget {
  const HomeFeedItem({
    Key? key,
    required _FeedItem feedItem,
  })  : _feedItem = feedItem,
        super(key: key);

  final _FeedItem _feedItem;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(
            20.0,
            12.0,
            24.0,
            16.0,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  right: 12.0,
                  top: 3.0,
                ),
                child: Image.asset(
                  'assets/images/empty-user-photo.png',
                  width: 42.0,
                  color: ConstColors.divider,
                  filterQuality: FilterQuality.high,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    _feedItem.name,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${_feedItem.dentalFocus} at ${_feedItem.org}',
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w400,
                        color: Colors.black.withOpacity(.6),
                      ),
                    ),
                  ),
                  if (_feedItem.message != null)
                    Text(
                      '"${_feedItem.message!}"',
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  if (_feedItem.type == 'network_request')
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 13.0,
                            bottom: 17.0,
                          ),
                          child: Row(
                            children: [
                              ChipButton(
                                text: 'Confirm',
                                backgroundColor: ConstColors.primary,
                                textColor: Colors.white,
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 17.0,
                                  vertical: 7.0,
                                ),
                                onPressed: () {},
                              ),
                              ChipButton(
                                text: 'Ignore',
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 17.0,
                                  vertical: 7.0,
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          '*Confirm for HIPAA-compliant messaging, file-sharing, and referrals.',
                          style: TextStyle(
                            fontSize: 12.0,
                            color: ConstColors.offBlack,
                          ),
                        ),
                      ],
                    ),
                  if (_feedItem.type == 'referral_form' &&
                      _feedItem.patientName != null)
                    Text(
                      'Referral Form - ${_feedItem.patientName!}',
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (_feedItem.type == 'referral_report' &&
                      _feedItem.patientName != null)
                    Text(
                      'Referral Report - ${_feedItem.patientName!}',
                      style: const TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  if (_feedItem.type == 'message')
                    const Padding(
                      padding: EdgeInsets.only(top: 5.0),
                      child: Text(
                        'View Conversation',
                        style: TextStyle(
                          fontSize: 13.0,
                          fontWeight: FontWeight.w700,
                          color: ConstColors.primary,
                        ),
                      ),
                    ),
                ],
              ),
              const Spacer(),
              Text(
                _feedItem.created,
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w400,
                  color: Colors.black.withOpacity(.8),
                ),
              ),
            ],
          ),
        ),
        const Divider(
          height: 1.0,
          color: ConstColors.divider,
        ),
      ],
    );
  }
}

class _FeedItem {
  _FeedItem({
    required this.name,
    required this.dentalFocus,
    required this.org,
    required this.type,
    required this.created,
    this.message,
    this.patientName,
  });

  final String name;
  final String dentalFocus;
  final String org;
  final String type;
  final String created;
  final String? message;
  final String? patientName;
}
