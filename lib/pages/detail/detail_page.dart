import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '';
import 'package:shoes_app/resources/resources.dart';

import '../pages.dart';

class DetailPage extends StatefulWidget {
  final String name;
  final String image;
  final String money;
  final String description;
  final int id;
  final String status;
  final List imageList;

  const DetailPage({
    required this.name,
    required this.image,
    required this.description,
    required this.money,
    required this.id,
    required this.status,
    required this.imageList,
  });

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int numberOfProduct = 0;
  int numberOfSize = 37;

  addProductToCart(){
    Map<String,dynamic>data = {
      "image": widget.image,
      "name": widget.name,
      "money": (double.parse(widget.money) * numberOfProduct),
    };
    FirebaseFirestore.instance.collection('cart').add(data);
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.pinkColor.shade300,
      ),
      body: Container(
        height: size.height,
        color: ColorResources.whiteColor,
        child: SingleChildScrollView(
          padding: UIHelpers.paddingAll14,
          child: Column(
            children: [
              Container(
                height: Dimens.size940,
                width: size.width,
                color: ColorResources.whiteColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: Dimens.size400,
                      width: Dimens.size400,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            widget.image,
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.circular(Dimens.size22),
                        border: Border.all(
                          color: ColorResources.greyColor.shade200,
                          width: Dimens.size1,
                        ),
                      ),
                    ),
                    StreamBuilder(builder: (BuildContext context,
                        AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                            snapshot) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        height: Dimens.size140,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: widget.imageList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ZoomPage(
                                    image: widget.imageList[index],
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: Dimens.size14,
                                    top: Dimens.size14,
                                    bottom: Dimens.size14),
                                child: Container(
                                  width: Dimens.size120,
                                  height: Dimens.size120,
                                  decoration: BoxDecoration(
                                    color: ColorResources.greyColor.shade100,
                                    border: Border.all(
                                      color: ColorResources.greyColor.shade200,
                                      width: Dimens.size1,
                                    ),
                                    borderRadius:
                                        BorderRadius.circular(Dimens.size26),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        widget.imageList[index],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      );
                    }),
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            widget.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: Dimens.size16,
                            ),
                          ),
                          Text(
                            widget.money + '00.000 VNĐ',
                            style: TextStyle(
                              fontSize: Dimens.size16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(
                        Dimens.size14,
                      ),
                      child: Container(
                        width: size.width,
                        height: Dimens.size30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Row(
                                children: [
                                  Text(
                                    'Tổng: ',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: Dimens.size16,
                                    ),
                                  ),
                                  numberOfProduct == 0
                                      ? Text(
                                          '0 VND',
                                          style: TextStyle(
                                            fontSize: Dimens.size16,
                                          ),
                                        )
                                      : Text(
                                          (double.parse(widget.money) *
                                                    numberOfProduct)
                                                  .toString() +
                                              '00.000 VNĐ',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Dimens.size16,
                                          ),
                                        ),
                                ],
                              ),
                            ),
                            numberOfProduct > 0
                                ? GestureDetector(
                                    onTap: (){
                                      addProductToCart();

                                    },
                                  child: Container(
                                      alignment: Alignment.center,
                                      width: Dimens.size120,
                                      height: Dimens.size30,
                                      decoration: BoxDecoration(
                                        color: ColorResources.redColor,
                                        borderRadius: BorderRadius.circular(Dimens.size40),
                                      ),
                                      child:
                                        Text(
                                        'Thanh toán',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: Dimens.size16,
                                          color: ColorResources.whiteColor,
                                        ),
                                      ),
                                    ),
                                )
                                : Text(
                                    widget.status,
                                    style: widget.status == 'Còn hàng'
                                        ? TextStyle(
                                            fontSize: Dimens.size16,
                                          )
                                        : TextStyle(
                                            fontSize: Dimens.size16,
                                            color: ColorResources.redColor,
                                            decoration:
                                                TextDecoration.lineThrough,
                                          ),
                                  ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Dimens.size14),
                      child: Container(
                        height: Dimens.size1,
                        width: Dimens.size400,
                        color: ColorResources.greyColor.shade200,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            Text(
                              'Số lượng',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimens.size16,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Container(
                                    height: Dimens.size40,
                                    width: Dimens.size40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(Dimens.size14),
                                      border: Border.all(
                                          color: ColorResources
                                              .greyColor.shade300),
                                      color: ColorResources.greyColor.shade200,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (numberOfProduct > 0)
                                            numberOfProduct--;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: numberOfProduct == 0
                                            ? ColorResources.greyColor
                                            : ColorResources.blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Text(
                                    numberOfProduct.toString(),
                                    style: TextStyle(
                                      fontSize: Dimens.size20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Container(
                                    height: Dimens.size40,
                                    width: Dimens.size40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(Dimens.size14),
                                      border: Border.all(
                                          color: ColorResources
                                              .greyColor.shade300),
                                      color: ColorResources.greyColor.shade200,
                                    ),
                                    child: widget.status == 'Hết hàng'
                                        ? IconButton(
                                            onPressed: () {},
                                            icon: Icon(
                                              Icons.add,
                                              color: ColorResources.greyColor,
                                            ),
                                          )
                                        : IconButton(
                                            onPressed: () {
                                              setState(() {
                                                numberOfProduct++;
                                              });
                                            },
                                            icon: Icon(Icons.add),
                                          ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'Size',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: Dimens.size16,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Container(
                                    height: Dimens.size40,
                                    width: Dimens.size40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(Dimens.size14),
                                      border: Border.all(
                                          color: ColorResources
                                              .greyColor.shade300),
                                      color: ColorResources.greyColor.shade200,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (numberOfSize > 34) numberOfSize--;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.remove,
                                        color: numberOfSize == 34
                                            ? ColorResources.greyColor
                                            : ColorResources.blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Text(
                                    numberOfSize.toString(),
                                    style: TextStyle(
                                      fontSize: Dimens.size20,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(Dimens.size14),
                                  child: Container(
                                    height: Dimens.size40,
                                    width: Dimens.size40,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(Dimens.size14),
                                      border: Border.all(
                                          color: ColorResources
                                              .greyColor.shade300),
                                      color: ColorResources.greyColor.shade200,
                                    ),
                                    child: IconButton(
                                      onPressed: () {
                                        setState(() {
                                          if (numberOfSize < 43) numberOfSize++;
                                        });
                                      },
                                      icon: Icon(
                                        Icons.add,
                                        color: numberOfSize == 43
                                            ? ColorResources.greyColor
                                            : ColorResources.blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: Dimens.size14),
                      child: Container(
                        height: Dimens.size1,
                        width: Dimens.size400,
                        color: ColorResources.greyColor.shade200,
                      ),
                    ),
                    Text(
                      widget.description,
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Adidas & Nike',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size16,
                    ),
                  ),
                  SizedBox(
                    width: Dimens.size240,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: Dimens.size12,
                    ),
                  ),
                ],
              ),
              UIHelpers.verticalSizedBox10,
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('shoes')
                    .orderBy('id')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: Dimens.size200,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final collection =
                              (snapshot.data!.docs[index].data());

                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  name: collection['name'],
                                  image: collection['image'],
                                  money: collection['money'],
                                  description: collection['description'],
                                  id: collection['id'],
                                  status: collection['status'] ?? '',
                                  imageList: collection['imageList'] ?? [],
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: Dimens.size10,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: Dimens.size110,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(Dimens.size16),
                                        topRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          collection['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: Dimens.size90,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft:
                                            Radius.circular(Dimens.size16),
                                        bottomRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      color: ColorResources.greyColor.shade100,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(Dimens.size8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            collection['name'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                          Text(
                                            'MrC shoes',
                                            style: TextStyle(
                                              fontSize: Dimens.size12,
                                              color: ColorResources.blackColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Dimens.size10,
                                          ),
                                          Text(
                                            collection['money'] + '00.000 VNĐ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Container();
                },
              ),
              UIHelpers.verticalSizedBox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Vans',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size16,
                    ),
                  ),
                  SizedBox(
                    width: Dimens.size240,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: Dimens.size12,
                    ),
                  ),
                ],
              ),
              UIHelpers.verticalSizedBox10,
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('shoess')
                    .orderBy('id')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: Dimens.size200,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final collection =
                              (snapshot.data!.docs[index].data());

                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  name: collection['name'],
                                  image: collection['image'],
                                  money: collection['money'],
                                  description: collection['description'],
                                  id: collection['id'],
                                  status: collection['status'] ?? '',
                                  imageList: collection['imageList'] ?? [],
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: Dimens.size10,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: Dimens.size110,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(Dimens.size16),
                                        topRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          collection['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: Dimens.size90,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft:
                                            Radius.circular(Dimens.size16),
                                        bottomRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      color: ColorResources.greyColor.shade100,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(Dimens.size8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            collection['name'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                          Text(
                                            'MrC shoes',
                                            style: TextStyle(
                                              fontSize: Dimens.size12,
                                              color: ColorResources.blackColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Dimens.size10,
                                          ),
                                          Text(
                                            collection['money'] + '00.000 VNĐ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Container();
                },
              ),
              UIHelpers.verticalSizedBox20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Converse',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size16,
                    ),
                  ),
                  SizedBox(
                    width: Dimens.size240,
                  ),
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: Dimens.size12,
                    ),
                  ),
                ],
              ),
              UIHelpers.verticalSizedBox10,
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection('shoesss')
                    .orderBy('id')
                    .snapshots(),
                builder: (BuildContext context,
                    AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>>
                        snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      height: Dimens.size200,
                      width: size.width,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          final collection =
                              (snapshot.data!.docs[index].data());

                          return GestureDetector(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(
                                  name: collection['name'],
                                  image: collection['image'],
                                  money: collection['money'],
                                  description: collection['description'],
                                  id: collection['id'],
                                  status: collection['status'] ?? '',
                                  imageList: collection['imageList'] ?? [],
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                right: Dimens.size10,
                              ),
                              child: Column(
                                children: [
                                  Container(
                                    height: Dimens.size110,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(Dimens.size16),
                                        topRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          collection['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: Dimens.size90,
                                    width: Dimens.size140,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        bottomLeft:
                                            Radius.circular(Dimens.size16),
                                        bottomRight:
                                            Radius.circular(Dimens.size16),
                                      ),
                                      border: Border.all(
                                        color:
                                            ColorResources.greyColor.shade100,
                                      ),
                                      color: ColorResources.greyColor.shade100,
                                    ),
                                    child: Padding(
                                      padding: EdgeInsets.all(Dimens.size8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            collection['name'],
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                          Text(
                                            'MrC shoes',
                                            style: TextStyle(
                                              fontSize: Dimens.size12,
                                              color: ColorResources.blackColor,
                                            ),
                                          ),
                                          SizedBox(
                                            height: Dimens.size10,
                                          ),
                                          Text(
                                            collection['money'] + '00.000 VNĐ',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: Dimens.size14,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      ),
                    );
                  }
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return Center(child: CircularProgressIndicator());
                  }
                  return Container();
                },
              ),
              SizedBox(
                height: Dimens.size30,
              ),
              UIHelpers.verticalSizedBox20,
              Container(
                height: Dimens.size90,
                width: Dimens.size90,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Images.iconshoes,
                    ),
                  ),
                ),
              ),
              Text(
                'CAM KẾT CHÍNH HÃNG',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '100% Authentic',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Cam kết sản phẩm chính hãng từ Châu Âu,Châu Mỹ...',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                ),
              ),
              SizedBox(
                height: Dimens.size14,
              ),
              Container(
                height: Dimens.size80,
                width: Dimens.size80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Images.iconTruck,
                    ),
                  ),
                ),
              ),
              Text(
                'GIAO HÀNG HỎA TỐC',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Express delivery',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'SHIP hỏa tốc 1h nhận hàng trong nội thành HCM',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                ),
              ),
              SizedBox(
                height: Dimens.size14,
              ),
              Container(
                height: Dimens.size80,
                width: Dimens.size80,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      Images.iconPhone,
                    ),
                  ),
                ),
              ),
              Text(
                'HỖ TRỢ 24/24',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Supporting 24/24',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Gọi ngay',
                style: TextStyle(
                  color: ColorResources.blackColor,
                  fontSize: Dimens.size14,
                ),
              ),
              SizedBox(
                height: Dimens.size14,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
