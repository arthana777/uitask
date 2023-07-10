import 'package:ecommerceui/view/workspace.dart';
import 'package:flutter/material.dart';



class ProductGrid extends StatelessWidget {



  List<String> imageShow = [
    "https://www.stylesgap.com/wp-content/uploads/2015/09/Latest-Maxi-Style-Anarkali-Dresses-Frocks-Designs-2015-2016-7.jpg",
    "https://th.bing.com/th/id/OIP.YMdL7A1Cp9o1TmepzTaaDgHaKt?pid=ImgDet&w=1000&h=1447&rs=1",
    "https://th.bing.com/th/id/R.24941ca7075cff3b1ae5a85307ac0143?rik=KcEJIf0iGE29%2fQ&riu=http%3a%2f%2fwww.kollybollyethnics.com%2fimage%2fmagictoolbox_cache%2f8c95d73fec130487c102a73bf1ab42ce%2f1%2f2%2f12858%2fthumb400x800%2f2333239710%2fShamita-shetty-teal-georgette-ankle-length-anarkali-suit-8342.jpg&ehk=5DSw1u4ZS7rVoZoyz0hGgkUzVFCr8kVmf%2f6YtHHwzhk%3d&risl=&pid=ImgRaw&r=0",
    "https://www.99sarees.com/images/Products/original/SB62_PV2_5455.jpg",
    "https://i.pinimg.com/736x/69/54/af/6954aff675d8df9b2ac63cd0777e97ab--gold-gown-blue-gold.jpg"
  ];

  List<String> dressNames = [  "Bodycon Dress",  "Pencil Dress",  "Sheath Dress",  "Peplum Dress",  "Tunic Dress"];


