import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/ui/styled_widgets/chip_button.dart';

class HomeFeedItem extends StatelessWidget {
  const HomeFeedItem({
    Key? key,
    required FeedItem feedItem,
  })  : _feedItem = feedItem,
        super(key: key);

  final FeedItem _feedItem;

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

class FeedItem {
  FeedItem({
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
