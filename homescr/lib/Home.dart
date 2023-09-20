import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String image =
      "https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/Flag_of_Pakistan.svg/1200px-Flag_of_Pakistan.svg.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:Colors.black38,
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: CircleAvatar(
                        radius: 35,
                        backgroundColor: Colors.white70,
                        child: ClipOval(
                          child: Image.network(
                            image,
                            width: 60,
                            height: 60,
                            fit: BoxFit.fill,
                          ),
                        )),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(onPressed: () {}, child: Text("Make Friends")),
                  OutlinedButton(
                      onPressed: () {}, child: Text("Search Friends")),
                ],
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: NetworkImage(
                      image,
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 16.0, top: 16.0), // Add left and top padding
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, // Align content to the left
                    children: [
                      Icon(
                        Icons.facebook,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: Colors.green,
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Card(
                          child: ListTile(
                              leading: CircleAvatar(
                                backgroundImage: NetworkImage(image),
                                radius: 20,
                              ),
                              textColor: Colors.white,
                              title: Text("Pakistan"),
                              subtitle: Text("Zindabad"),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                Icon(
                                  Icons.favorite_rounded,
                                  color: Colors.red,
                                ),
                                Icon(
                                  Icons.close_rounded,
                                  color: Colors.red,
                                ),
                              ])),
                          elevation: 8,
                          color: Colors.green,
                          shadowColor: Colors.lightGreen,
                          margin: EdgeInsets.all(20),
                          shape: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            // borderSide:
                            //     BorderSide(color: Colors.pink, width: 1)),
                          ))
                    ],
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
