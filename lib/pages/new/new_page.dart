import 'package:flutter/material.dart';
import 'package:shoes_app/resources/colors.dart';
import 'package:shoes_app/resources/dimens.dart';
import 'package:shoes_app/resources/resources.dart';

class NewPage extends StatefulWidget {
  const NewPage({Key? key}) : super(key: key);

  @override
  _NewPageState createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back_ios,
        ),
        backgroundColor: ColorResources.pinkColor.shade300,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(Dimens.size14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'TUYỂN DỤNG NHÂN VIÊN BÁN HÀNG',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: Dimens.size22,
                  ),
                ),
                SizedBox(
                  height: Dimens.size14,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nhân viên bán hàng (Part time/Full time)',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text(
                    'Mô tả công việc:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size22,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Tư vấn hỗ trợ khách hàng chọn lựa sản phẩm.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Bán hàng và xử lí đơn hàng.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Dimens.size20),
                        child: Text(
                          'Lưu trữ và bảo vệ hàng hóa, chịu trách nhiệm về các vấn đề vệ sinh và mất mát trong cửa hàng.',
                          style: TextStyle(
                            fontSize: Dimens.size16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Dimens.size14),
                        child: Text(
                          'Vệ sinh hằng ngày/tuần đảm bảo cửa hàng luôn sạch sẽ, ngăn nắp.',
                          style: TextStyle(
                            fontSize: Dimens.size16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Dimens.size14),
                        child: Text(
                          'Theo dõi và đáp ứng hoặc vượt chỉ tiêu bán hàng.',
                          style: TextStyle(
                            fontSize: Dimens.size16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Thực hiện các công việc được quản lí giao phó.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Dimens.size14),
                        child: Text(
                          'Tham gia đầy đủ các buổi họp và training sản phẩm và dịch vụ.',
                          style: TextStyle(
                            fontSize: Dimens.size16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text(
                    'Quyền lợi:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size22,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Môi trường làm việc năng động, trẻ trung.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: Dimens.size14),
                        child: Text(
                          'Được yêu cầu hỗ trợ từ cấp trên để hoàn thành công việc tốt nhất.',
                          style: TextStyle(
                            fontSize: Dimens.size16,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Mức lương:  20,000đ/h.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text(
                    'Thời gian làm việc:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size22,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Ca 1: 9h-15h',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Ca 2: 15h-21h',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Ca 3: 17h-21h ',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text(
                    'Ưu tiên:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size22,
                    ),
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Có ngoại hình, có kinh nghiệm bán hàng.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(Dimens.size14),
                      child: Container(
                        height: Dimens.size6,
                        width: Dimens.size6,
                        decoration: BoxDecoration(
                          color: ColorResources.blackColor,
                          borderRadius: BorderRadius.circular(Dimens.size300),
                        ),
                      ),
                    ),
                    Text(
                      'Sống và học tập khu vực gần cửa hàng.',
                      style: TextStyle(
                        fontSize: Dimens.size16,
                      ),
                    ),
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
