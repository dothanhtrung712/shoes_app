import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shoes_app/app/routers.dart';
import 'package:shoes_app/base/base_screen_state.dart';
import 'package:shoes_app/models/models.dart';
import 'package:shoes_app/pages/detail/view/detail_argument.dart';
import 'package:shoes_app/pages/home/cubit/home_cubit.dart';
import 'package:shoes_app/pages/measuresize/measuresize_page.dart';
import 'package:shoes_app/pages/size/size_page.dart';

import '../../../resources/resources.dart';

import '../../pages.dart';
part 'home_listener.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends BaseScreenState<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      homeCubit.onInit();
    });
  }

  HomeCubit get homeCubit => BlocProvider.of<HomeCubit>(context);

  @override
  bool get allowPopScope => false;

  @override
  Widget buildContent(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return BlocListener<HomeCubit, HomeState>(
      listener: _listener,
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: ColorResources.pinkColor.shade300,
            leading: IconButton(
              iconSize: 35,
              splashRadius: 25,
              onPressed: () {},
              icon: const Icon(
                Icons.view_headline_outlined,
                color: ColorResources.whiteColor,
              ),
            ),
            title: Text(
              'MrC Shoes',
              style: TextStyle(
                fontSize: Dimens.size22,
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: [
              _buildSearchIcon(),
              _buildCartIcon(context),
              const SizedBox(width: 5)
            ],
          ),
          body: Container(
            height: size.height,
            decoration: BoxDecoration(color: ColorResources.whiteColor),
            child: SingleChildScrollView(
              padding: UIHelpers.paddingAll14,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: Dimens.size240,
                      width: size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(Dimens.size20),
                          image: DecorationImage(
                              image: AssetImage(Images.bannerShoes),
                              fit: BoxFit.cover)),
                    ),
                    UIHelpers.verticalSizedBox20,
                    Text('Adidas & Nike',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.size16)),
                    UIHelpers.verticalSizedBox10,
                    _buildAdidasAndNikeList(size),
                    UIHelpers.verticalSizedBox20,
                    Text('Vans',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.size16)),
                    UIHelpers.verticalSizedBox10,
                    _buildVansList(size),
                    UIHelpers.verticalSizedBox20,
                    Text('Converse',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: Dimens.size16)),
                    UIHelpers.verticalSizedBox10,
                    _buildConverseList(size),
                    SizedBox(height: Dimens.size30),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.only(right: Dimens.size14),
                            child: Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    height: Dimens.size400,
                                    width: Dimens.size400,
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
                                          'https://kingshoes.vn/data/upload/media/cach-do-size-giay-chuan-tai-viet-nam-US-UK-Chuan-xac-tai-KINGSHOES-VN-tphcm-tanbinh.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SizePage()),
                                    );
                                  },
                                ),
                                Container(
                                  height: Dimens.size100,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(Dimens.size16),
                                      bottomRight:
                                          Radius.circular(Dimens.size16),
                                    ),
                                    border: Border.all(
                                      color: ColorResources.greyColor.shade100,
                                    ),
                                    color: ColorResources.greyColor.shade100,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(Dimens.size14),
                                    child: Column(
                                      children: [
                                        Text(
                                          'CÁCH CHỌN SIZE GIÀY',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Dimens.size20,
                                          ),
                                        ),
                                        Text(
                                          'ADIDAS, NIKE, VANS, CONVERSE',
                                          style: TextStyle(
                                            fontSize: Dimens.size20,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(right: Dimens.size14),
                            child: Column(
                              children: [
                                InkWell(
                                  child: Container(
                                    height: Dimens.size400,
                                    width: Dimens.size400,
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
                                          'https://kingshoes.vn/data/upload/media/cach-do-size-giay-chuan-tai-viet-nam-US-UK-Chuan-xac-tai-KINGSHOES-VN-tphcm-tanbinh-1533788373-.jpg',
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => MeasureSize(),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  height: Dimens.size100,
                                  width: Dimens.size400,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft:
                                          Radius.circular(Dimens.size16),
                                      bottomRight:
                                          Radius.circular(Dimens.size16),
                                    ),
                                    border: Border.all(
                                      color: ColorResources.greyColor.shade100,
                                    ),
                                    color: ColorResources.greyColor.shade100,
                                  ),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.all(Dimens.size14),
                                    child: Column(
                                      children: [
                                        Text(
                                          'CÁCH ĐO CỠ CHÂN VÀ XÁC ĐỊNH SIZE GIÀY VIỆT NAM, US, UK, CHUẨN XÁC TẠI MRC',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: Dimens.size20,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: double.infinity,
                      child: Column(children: [
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
                        Container(
                          height: Dimens.size60,
                          width: Dimens.size60,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                Images.iconLocation,
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'MrC Shoes',
                          style: TextStyle(
                            color: ColorResources.blackColor,
                            fontSize: Dimens.size24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'MRCSHOES.VN Trang Thông Tin Chính ',
                          style: TextStyle(
                            color: ColorResources.blackColor,
                            fontSize: Dimens.size14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Mở cửa:',
                          style: TextStyle(
                            color: ColorResources.blackColor,
                            fontSize: Dimens.size14,
                          ),
                        ),
                        Text(
                          'T2 - T7: 9:00 ~ 21:00',
                          style: TextStyle(
                            color: ColorResources.blackColor,
                            fontSize: Dimens.size14,
                          ),
                        ),
                        Text(
                          'CN: 11:00 ~ 20:00',
                          style: TextStyle(
                            color: ColorResources.blackColor,
                            fontSize: Dimens.size14,
                          ),
                        ),
                      ]),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildConverseList(Size size) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('shoesss')
          .orderBy('id')
          .snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: Dimens.size200,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final collection = (snapshot.data!.docs[index].data());

                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, MyRouters.detailPage,
                        arguments: DetailArgument(
                            name: collection['name'],
                            image: collection['image'],
                            description: collection['description'],
                            money: collection['money'],
                            id: collection['id'],
                            status: collection['status'] ?? '',
                            imageList: collection['imageList'] ?? []));
                  },
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
                              topRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
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
                              bottomLeft: Radius.circular(Dimens.size16),
                              bottomRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
                            ),
                            color: ColorResources.greyColor.shade100,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(Dimens.size8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget _buildVansList(Size size) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('shoess')
          .orderBy('id')
          .snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: Dimens.size200,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final collection = (snapshot.data!.docs[index].data());

                return GestureDetector(
                  onTap: () => Navigator.pushNamed(
                                context, MyRouters.detailPage,
                                arguments: DetailArgument(
                                    name: collection['name'],
                                    image: collection['image'],
                                    description: collection['description'],
                                    money: collection['money'],
                                    id: collection['id'],
                                    status: collection['status'] ?? '',
                                    imageList: collection['imageList'] ?? [])),
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
                              topRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
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
                              bottomLeft: Radius.circular(Dimens.size16),
                              bottomRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
                            ),
                            color: ColorResources.greyColor.shade100,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(Dimens.size8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  Widget _buildAdidasAndNikeList(Size size) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('shoes')
          .orderBy('id')
          .snapshots(),
      builder: (BuildContext context,
          AsyncSnapshot<QuerySnapshot<Map<String, dynamic>>> snapshot) {
        if (snapshot.hasData) {
          return Container(
            height: Dimens.size200,
            width: size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.docs.length,
              itemBuilder: (context, index) {
                final collection = (snapshot.data!.docs[index].data());

                return GestureDetector(
                  onTap: () => Navigator.pushNamed(
                                context, MyRouters.detailPage,
                                arguments: DetailArgument(
                                    name: collection['name'],
                                    image: collection['image'],
                                    description: collection['description'],
                                    money: collection['money'],
                                    id: collection['id'],
                                    status: collection['status'] ?? '',
                                    imageList: collection['imageList'] ?? [])),
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
                              topRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
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
                              bottomLeft: Radius.circular(Dimens.size16),
                              bottomRight: Radius.circular(Dimens.size16),
                            ),
                            border: Border.all(
                              color: ColorResources.greyColor.shade100,
                            ),
                            color: ColorResources.greyColor.shade100,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(Dimens.size8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
    );
  }

  IconButton _buildSearchIcon() {
    return IconButton(
      iconSize: 35,
      splashRadius: 25,
      onPressed: () {},
      icon: const Icon(
        Icons.search,
        color: ColorResources.whiteColor,
      ),
    );
  }

  Stack _buildCartIcon(BuildContext context) {
    return Stack(
      children: [
        IconButton(
          onPressed: () => Navigator.pushNamed(context, MyRouters.cartPage),
          icon: Icon(
            Icons.shopping_cart,
            size: Dimens.size30,
            color: ColorResources.whiteColor,
          ),
        ),
        BlocBuilder<HomeCubit, HomeState>(
          buildWhen: (previous, current) => current is HomeLoadedState,
          builder: (context, state) {
            final cartItemCount = (state is HomeLoadedState)
                ? state.data.cart.list.length.toString()
                : '';
            return Positioned(
              right: Dimens.size0,
              child: (cartItemCount.isNotEmpty)
                  ? Container(
                      width: Dimens.size20,
                      height: Dimens.size20,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                      child: Text(
                        cartItemCount,
                        style: TextStyle(
                            fontSize: Dimens.size14,
                            fontWeight: FontWeight.bold),
                      ))
                  : const SizedBox.shrink(),
            );
          },
        ),
      ],
    );
  }
}
