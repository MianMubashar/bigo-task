import 'package:bigo_task/provider_class.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<ProviderClass>(context, listen: false).setList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0xFFe2edff),
                    Color(0xFFffffff),
                  ],
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(0.0, 1.0),
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
            ),
            padding: EdgeInsets.only(left: 20, right: 20,top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Location',
                          style: TextStyle(color: Colors.black38, fontSize: 13),
                        ),
                        Row(
                          children: [
                            Text(
                              'Warsaw',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(Icons.location_on_outlined),
                          ],
                        )
                      ],
                    ),
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          'https://www.incimages.com/uploaded_files/image/1920x1080/char-beck-235051_258616.jpg'),
                    )
                  ],
                ),
                SizedBox(height: 30,),
                Text(
                  'What do you want?',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),

                Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            hintText: 'Search'),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(20),
                      //margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.black12,
                          borderRadius: BorderRadius.circular(15)),

                      child: Icon(Icons.filter_list_rounded),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.shopping_bag,
                            color: Colors.blue,
                          ),
                          Text('Buy', style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.photo_size_select_large,
                            color: Colors.blue,
                          ),
                          Text('Sell', style: TextStyle(color: Colors.black)),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.black12,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      onPressed: () {},
                      child: Row(
                        children: [
                          Icon(
                            Icons.car_rental,
                            color: Colors.blue,
                          ),
                          Text(
                            'Rent',
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const Text(
                  'Home For Sale Near You',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 210,
                  child: ListView1(),
                ),
                Text(
                  'Trending',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 210,
                  child: ListView2(),
                ),
                // Container(
                //   height: 210,
                //   child: ListView1(),
                // )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class ListView1 extends StatelessWidget {
  const ListView1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, snapshot) {
          return ListTileForHomeSaleNearYou(context);
        });
  }

  Widget ListTileForHomeSaleNearYou(context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: size.height * 0.28,
            width: size.width * 0.48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

              //color: Colors.green,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    'https://weblogue.net/wp-content/uploads/2021/01/10-Sites-to-Find-Free-Images-Without-Copyright.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$499,000',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '3 hours ago',
                        style: TextStyle(color: Colors.black54, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black54,
                      size: 15,
                    ),
                    Text(
                      'Johar town lahore',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.photo_size_select_large_outlined,
                          size: 13,
                          color: Colors.black54,
                        ),
                        Text(
                          '1,618 ft',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.add_shopping_cart,
                                size: 13,
                                color: Colors.black54,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_shopping_cart,
                                size: 13,
                                color: Colors.black54,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: 123,
            top: 20,
            child: Container(
              height: 35,
              width: 35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Center(
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.live_tv,color: Colors.black38,),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }




}
//ListView2
class ListView2 extends StatelessWidget {
  const ListView2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, snapshot) {
          return ListTileForTrending(context);
        });
  }
  Widget ListTileForTrending(context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.all(10),
      child: Stack(
        fit: StackFit.loose,
        children: [
          Container(
            height: size.height * 0.28,
            width: size.width * 0.48,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),

              //color: Colors.green,
            ),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  child: Image.network(
                    'https://weblogue.net/wp-content/uploads/2021/01/10-Sites-to-Find-Free-Images-Without-Copyright.jpg',
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(7),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        '\$499,000',
                        style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '3 hours ago',
                        style: TextStyle(color: Colors.black54, fontSize: 8),
                      )
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: Colors.black54,
                      size: 15,
                    ),
                    Text(
                      'Johar town lahore',
                      style: TextStyle(fontSize: 12, color: Colors.black54),
                    )
                  ],
                ),
                Divider(
                  color: Colors.black38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.photo_size_select_large_outlined,
                          size: 13,
                          color: Colors.black54,
                        ),
                        Text(
                          '1,618 ft',
                          style: TextStyle(fontSize: 12, color: Colors.black54),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.add_shopping_cart,
                                size: 13,
                                color: Colors.black54,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.remove_shopping_cart,
                                size: 13,
                                color: Colors.black54,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                    fontSize: 12, color: Colors.black54),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}