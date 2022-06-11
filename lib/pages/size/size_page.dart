import 'package:flutter/material.dart';
import '../../resources/resources.dart';


class SizePage extends StatefulWidget {
  const SizePage({Key? key}) : super(key: key);

  @override
  _SizePageState createState() => _SizePageState();
}

class _SizePageState extends State<SizePage> {
  get size => MediaQuery.of(context).size;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorResources.pinkColor.shade300,
      ),
      body: Container(
        color: ColorResources.whiteColor,
        child: Padding(
          padding: const EdgeInsets.all(Dimens.size14),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Text('CHỌN SIZE GIÀY NIKE, ADIDAS, VANS, CONVERSE.',
                  style: TextStyle(
                    fontSize: Dimens.size22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: Dimens.size500,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://kingshoes.vn/data/upload/media/size-giay-adidas-nike-chinh-hang-tai-kingshoes_vn-tphcm-tanbinh.jpg'
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size240,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://foot.vn/wp-content/uploads/2020/09/size-giay-vans-2.jpg'
                      ),
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size300,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://drake.vn/image/catalog/H%C3%ACnh%20content/ch%E1%BB%8Dn-size-giay-Converse/cach-chon-size-giay-converse-6.jpg'
                      ),
                    ),
                  ),
                ),
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
