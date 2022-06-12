import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/resources/resources.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: ColorResources.pinkColor.shade300,
        title: Text('Giỏ hàng'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          StreamBuilder(
            stream: FirebaseFirestore.instance.collection('cart').snapshots(),
            builder: (context, AsyncSnapshot<QuerySnapshot> snapshot) {
              if (!snapshot.hasData) {
                return Center(
                  child: Text('khong co san pham duoc chon'),
                );
              }
              if (snapshot.connectionState == ConnectionState.waiting) {
                return Center(
                  child: Text(' vui long'),
                );
              }
              return Expanded(
                child: ListView.separated(
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 16),
                  itemCount: snapshot.data!.docs.length,
                  itemBuilder: (context, index) {
                    final cartInfo = (snapshot.data!.docs[index].data()
                        as Map<String, dynamic>);

                    return ListTile(
                      leading: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          image: (cartInfo['image'] != null)
                              ? DecorationImage(
                                  image: NetworkImage(
                                    cartInfo['image'],
                                  ),
                                  fit: BoxFit.contain,
                                )
                              : null,
                        ),
                      ),
                      title: Text(
                        cartInfo['name'] ?? '',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        cartInfo['money'].toString() + '00.000 VNĐ',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      trailing: Text(
                          'Số lượng \n' + cartInfo['amount'].toString(),
                          style: TextStyle(fontWeight: FontWeight.w500),
                          textAlign: TextAlign.center),
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
