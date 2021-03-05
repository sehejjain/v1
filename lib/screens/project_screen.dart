import 'package:flutter/material.dart';

class ProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff8ebeed),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: size.height * 0.02,
            horizontal: size.width * 0.01,
          ),
          height: size.height,
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios,
                    ),
                  ),
                  Text(
                    'Projects',
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.05,
                height: 2,
                child: Container(
                  color: Colors.black54,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  ProjectBlock(
                    size: size,
                    heading: 'Quester',
                    desc:
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit, '
                        'sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                  ),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}

class ProjectBlock extends StatelessWidget {
  const ProjectBlock({
    Key key,
    @required this.size,
    @required this.desc,
    @required this.heading,
  }) : super(key: key);

  final Size size;
  final String heading;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size.height * 0.3,
      width: size.height * 0.3,
      child: Row(
        children: [
          SizedBox(
            height: size.height * 0.3,
            width: 8,
            child: Container(
              color: Colors.black54,
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                heading,
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 23,
                  fontWeight: FontWeight.w900,
                ),
              ),
              FittedBox(
                child: Container(
                  height: size.height * 0.2,
                  width: size.height * 0.25,
                  child: Text(
                    desc,
                    style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.open_in_new,
                    size: 30,
                    color: Colors.black54,
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
