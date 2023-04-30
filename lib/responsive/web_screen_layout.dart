import 'dart:convert';
import 'package:flutter/material.dart';

class WebScreen extends StatelessWidget {
  const WebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context).loadString('asset/data.json'),
        builder: (context, snapshot) {
          var data = jsonDecode(snapshot.data.toString());
          return Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        width: 640,
                        height: 380,
                        child: Container(
                          margin: const EdgeInsets.all(10.0),
                          padding: const EdgeInsets.all(20.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: const Color.fromARGB(255, 29, 27, 30),
                          ),
                          child: Column(
                            children: [
                              Text(
                                data['title'],
                                style: const TextStyle(
                                  fontSize: 60,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 100,
                                height: 40,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color:
                                      const Color.fromARGB(255, 131, 38, 253),
                                ),
                                child: const Text(
                                  'Hire Me ✋',
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 210,
                            height: 210,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 0, 195, 153),
                              ),
                              margin: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      data['experience'] + "+",
                                      style: const TextStyle(
                                          fontSize: 30,
                                          fontWeight: FontWeight.bold),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "Years Experience",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 210,
                            height: 210,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 255, 193, 60),
                              ),
                              margin: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      data['projects'] + "+",
                                      style: const TextStyle(
                                        fontSize: 30,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                    const Text(
                                      "Handled Projects",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ]),
                            ),
                          ),
                          SizedBox(
                            width: 210,
                            height: 210,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: const Color.fromARGB(255, 255, 109, 122),
                              ),
                              margin: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    data['clients'] + "+",
                                    style: const TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                  const Text(
                                    "Clients",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 700,
                            height: 80,
                            child: Container(
                                margin: const EdgeInsets.all(5.0),
                                padding: const EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: const Color.fromARGB(255, 29, 27, 30),
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      "Bim",
                                      style: TextStyle(
                                        color: Colors.grey[400],
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Text(
                                      "Graph",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20,
                                      ),
                                    ),
                                    const Spacer(),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.menu),
                                      color: Colors.white,
                                    )
                                  ],
                                )),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Column(
                            children: [
                              SizedBox(
                                child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(
                                    'asset/images/30.jpg',
                                    width: 200,
                                    height: 400,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              SizedBox(
                                width: 500,
                                child: Container(
                                  padding: const EdgeInsets.all(10.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 29, 27, 30),
                                  ),
                                  child: Row(
                                    children: [
                                      const Text("Name:"),
                                      const Spacer(),
                                      Text(data['name']),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 500,
                                height: 250,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color:
                                        const Color.fromARGB(255, 29, 27, 30),
                                  ),
                                  child: Row(
                                    children: [
                                      const Text("Based in:"),
                                      const Spacer(),
                                      Text(data['location']),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Column(
                                    children: const [
                                      IconButton(
                                        onPressed: null,
                                        icon: Icon(Icons.share),
                                      ),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  SizedBox(
                    width: 800,
                    height: 200,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 29, 27, 30),
                      ),
                      child: Row(
                        children: const [
                          Text(
                            "UI Portfolio",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          TextButton(
                            onPressed: null,
                            child: Text(
                              "See All",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 600,
                    height: 200,
                    child: Container(
                      margin: const EdgeInsets.all(10.0),
                      padding: const EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color.fromARGB(255, 29, 27, 30),
                      ),
                      child: Column(
                        children: [
                          Row(
                            children: const [
                              Text(
                                "About",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Spacer(),
                              TextButton(
                                onPressed: null,
                                child: Text(
                                  "Resume",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            data['about'],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
