import 'package:flutter/material.dart';

class Favorite extends StatelessWidget {
  const Favorite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Resep Favorit".toUpperCase(),
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.w900))
          ],
        ),
      ),
      GridView.count(
        crossAxisCount: 2,
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 0.8,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            child: TextButton(
              onPressed: null,
              child: SizedBox(
                width: 175,
                height: 200,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomCenter,
                      width: 150,
                      height: 150,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.topCenter,
                            image: AssetImage("assets/images/banner.jpg"),
                            fit: BoxFit.cover),
                      ),
                      child: null,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'makanan\njawa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ]);
  }
}
