import 'package:flutter/material.dart';
import 'package:refercare/core/_constants/_colors.dart';
import 'package:refercare/core/_constants/_values.dart';
import 'package:refercare/core/models/todo/todo.dart';
import 'package:vrouter/vrouter.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Todo> _todos = [
    Todo(
      text:
          '[Brentwood Endodontics] Missing Tax Agency Account Number - Potential fees of \$200',
      completed: false,
      created: DateTime.now(),
    ),
    Todo(
      text:
          '[Action Required] Set up payroll deductions for Brentwood Endodontics.',
      completed: false,
      created: DateTime.now(),
    ),
    Todo(
      text: 'ReferCare Onboarding Flow',
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(
                vertical: 10.0,
              ),
              child: Text(
                'Single Sign On',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              width: Values.screenWidth,
              height: 50.0,
              decoration: decoration,
              child: Row(
                children: const [
                  VerticalDivider(
                    color: ConstColors.highlightGreen,
                    width: 4.0,
                    thickness: 4.0,
                  ),
                  SizedBox(
                    width: 12.0,
                  ),
                  SizedBox(
                    width: 475.0,
                    child: Text(
                      'Install an app that supports Single Sign On, and your employees will be able to sign in with one click from here.',
                      style: TextStyle(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              width: 750,
              padding: const EdgeInsets.only(
                top: 50.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 20.0),
                    child: Text(
                      'Hello, Dr. Saber',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                      ),
                    ),
                  ),
                  Container(
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(4.0),
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: const [
                            Text('Introducing ReferCare Unity'),
                          ],
                        ),
                        Column(
                            // children: const [],
                            )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      'Your To-Do List',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: _buildTodoItems(),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30.0),
                    child: Text(
                      'Apps',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      AppItem(
                        onClick: () {
                          context.vRouter.to('/authenticated/app-store');
                        },
                        title: 'Add New App',
                        imageName: 'assets/images/gear-icon.png',
                      ),
                      AppItem(
                        onClick: () {
                          context.vRouter.to('/authenticated/payroll');
                        },
                        title: 'Payroll',
                        imageName: 'assets/images/gear-icon.png',
                      ),
                      AppItem(
                        onClick: () {
                          context.vRouter.to('/authenticated/reports');
                        },
                        title: 'Reports',
                        imageName: 'assets/images/gear-icon.png',
                      ),
                      AppItem(
                        onClick: () {},
                        title: 'HR',
                        imageName: 'assets/images/gear-icon.png',
                      ),
                      AppItem(
                        onClick: () {},
                        title: 'Accounting',
                        imageName: 'assets/images/gear-icon.png',
                      ),
                    ],
                  ),
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
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AppItem extends StatelessWidget {
  const AppItem({
    Key? key,
    required this.onClick,
    required this.title,
    required this.imageName,
  }) : super(key: key);

  final Function onClick;
  final String title;
  final String imageName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 30.0),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => onClick(),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  color: Colors.white,
                  child: Image.asset(
                    'assets/images/gear-icon.png',
                    height: 100.0,
                    width: 100.0,
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
      margin: const EdgeInsets.only(bottom: 15.0),
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
            fontSize: 14.0,
            fontWeight: FontWeight.w600,
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
