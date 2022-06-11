import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoes_app/resources/colors.dart';
import 'package:shoes_app/resources/dimens.dart';
import 'package:shoes_app/resources/resources.dart';

class MeasureSize extends StatefulWidget {
  const MeasureSize({Key? key}) : super(key: key);

  @override
  _MeasureSizeState createState() => _MeasureSizeState();
}

class _MeasureSizeState extends State<MeasureSize> {
  @override

  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: Dimens.size200,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.size16),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://kingshoes.vn/data/upload/media/C%C3%A1ch-%C4%90o-C%E1%BB%A1-Ch%C3%A2n-V%C3%A0-X%C3%A1c-%C4%90%E1%BB%8Bnh-Size-Gi%C3%A0y-Vi%E1%BB%87t-Nam-US-UK-Chu%E1%BA%A9n-X%C3%A1c-T%E1%BA%A1i-KINGSHOES-VN-TPHCM-TANBINH.jpg'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text('CHUẨN BỊ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('1 tờ giấy trắng lớn, phải to hơn bàn chân bạn 1 cây bút chì1 cây thước đo',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('CÁCH THỰC HIỆN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('Quy ước:Cỡ giày là N Chiều dài bàn chân là L',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('B1: VẼ KÍCH CỠ CHÂN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Text('Bạn đặt tờ giấy xuống sàn nhà, sau đó đặt bàn chân của bạn thật chắc chắn lên tờ giấy.Dùng bút chì để vẽ lại khung bàn chân của mình cho thật chuẩn. Bạn nên giữ bút chì thẳng đứng và vuông góc với tờ giấy để vẽ được chính xác hơn.',
                  style: TextStyle(
                    fontSize: Dimens.size14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('**Lưu ý: Bạn phải luôn giữ bàn chân ở vị trí cũ và không được di chuyển bàn chân ngay khi dừng bút chì giữa chừng.',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size240,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Dimens.size16),
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://kingshoes.vn/data/upload/media/C%C3%A1ch-%C4%90o-C%E1%BB%A1-Ch%C3%A2n-V%C3%A0-X%C3%A1c-%C4%90%E1%BB%8Bnh-Size-Gi%C3%A0y-Vi%E1%BB%87t-Nam-US-UK-Chu%E1%BA%A9n-X%C3%A1c-T%E1%BA%A1i-KINGSHOES-VN.jpg'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text('B2: ĐÁNH DẤU CÁC SỐ ĐO CHIỀU DÀI VÀ CHIỀU RỘNG',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('Bạn sử dụng bút chì để vẽ một đường thẳng để chạm vào các điểm trên cùng, dưới cùng và 2 bên của bản phác thảo bàn chân như hình ảnh dưới để chúng ta đo chiều dài chân.',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size240,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://kingshoes.vn/data/upload/media/C%C3%A1ch-%C4%90o-C%E1%BB%A1-Ch%C3%A2n-V%C3%A0-X%C3%A1c-%C4%90%E1%BB%8Bnh-Size-Gi%C3%A0y-Vi%E1%BB%87t-Nam-US-UK-Chu%E1%BA%A9n-X%C3%A1c-T%E1%BA%A1i-KINGSHOES-VN-TPHCM-TANBINH-1.jpg'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text('B3: XÁC ĐỊNH CHIỀU DÀI BÀN CHÂN (L)',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Text('Bạn sử dụng thước kẻ để đo chiều dài từ phía dưới dòng kẻ trên đến dòng kẻ dưới mà bạn đã vẽ. Sau khi đo xong, bạn có thể làm tròn số trong khoảng 0.5cm. Bạn nên làm tròn xuống để trừ hao cho những sai lệch khi vẽ khuôn chân vì các đường kẻ thường chênh lên một chút so với kích thước thật của bàn chân bạn.',
                  style: TextStyle(
                    fontSize: Dimens.size14,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('**Lưu ý khi đo: bạn phải đo trên đường thẳng vuông góc với hai đường kẻ trên và dưới.',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size240,
                  width: Dimens.size400,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://kingshoes.vn/data/upload/media/C%C3%A1ch-%C4%90o-C%E1%BB%A1-Ch%C3%A2n-V%C3%A0-X%C3%A1c-%C4%90%E1%BB%8Bnh-Size-Gi%C3%A0y-Vi%E1%BB%87t-Nam-US-UK-Chu%E1%BA%A9n-X%C3%A1c-T%E1%BA%A1i-KINGSHOES-VN-TPHCM-TANBINH-2.jpg'
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: Dimens.size14),
                  child: Text('B4: TÌM VÀ CHỌN SIZE GIÀY PHÙ HỢP',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('QUY ĐỔI SIZE GIÀY NỮ ..................... QUY ĐỔI SIZE GIÀY NAM',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: Dimens.size20,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('Tốt nhất bạn nên đo size giày vào cuối ngày vì lúc này đôi chân bạn được thư giản hoàn toànBạn nên đo cả 2 chân, nếu có sai số giữa 2 bàn chân thì hãy chọn đôi giày có cỡ bằng với chân lớn hơn của bạnNếu chân bạn ốm và bề ngang nhỏ, hẹp, mỏng thì bạn chọn size giày theo hướng dẫn bên trên.Nếu chân bạn mập, dày và có bề ngang rộng thì bạn chọn size theo hướng dẫn bên trên cộng thêm 1 size. Vd: bạn là nữ: dài chân đo được là size 36, nhưng chân có bề ngang rộng , mập và tròn đầy thì chọn size 37.',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: Dimens.size14),
                  child: Text('Sau khi thực hiện theo những gì chúng tôi đã chỉ dẫn các bạn đã tìm ra được size giày đúng của mình chưa? Hãy chia sẻ bên dưới nhé.',
                    style: TextStyle(
                      fontSize: Dimens.size14,
                    ),
                  ),
                ),
                Container(
                  height: Dimens.size630,
                  width: size.width,
                  child: Column(
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
