import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:refercare/ui/screens/authenticated/messages/components/conversation_list_item.dart';

class ConversationsView extends StatefulWidget {
  const ConversationsView({Key? key}) : super(key: key);

  @override
  State<ConversationsView> createState() => _ConversationsViewState();
}

class _ConversationsViewState extends State<ConversationsView> {
  int _selectedIndex = 0;

  final List<ConversationListItemModel> _items = [
    ConversationListItemModel(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
    ConversationListItemModel(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 8:52AM',
    ),
    ConversationListItemModel(
      name: 'Dr. Jason Aster',
      dentalFocus: 'Oral Surgeon',
      org: 'Beverly Hills Oral and Maxillofacial Surgery',
      message: "I'd like to add you to my dental network.",
      created: 'Yesterday, 7:30PM',
    ),
    ConversationListItemModel(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      message:
          "It's the referral report for Alex English. Can you send it through if you have it?",
      created: 'Yesterday, 6:13PM',
    ),
    ConversationListItemModel(
      name: 'Ashley Robinson, DDS',
      dentalFocus: 'General Dentist',
      org: 'Marina del Rey Dental Associates',
      message:
          "Hi we're missing some information about a patient we referred to you.",
      created: 'Yesterday, 6:11PM',
    ),
    ConversationListItemModel(
      name: 'Nicholas Wong, DDS',
      dentalFocus: 'General Dentist',
      org: 'Santa Monica Dental Partners',
      message: "I'd like to add you to my dental network.",
      created: 'Today, 9:41AM',
    ),
  ];

  void _selectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: SingleChildScrollView(
        child: AnimationLimiter(
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: _items.length,
            itemBuilder: (BuildContext context, int index) {
              return AnimationConfiguration.staggeredList(
                position: index,
                duration: const Duration(milliseconds: 300),
                child: SlideAnimation(
                  verticalOffset: 50.0,
                  child: FadeInAnimation(
                    child: GestureDetector(
                      onTap: () => _selectItem(index),
                      child: ConversationListItem(
                        item: _items[index],
                        selected: index == _selectedIndex,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
