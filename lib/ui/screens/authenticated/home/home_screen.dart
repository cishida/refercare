import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/core/models/todo/todo.dart';
import 'package:refercare/ui/screens/authenticated/home/components/graphs/collections_graph.dart';
import 'package:refercare/ui/screens/authenticated/home/components/graphs/collections_per_patient.dart';
import 'package:refercare/ui/screens/authenticated/home/components/graphs/patients_graph.dart';
import 'package:refercare/ui/screens/authenticated/home/components/graphs/referral_graph.dart';
import 'package:refercare/ui/screens/authenticated/home/components/onboarding/passive_onboarding.dart';
import 'package:refercare/ui/screens/authenticated/profile/profile_screen.dart';
import 'package:vrouter/vrouter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final BoxDecoration decoration = BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(4.0),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1,
          blurRadius: 2,
          offset: const Offset(
            0,
            2,
          ), // changes position of shadow
        ),
      ],
    );

    return Column(
      children: [
        Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              width: Values.screenWidth,
              child: PassiveOnboarding(),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 110.0,
                top: 40.0,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 50.0),
                      child: CollectionsGraph(),
                    ),
                  ),
                  TodoList(),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 110.0,
                top: 50.0,
                right: 400.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Reports Overview',
                    style: TextStyle(
                      fontSize: 32.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    width: 198.0,
                    margin: const EdgeInsets.only(
                      top: 10.0,
                      bottom: 14.0,
                    ),
                    padding: const EdgeInsets.symmetric(
                      vertical: 4.0,
                      horizontal: 12.0,
                    ),
                    decoration: BoxDecoration(
                      // color: ConstColors.lightGray,
                      // border: Border.all(
                      //   color: ConstColors.lightDivider,
                      // ),
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey[300]!,
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: const Offset(
                            0,
                            .5,
                          ),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Text(
                          'This month',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                        const SizedBox(
                          height: 25.0,
                          width: 20.0,
                          child: VerticalDivider(
                            color: ConstColors.divider,
                            width: 1.0,
                            thickness: 1.0,
                          ),
                        ),
                        Text(
                          'Jan 14 - Jan 21',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: const [
                      Expanded(
                        child: PatientsGraph(),
                      ),
                      Expanded(
                        child: CollectionsPerPatientGraph(),
                      ),
                      Expanded(
                        child: ReferralGraph(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //     const Padding(
            //       padding: EdgeInsets.symmetric(
            //         vertical: 10.0,
            //       ),
            //       child: Text(
            //         'Single Sign On',
            //         style: TextStyle(
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //     ),
            //     Container(
            //       width: Values.screenWidth,
            //       height: 50.0,
            //       decoration: decoration,
            //       child: Row(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: const [
            //           VerticalDivider(
            //             color: ConstColors.highlightGreen,
            //             width: 4.0,
            //             thickness: 4.0,
            //           ),
            //           Padding(
            //             padding: EdgeInsets.only(
            //               left: 12.0,
            //               right: 12.0,
            //               top: 7.0,
            //             ),
            //             child: Icon(
            //               Icons.info_outline,
            //               size: 22.0,
            //               color: ConstColors.highlightGreen,
            //             ),
            //           ),
            //           SizedBox(
            //             width: 475.0,
            //             child: Padding(
            //               padding: EdgeInsets.only(top: 7.0),
            //               child: Text(
            //                 'Install an app that supports Single Sign On, and your employees will be able to sign in with one click from here.',
            //                 style: TextStyle(),
            //               ),
            //             ),
            //           ),
            //         ],
            //       ),
            //     ),
            //   ],
            // ),
            // Column(
            //   children: [
            //     Container(
            //       width: 750,
            //       padding: const EdgeInsets.only(
            //         top: 30.0,
            //       ),
            //       child: Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           const Padding(
            //             padding: EdgeInsets.only(bottom: 20.0),
            //             child: Text(
            //               'Hello, Dr. Saber',
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w700,
            //                 fontSize: 32.0,
            //               ),
            //             ),
            //           ),
            //           Container(
            //             height: 160.0,
            //             width: 750,
            //             padding: const EdgeInsets.all(
            //               15.0,
            //             ),
            //             decoration: BoxDecoration(
            //               color: ConstColors.lightGreen,
            //               borderRadius: BorderRadius.circular(4.0),
            //               border: Border.all(
            //                 color: ConstColors.divider,
            //               ),
            //               boxShadow: [
            //                 BoxShadow(
            //                   color: Colors.grey.withOpacity(0.5),
            //                   spreadRadius: .5,
            //                   blurRadius: .5,
            //                   offset: const Offset(
            //                     0,
            //                     .5,
            //                   ), // changes position of shadow
            //                 ),
            //               ],
            //             ),
            //             child: Row(
            //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: [
            //                 SizedBox(
            //                   width: 500.0,
            //                   child: Column(
            //                     crossAxisAlignment: CrossAxisAlignment.start,
            //                     children: [
            //                       const Text(
            //                         'Introducing ReferCare Integrations',
            //                         style: TextStyle(
            //                           fontSize: 16.0,
            //                           fontWeight: FontWeight.w600,
            //                         ),
            //                       ),
            //                       const SizedBox(
            //                         height: 8.0,
            //                       ),
            //                       const Text(
            //                         'Four powerful new products: Unified Analytics, Role-Based Permissions, Policy Management, and Workflow Automator. Start using Workflow Automator today -- the rest will be available soon.',
            //                         style: TextStyle(
            //                           fontSize: 14.0,
            //                           fontWeight: FontWeight.w400,
            //                         ),
            //                       ),
            //                       Padding(
            //                         padding: const EdgeInsets.only(
            //                           top: 15.0,
            //                         ),
            //                         child: Row(
            //                           children: [
            //                             MouseRegion(
            //                               cursor: SystemMouseCursors.click,
            //                               child: GestureDetector(
            //                                 behavior: HitTestBehavior.opaque,
            //                                 onTap: () {
            //                                   showDialog<void>(
            //                                     context: context,
            //                                     builder: (context) =>
            //                                         const AlertDialog(
            //                                       content: Text('Register clicked'),
            //                                     ),
            //                                   );
            //                                 },
            //                                 child: Container(
            //                                   width: 147.0,
            //                                   height: 30.0,
            //                                   decoration: BoxDecoration(
            //                                     color: Colors.white,
            //                                     border: Border.all(
            //                                       color: Colors.grey,
            //                                     ),
            //                                   ),
            //                                   child: Padding(
            //                                     padding: const EdgeInsets.symmetric(
            //                                       horizontal: 8.0,
            //                                     ),
            //                                     child: Row(
            //                                       children: const [
            //                                         Text(
            //                                           'Register for training',
            //                                           style: TextStyle(
            //                                             fontSize: 15.0,
            //                                             fontWeight: FontWeight.w600,
            //                                             color: ConstColors.navGray,
            //                                           ),
            //                                         ),
            //                                       ],
            //                                     ),
            //                                   ),
            //                                 ),
            //                               ),
            //                             ),
            //                             const SizedBox(
            //                               width: 15.0,
            //                             ),
            //                             MouseRegion(
            //                               cursor: SystemMouseCursors.click,
            //                               child: GestureDetector(
            //                                 behavior: HitTestBehavior.opaque,
            //                                 onTap: () {
            //                                   showDialog<void>(
            //                                     context: context,
            //                                     builder: (context) =>
            //                                         const AlertDialog(
            //                                       content: Text('Try clicked'),
            //                                     ),
            //                                   );
            //                                 },
            //                                 child: Container(
            //                                   width: 180.0,
            //                                   height: 30.0,
            //                                   decoration: BoxDecoration(
            //                                     color: ConstColors.highlightGreen,
            //                                     border: Border.all(
            //                                       color: ConstColors.divider,
            //                                     ),
            //                                   ),
            //                                   child: const Center(
            //                                     child: Text(
            //                                       'Try Workflow Automator',
            //                                       style: TextStyle(
            //                                         fontSize: 15.0,
            //                                         fontWeight: FontWeight.w600,
            //                                         color: Colors.white,
            //                                       ),
            //                                     ),
            //                                   ),
            //                                 ),
            //                               ),
            //                             ),
            //                           ],
            //                         ),
            //                       ),
            //                     ],
            //                   ),
            //                 ),
            //                 const Padding(
            //                   padding: EdgeInsets.only(
            //                     top: 10.0,
            //                     right: 30.0,
            //                   ),
            //                   child: Icon(
            //                     Icons.add_chart,
            //                     size: 70.0,
            //                     color: ConstColors.navGray,
            //                   ),
            //                 ),
            //               ],
            //             ),
            //           ),
            //           const Padding(
            //             padding: EdgeInsets.symmetric(vertical: 25.0),
            //             child: Text(
            //               'Your To-Do List',
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w700,
            //                 fontSize: 16.0,
            //               ),
            //             ),
            //           ),
            //           Column(
            //             crossAxisAlignment: CrossAxisAlignment.start,
            //             children: _buildTodoItems(),
            //           ),
            //           const Padding(
            //             padding: EdgeInsets.only(top: 15.0, bottom: 25.0),
            //             child: Text(
            //               'Apps',
            //               style: TextStyle(
            //                 fontWeight: FontWeight.w700,
            //                 fontSize: 16.0,
            //               ),
            //             ),
            //           ),
            //           const Divider(
            //             height: 1.0,
            //             color: ConstColors.divider,
            //           ),
            //           Row(
            //             children: [
            //               AppItem(
            //                 onClick: () {
            //                   context.vRouter.to('/authenticated/app-store');
            //                 },
            //                 title: 'Add New App',
            //                 imageName: 'assets/images/add-icon.png',
            //                 imageColor: ConstColors.textGreen,
            //                 imageWidth: 40.0,
            //                 backgroundColor: Colors.white,
            //               ),
            //               AppItem(
            //                 onClick: () {
            //                   context.vRouter
            //                       .to('/authenticated/payroll/pay-stubs');
            //                 },
            //                 title: 'Payroll',
            //                 imageName:
            //                     'assets/images/placeholder_icons/payroll-icon-4.png',
            //                 imageColor: Colors.white,
            //                 imageWidth: 80.0,
            //               ),
            //               AppItem(
            //                 onClick: () {
            //                   context.vRouter.to('/authenticated/reports');
            //                 },
            //                 title: 'Reports',
            //                 imageName:
            //                     'assets/images/placeholder_icons/reports-icon-2.png',
            //                 imageColor: Colors.white,
            //                 imageWidth: 70.0,
            //               ),
            //               AppItem(
            //                 onClick: () {},
            //                 title: 'HR',
            //                 imageName:
            //                     'assets/images/placeholder_icons/hr-icon-1.png',
            //                 imageColor: Colors.white,
            //               ),
            //               AppItem(
            //                 onClick: () {},
            //                 title: 'Accounting',
            //                 imageName:
            //                     'assets/images/placeholder_icons/accounting-icon-2.png',
            //                 imageColor: Colors.white,
            //                 imageWidth: 70.0,
            //               ),
            //             ],
            //           ),
            // ListView.builder(
            //   shrinkWrap: true,
            //   physics: const NeverScrollableScrollPhysics(),
            //   itemCount: _todos.length,
            //   itemBuilder: (BuildContext context, int index) {
            //     return AnimationConfiguration.staggeredList(
            //       position: index,
            //       duration: const Duration(milliseconds: 250),
            //       child: SlideAnimation(
            //         verticalOffset: 50.0,
            //         child: FadeInAnimation(
            //           child: TodoItem(
            //             todo: _todos[index],
            //           ),
            //         ),
            //       ),
            //     );
            //   },
            // ),
            // ],
            // ),
            // ),
          ],
        ),
        // const SizedBox(
        //   height: 100.0,
        // ),
      ],
    );
  }
}

class TodoList extends StatelessWidget {
  TodoList({
    Key? key,
  }) : super(key: key);

  final List<Todo> _todos = [
    Todo(
      text:
          '[Brentwood Endodontics] Missing Tax Agency Account Number - Potential fees of \$200',
      completed: false,
      created: DateTime.now(),
    ),
    Todo(
      text:
          '[Action Required] Sign Business Associate Agreement with ReferCare',
      completed: false,
      created: DateTime.now(),
    ),
    Todo(
      text:
          '[Action Required] Employee Stacey Anderson missing payroll information',
      completed: false,
      created: DateTime.now(),
    ),
  ];

  List<Widget> _buildTodoItems() {
    final List<Widget> widgets = [];

    for (final todo in _todos) {
      widgets.add(
        TodoItem(todo: todo),
      );
    }

    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362.0,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: ConstColors.browseGray,
            height: 38.0,
            width: 361.0,
            padding: const EdgeInsets.all(
              10.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: ConstColors.lightDivider,
                  child: const Text(
                    'Your To-do List',
                    style: TextStyle(
                      // fontSize: 17.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: _buildTodoItems(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
    required this.onClick,
    required this.title,
    required this.imageName,
    this.imageColor,
    this.imageWidth,
    this.backgroundColor = ConstColors.textGreen,
  }) : super(key: key);

  final Function onClick;
  final String title;
  final String imageName;
  final Color? imageColor;
  final double? imageWidth;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: InkWell(
          onTap: () => onClick(),
          onHover: (isHovering) {},
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: backgroundColor,
                      border: Border.all(
                        color: ConstColors.divider,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Center(
                      child: Image.asset(
                        imageName,
                        width: imageWidth ?? 100.0,
                        color: imageColor,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TodoItem extends StatefulWidget {
  const TodoItem({
    Key? key,
    required this.todo,
  }) : super(key: key);

  final Todo todo;

  @override
  State<TodoItem> createState() => _TodoItemState();
}

class _TodoItemState extends State<TodoItem> {
  bool _checkedValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: ConstColors.lightGreen,
      margin: const EdgeInsets.only(bottom: 5.0),
      child: CheckboxListTile(
        tileColor: Colors.white,
        checkColor: Colors.white,
        activeColor: ConstColors.highlightGreen,
        shape: const RoundedRectangleBorder(
          side: BorderSide(
            color: ConstColors.divider,
          ),
        ),
        title: Text(
          widget.todo.text!,
          style: const TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        value: _checkedValue,
        onChanged: (newValue) {
          if (newValue == null) {
            return;
          }
          setState(() {
            _checkedValue = newValue;
          });
          // widget.todo = widget.todo.copyWith(completed: newValue);
        },
        controlAffinity:
            ListTileControlAffinity.leading, //  <-- leading Checkbox
      ),
    );
    // return Container(
    //   color: ConstColors.lightGreen,
    //   padding: const EdgeInsets.all(16.0),
    //   margin: const EdgeInsets.only(bottom: 10.0),
    //   child: Row(
    //     children: [
    //       Text(
    //         todo.text!,
    //       ),
    //     ],
    //   ),
    // );
  }
}
