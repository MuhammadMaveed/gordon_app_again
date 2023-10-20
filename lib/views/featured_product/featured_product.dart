import 'package:flutter/material.dart';

import '../../consts/images.dart';
import '../../customs_widgets/text.dart';

class FeaturedProduct extends StatefulWidget {
  const FeaturedProduct({super.key});

  @override
  State<FeaturedProduct> createState() => _FeaturedProductState();
}

class _FeaturedProductState extends State<FeaturedProduct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios),
        title: Text("Featured Product", style: TextStyle(color: Colors.black)),
      ),
      body: Container(
        color: Colors.grey[200],
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: 10,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 15,
                      crossAxisSpacing: 10,
                      mainAxisExtent: 242,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 150,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: AssetImage(Grid_img),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            OurText(
                              text: "Coffee Chair",
                              fontBold: FontWeight.bold,
                              fontSize: 14,
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            OurText(
                              text: "Rp. 1.500.000",
                              fontBold: FontWeight.bold,
                              fontSize: 12,
                              textColor: Color(0xff3669C9),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 20,
                                ),
                                OurText(
                                  text: "4.6",
                                  fontSize: 12,
                                  fontBold: FontWeight.bold,
                                ),
                                Spacer(),
                                OurText(
                                  text: "86 Reviews",
                                  fontSize: 12,
                                  fontBold: FontWeight.bold,
                                ),
                                Spacer(),
                                Icon(
                                  size: 20,
                                  Icons.more_vert,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
