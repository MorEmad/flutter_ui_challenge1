import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'data/my_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1E1E1E),
      body: Column(
        children: [
          drawe_header(),
          details_movie(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Text(
                      "Schedule",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    Text(
                      "Synopsis",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.6), fontSize: 20),
                    ),
                  ],
                ),
                myDevider1(context),
                listView_of_days(),
                MySelectCinema(),
                BottomButton()
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container BottomButton() {
    return Container(
                margin: EdgeInsets.only(top: 48),
                height:56,
                width: double.infinity,
                color: const Color(0xff251977),
                child: const Center(
                  child: Text(
                    "Take a seat",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500,color: Colors.white),
                  ),
                ),
              );
  }

  Padding myDevider1(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4,bottom: 16,left: 16,right: 16),
      child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 2,
                      color: Colors.white.withOpacity(0.6),
                    ),
                    Container(
                      height: 3,
                      width: MediaQuery.of(context).size.width * 0.5,
                      color: const Color(0xff251977),
                    ),
                  ],
                ),
    );
  }

  // ignore: non_constant_identifier_names
  SizedBox listview_of_time() {
    return SizedBox(
      height: 50,
      width: 500,
      child: ListView.separated(
        separatorBuilder: (context, _) => const SizedBox(
          width: 8,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: ListCardTime.length,
        itemBuilder: (BuildContext context, int index) => card_of_time(
          ListCardTime[index].txt1,
          ListCardTime[index].txt2,
          ListCardTime[index].mycolor,
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container card_of_time(String txt1, String txt2, Color mycolor) {
    return Container(
      width: 108,
      height: 48,
      color: mycolor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Text(
          txt1,
          style: TextStyle(
              color: Colors.white.withOpacity(0.6),
              fontSize: 15,
              fontWeight: FontWeight.bold),
        ),
        Text(
          txt2,
          style: TextStyle(color: Colors.white.withOpacity(0.6), fontSize: 10),
        ),
      ]),
    );
  }

  // ignore: non_constant_identifier_names
  Container listView_of_days() {
    return Container(
      margin: EdgeInsets.only(left: 16,right: 16),
      height: 50,
      width: 500,
      child: ListView.separated(
        separatorBuilder: (context, _) => const SizedBox(
          width: 12,
        ),
        scrollDirection: Axis.horizontal,
        itemCount: days.length,
        itemBuilder: (BuildContext context, int index) => card_of_days(
            days[index].Month,
            days[index].dayInMon,
            days[index].dayInWeek,
            days[index].color),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Container card_of_days(
      // ignore: non_constant_identifier_names
      String Month,
      String dayInMon,
      String dayInWeek,
      // ignore: non_constant_identifier_names
      Color MyColor) {
    return Container(
      height: 48,
      width: 48,
      color: MyColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$dayInMon $Month",
            style: const TextStyle(color: Colors.white, fontSize: 12),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            dayInWeek,
            style: const TextStyle(color: Colors.white, fontSize: 15),
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding details_movie() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
      child: Row(
        children: [
          Image.asset(
            "assets/images/image4.png",
            height: 173,
            width: 103,
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "Director",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Writter",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Duration",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Rating",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
          SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                ": Kimo Stamboel",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                ": Joko Anwar",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                ": 1 hour 39 minute(s)",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                ": D (17+)",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Stack drawe_header() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 258,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/image 9.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 32, left: 32, top: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 24,
                    ),
                    SvgPicture.asset(
                      "assets/icons/love icon.svg",
                      height: 24,
                      width: 24,
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 32.0),
                  child: Text(
                    "RATU ILMU HITAM",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/star-icon.svg",
                        height: 15, width: 15),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "8,9 / 10 from IMDb",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Container(
                      height: 32,
                      width: 93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff38354B),
                      ),
                      child: Center(
                          child: Text(
                        "Horror",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 32,
                      width: 93,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color(0xff38354B),
                      ),
                      child: const Center(
                          child: Text(
                        "Drama",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        FractionalTranslation(
          translation: Offset(4.3, 3.4),
          child: Container(
            height: 67,
            width: 67,
            child: Stack(
              children: const [
                Icon(
                  Icons.play_circle,
                  color: Color(0xff251977),
                  size: 67,
                ),
                Center(
                    child: Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 40,
                )),
              ],
            ),
          ),
        ),
      ],
    );
  }
  Padding MySelectCinema(){
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 32, bottom: 16),
            child: Text(
              "Select Cinema",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Cinema XXI Ambarukmo Plaza",
                style: TextStyle(
                    color: Colors.white.withOpacity(0.85), fontSize: 15),
              ),
              Icon(
                Icons.keyboard_arrow_down,
                color: Colors.white.withOpacity(0.85),
              )
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 4, bottom: 8),
            width: 400,
            height: 2,
            color: Colors.white.withOpacity(0.6),
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "REGULAR 2D",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "Rp 30.000",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
              ]),
          listview_of_time(),
        ],
      ),
    );
  }
}



