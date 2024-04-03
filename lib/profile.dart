import 'package:flutter/material.dart';

void main() {
  runApp(Profile());
}

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text('오준석의 생존코딩'),
          actions: [
            IconButton(
              icon: Icon(Icons.camera_alt), // 카메라 모양의 아이콘
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('카메라가 열렸습니다!')),
                );
              },
            ),
          ],
        ),
        body: const ProfileWidget(),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.amberAccent,
          height: 200,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [


                Padding(
                  padding: const EdgeInsets.only(top: 32, bottom: 32),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/profile.jpg',
                          width: 150,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 205, bottom: 80),
                        child: Icon(Icons.edit),
                      ),
                      Column(


                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 48,
                            child: Text('오준석',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold)),
                          ),
                          const SizedBox(
                            height: 40,
                            child: Text('교육하고 책 쓰는 개발자',
                                style: TextStyle(fontSize: 20)),
                          ),
                          const SizedBox(
                            height: 48,
                            child: Text('대한민국 경기도 오산',
                                style: TextStyle(fontSize: 15)),
                          ),
                          SizedBox(
                            height: 48,
                            child: InkWell(
                              onTap: () {
                                // 링크를 열 수 있는 동작을 수행하도록 설정
                              },
                              child: Text(
                                'https://app.gather.town/app/GDjdFtzzyDsIetKC/ORM_Flutter_1',
                                style:
                                    TextStyle(fontSize: 15, color: Colors.blue),
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: SizedBox(
                              child: Text('학생수 35명 선생님 1명 운영진 1명',
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.blue)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