  List<int> ProductsPrice = [155, 788, 454, 100, 799];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return   GridView.count(
      shrinkWrap: true,
      crossAxisCount: 2,
      childAspectRatio: .6,
      physics: const NeverScrollableScrollPhysics(),
      children: List.generate(
        5,
            (index) => GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Product_Detals(
                    imageShow[index],
                    dressNames[index],
                    ProductsPrice[index],

                    // Pass colour as a list with a single element
                  ),
                ));
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height * 0.01,
              horizontal: MediaQuery.of(context).size.width * 0.03,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white60,
                border: Border.all(
                  color: Colors.white,
                ),
              ),
              child: Column(
                children: [
                  Expanded(
                      flex: 2,
                      child: Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                    Colors.grey.withOpacity(0.3),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: Offset(0,
                                        3), // horizontal, vertical offset
                                  ),
                                ],
                                borderRadius:
                                BorderRadius.circular(20),
                                image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        imageShow[index])),
                              ),
                            ),
                          ),

                        ],
                      )),
                  Expanded(
                    flex: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                      ),
                      height: screenHeight * 0.07,
                      width: screenWidth * 0.9,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: screenHeight * 0.01,
                          horizontal: screenWidth * 0.01,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "${dressNames[index]}",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Text(
                              "BUY SPOT",
                              style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black54),
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Row(
                              mainAxisAlignment:
                              MainAxisAlignment.center,
                              children: [

                                Text(
                                  '(₹ ${ProductsPrice[index]})',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.red,

                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Product_Detals extends StatefulWidget {
  final String imagesData;
  final String productsName;
  final int productPrice;

  Product_Detals(this.imagesData, this.productsName, this.productPrice,
      );

  @override
  State<Product_Detals> createState() => _Product_DetalsState();
}

class _Product_DetalsState extends State<Product_Detals> {
  int _quantity = 1;

  void _handleQuantityChanged(int value) {
    setState(() {
      _quantity = value;
    });
  }

  int tim = 0;
  List<String> imageShow = [
    "https://www.stylesgap.com/wp-content/uploads/2015/09/Latest-Maxi-Style-Anarkali-Dresses-Frocks-Designs-2015-2016-7.jpg",
    "https://th.bing.com/th/id/OIP.YMdL7A1Cp9o1TmepzTaaDgHaKt?pid=ImgDet&w=1000&h=1447&rs=1",
    "https://th.bing.com/th/id/R.24941ca7075cff3b1ae5a85307ac0143?rik=KcEJIf0iGE29%2fQ&riu=http%3a%2f%2fwww.kollybollyethnics.com%2fimage%2fmagictoolbox_cache%2f8c95d73fec130487c102a73bf1ab42ce%2f1%2f2%2f12858%2fthumb400x800%2f2333239710%2fShamita-shetty-teal-georgette-ankle-length-anarkali-suit-8342.jpg&ehk=5DSw1u4ZS7rVoZoyz0hGgkUzVFCr8kVmf%2f6YtHHwzhk%3d&risl=&pid=ImgRaw&r=0",
    "https://www.99sarees.com/images/Products/original/SB62_PV2_5455.jpg",
    "https://i.pinimg.com/736x/69/54/af/6954aff675d8df9b2ac63cd0777e97ab--gold-gown-blue-gold.jpg"
  ];

  List<String> ProductsName = [
    "Drees one",
    "Drees two",
    "Drees three",
    "Drees four",
    "Drees five"
  ];

  List<int> ProductsPrice = [155, 788, 454, 100, 799];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var screenHeight = screenSize.height;
    var screenWidth = screenSize.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        alignment: Alignment.topCenter,
                        height: screenHeight / 1.7,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(widget.imagesData),
                          ),
                          color: Colors.black54,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Icon(
                                        Icons.arrow_back_ios,
                                        size: 15,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: screenHeight * 0.01,
                              ),

                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    right: 10,
                    left: 10,
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "${widget.productsName}",
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black54,
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              "${widget.productsName}",
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Column(
                                  children: [
                                   Text(widget.productPrice.toString())
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: screenHeight * 0.01),
                            Text(
                              "Size",
                              style: TextStyle(
                                color: Colors.black54,
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: screenHeight * 0.02),
                            SizedBox(
                              height: screenHeight * 0.015,
                            ),
                            Divider(),
                            SizedBox(
                              height: screenHeight * 0.015,
                            ),
                            Divider(),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Container(
                                height: screenHeight * 0.1,
                                decoration: BoxDecoration(color: Colors.white10),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.local_shipping,
                                                color: Colors.black54),
                                            SizedBox(height: 4.0),
                                            Text("Free Delivery",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.monetization_on_outlined,
                                                color: Colors.black54),
                                            SizedBox(height: 4.0),
                                            Text("Pay on Delivery",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 16.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.autorenew,
                                                color: Colors.black54),
                                            SizedBox(height: 4.0),
                                            Text("7-Day Replacement",
                                                style: TextStyle(
                                                    color: Colors.black54,
                                                    fontWeight: FontWeight.bold)),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(right: 0.0),
                                        child: Column(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Icon(Icons.lock_outline,
                                                color: Colors.black54),
                                            SizedBox(height: 4.0),
                                            Text(
                                              "Secure Transaction",
                                              style: TextStyle(
                                                  color: Colors.black54,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.015,
                            ),
                            Divider(),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.local_offer_outlined,
                                  color: Colors.black54,
                                ),
                                SizedBox(
                                  width: screenWidth * 0.015,
                                ),
                                Text(
                                  "OFFER & DISCOUNTS",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                )
                              ],
                            ),
                            SizedBox(
                              height: screenHeight * 0.01,
                            ),
                            Container(
                              height: screenHeight * 0.15,
                              width: screenWidth * 5,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 5,
                                    offset:
                                    Offset(0, 2), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      "DELIVERY OFFER",
                                      style: TextStyle(
                                        fontSize: 15,
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                    SizedBox(
                                      height: screenHeight * 0.01,
                                    ),
                                    Text(
                                      "Free Delivery on your first order",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    Text(
                                      "Free delivery on orders over Rs. 500",
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Divider(),
                            Text(
                              "You Might Also Like",
                              style: TextStyle(
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.015,
                            ),
                            GridView.count(
                              shrinkWrap: true,
                              crossAxisCount: 2,
                              childAspectRatio: .6,
                              physics: const NeverScrollableScrollPhysics(),
                              children: List.generate(
                                5,
                                    (index) => GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => Product_Detals(
                                            imageShow[index],
                                            ProductsName[index],
                                            ProductsPrice[index],

                                            // Pass colour as a list with a single element
                                          ),
                                        ));
                                  },
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                      vertical:
                                      MediaQuery.of(context).size.height * 0.01,
                                      horizontal:
                                      MediaQuery.of(context).size.width * 0.03,
                                    ),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white60,
                                        border: Border.all(
                                          color: Colors.white,
                                        ),
                                      ),
                                      child: Column(
                                        children: [
                                          Expanded(
                                              flex: 2,
                                              child: Stack(
                                                children: [
                                                  Padding(
                                                    padding:
                                                    const EdgeInsets.all(8.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey
                                                                .withOpacity(0.3),
                                                            spreadRadius: 1,
                                                            blurRadius: 5,
                                                            offset: Offset(0,
                                                                3), // horizontal, vertical offset
                                                          ),
                                                        ],
                                                        borderRadius:
                                                        BorderRadius.circular(
                                                            20),
                                                        image: DecorationImage(
                                                            fit: BoxFit.fill,
                                                            image: NetworkImage(
                                                                imageShow[index])),
                                                      ),
                                                    ),
                                                  ),

                                                ],
                                              )),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              decoration: BoxDecoration(
                                                color: Colors.transparent,
                                              ),
                                              height: screenHeight * 0.07,
                                              width: screenWidth * 0.9,
                                              child: Padding(
                                                padding: EdgeInsets.symmetric(
                                                  vertical: screenHeight * 0.01,
                                                  horizontal: screenWidth * 0.01,
                                                ),
                                                child: Column(
                                                  children: [
                                                    Text(
                                                      "${ProductsName[index]}",
                                                      style: TextStyle(
                                                          fontSize: 15,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          color: Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: screenHeight * 0.01,
                                                    ),
                                                    Text(
                                                      "BUY SPOT",
                                                      style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                          FontWeight.bold,
                                                          color: Colors.black54),
                                                    ),
                                                    SizedBox(
                                                      height: screenHeight * 0.01,
                                                    ),
                                                    Row(
                                                      mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                      children: [


                                                        Text(
                                                          '(₹ ${ProductsPrice[index]})',
                                                          style: TextStyle(
                                                            fontSize: 12,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            color: Colors.red,
                                                            decoration:
                                                            TextDecoration
                                                                .lineThrough,
                                                          ),
                                                        ),
                                                      ],
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: screenHeight * 0.02,
                            ),
                            Divider(
                              thickness: 3,
                            ),
                            Container(
                              padding: EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.05),
                                    blurRadius: 6,
                                    offset: Offset(0, 2),
                                  ),
                                ],
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Terms and Conditions",
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    "Please read our terms and conditions carefully before using our app",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.black54,
                                    ),
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Store Location",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "123 Main St, City, State Zip Code",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: 16),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.support_agent,
                                        color: Colors.black54,
                                      ),
                                      SizedBox(width: 8),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Customer Support",
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.black54,
                                            ),
                                          ),
                                          SizedBox(height: 4),
                                          Text(
                                            "E-mail : buyspot@gmail.com",
                                            style: TextStyle(
                                              fontSize: 16,
                                              color: Colors.black54,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
        ),
        child: ElevatedButton(
          onPressed: () {

          },
          child: Text(
            "Checkout",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.teal),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

        },
        backgroundColor: Colors.yellow,
        elevation: 3,
        shape: CircleBorder(),
        mini: true,
        child: Icon(
          Icons.shopping_cart,
          size: 20,
        ),
      ),
    );
  }
}