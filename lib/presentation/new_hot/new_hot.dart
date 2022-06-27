import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix_app/core/colors/colors.dart';

class NewHot extends StatelessWidget {
  NewHot({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  void initState() {
    // TODO: implement initState
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
              backgroundColor: Colors.transparent,
              title: Text(title),
              bottom: TabBar(
                  indicator: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25)),
                  unselectedLabelColor: Colors.grey,
                  labelColor: Colors.black,
                  tabs: [
                    Tab(
                      text: '🍿Comming Soon',
                    ),
                    Tab(
                      text: '👀 Everyones Watching',
                    )
                  ]),
              actions: [
                IconButton(onPressed: () {}, icon: Icon(Icons.cast)),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(color: Colors.amber),
                )
              ]),
          body: TabBarView(children: [TbpageOne(), TbpageTwo()])),
    );
  }
}

class TbpageOne extends StatelessWidget {
  const TbpageOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: ((context, index) {
        return newhot(context);
      }),
      itemCount: 2,
    );
  }

  Row newhot(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width / 6,
          decoration: BoxDecoration(color: Colors.transparent),
          child: Text(
            'FEB\n 11',
            style: TextStyle(color: textColor, fontSize: 25),
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height / 1.5,
          width: MediaQuery.of(context).size.width -
              MediaQuery.of(context).size.width / 6,
          color: Colors.black,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width -
                    MediaQuery.of(context).size.width / 6,
                height: MediaQuery.of(context).size.height / 4.5,
                decoration: BoxDecoration(color: Colors.orange),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('TALLGIRL2',
                      style: TextStyle(
                        color: textColor,
                        fontSize: 25,
                      )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Icon(
                            Icons.notification_add_outlined,
                            color: textColor,
                          ),
                          Text(
                            'Remind Me',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: textColor,
                          ),
                          Text(
                            'Info',
                            style: TextStyle(color: textColor),
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              Text(
                'Tall Girl 2',
                style: TextStyle(
                  fontSize: 20,
                  color: textColor,
                ),
                textAlign: TextAlign.start,
              ),
              Text(
                'Landing the lead in the school musical is a dream come truefor jod,until the pressuresounds her confidence--and her relationship--into a dustpin',
                style: TextStyle(color: textColor, fontSize: 16),
              )
            ],
          ),
        )
      ],
    );
  }
}

class TbpageTwo extends StatelessWidget {
  const TbpageTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Friends',
          style: TextStyle(
              color: textColor, fontSize: 20, fontStyle: FontStyle.italic),
        ),
        Text(
          'This hit subccom follows the merry missadadventure of mix 20-somthing falls as they navigate the pitfalls of work,life and love in 1990s Manhattan',
          style: TextStyle(color: textColor),
        ),
        SizedBox(
          height: 100,
        ),
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(color: Colors.blueGrey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lost \n in \n space ',
              style: TextStyle(color: textColor, fontSize: 20),
            ),
            Row(
              children: [
                Column(
                  children: [
                    Icon(Icons.share_location, color: textColor),
                    Text(
                      'Share',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.add, color: textColor),
                    Text(
                      'MyList',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Icon(Icons.play_arrow, color: textColor),
                    Text(
                      'Play',
                      style: TextStyle(
                        color: textColor,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
