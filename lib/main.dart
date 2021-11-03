import 'package:flutter/material.dart';

void main() {
  runApp(const AnimalsApp());
}

class AnimalsApp extends StatelessWidget {
  const AnimalsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'animals app',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String image =
      "https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg";
  String description = '"Lion" comes from Latin word: Leo';

  changePicture(String image, String description) {
    setState(() {
      this.image = image;
      this.description = description;
    });
  }

  Widget landscape() {
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image(
                  width: 300,
                  image: NetworkImage(image),
                ),
              ),
              const Padding(padding: EdgeInsets.all(10)),
              Container(
                width: 300,
                height: 50,
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        const Padding(padding: EdgeInsets.all(50)),
        Column(
          children: [
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 50),
                    child: ElevatedButton(
                      child: const Text("Lion"),
                      onPressed: () => changePicture(
                          "https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg",
                          '"Lion" comes from Latin word: Leo'),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 50),
                    child: ElevatedButton(
                      child: const Text("Cat"),
                      onPressed: () => changePicture(
                          "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
                          "cats like milk"),
                    ),
                  ),
                ),
              ],
            ),
            const Padding(padding: EdgeInsets.all(20)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 50),
                    child: ElevatedButton(
                      child: const Text("Wolf"),
                      onPressed: () => changePicture(
                        "https://earthjustice.org/sites/default/files/styles/image_800x600/public/graywolf_holly_kuchera_shutterstock.jpg?itok=Tge_KV5F",
                        "Wolf doesn't appear in circus",
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(25.0),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: ConstrainedBox(
                    constraints: const BoxConstraints.tightFor(height: 50),
                    child: ElevatedButton(
                      child: const Text("Llama"),
                      onPressed: () => changePicture(
                          "https://media.istockphoto.com/photos/alpaca-picture-id1201041782?k=20&m=1201041782&s=612x612&w=0&h=BFw2Papt7XKjTcLO-X-vpxxsVU8_IfHWS3mLenCVYFE=",
                          "Llamas live in Australia"),
                    ),
                  ),
                ),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget portrait() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Image(
            width: 300,
            image: NetworkImage(image),
          ),
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Container(
          width: 300,
          height: 50,
          decoration: const BoxDecoration(
            color: Colors.blue,
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Align(
            alignment: Alignment.center,
            child: Text(
              description,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
        const Padding(padding: EdgeInsets.all(50)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 50),
                child: ElevatedButton(
                  child: const Text("Lion"),
                  onPressed: () => changePicture(
                      "https://upload.wikimedia.org/wikipedia/commons/7/73/Lion_waiting_in_Namibia.jpg",
                      '"Lion" comes from Latin word: Leo'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 50),
                child: ElevatedButton(
                  child: const Text("Cat"),
                  onPressed: () => changePicture(
                      "https://static01.nyt.com/images/2021/09/14/science/07CAT-STRIPES/07CAT-STRIPES-mediumSquareAt3X-v2.jpg",
                      "cats like milk"),
                ),
              ),
            ),
          ],
        ),
        const Padding(padding: EdgeInsets.all(10)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 50),
                child: ElevatedButton(
                  child: const Text("Wolf"),
                  onPressed: () => changePicture(
                    "https://earthjustice.org/sites/default/files/styles/image_800x600/public/graywolf_holly_kuchera_shutterstock.jpg?itok=Tge_KV5F",
                    "Wolf doesn't appear in circus",
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(height: 50),
                child: ElevatedButton(
                  child: const Text("Llama"),
                  onPressed: () => changePicture(
                      "https://media.istockphoto.com/photos/alpaca-picture-id1201041782?k=20&m=1201041782&s=612x612&w=0&h=BFw2Papt7XKjTcLO-X-vpxxsVU8_IfHWS3mLenCVYFE=",
                      "Llamas live in Australia"),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Animals App'),
          centerTitle: true,
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.portrait) {
            return portrait();
          } else {
            return landscape();
          }
        }));
  }
}
