import 'package:flutter/material.dart';

class ShoesModels {
  final String name;
  final String image;
  final int money;
  final String description;
  final int id;
  final String status;
  final List imageList;

  const ShoesModels(
      {required this.name,
      required this.image,
      required this.money,
      required this.description,
      required this.id,
      required this.status,
      required this.imageList});
}

// List<ShoesModels> items = [
//   ShoesModels(
//       name: 'Air Force 1',
//       image:
//           'https://kingshoes.vn/data/upload/media/SNEAKER-315122-111-AIR-FORCE-1-07-NIKE-KINGSHOES.VN-TPHCM-TANBINH-17-logo-1551924204-.jpg',
//       money: '3.0',
//       description:
//           'Nike Air Force 1 là đôi giày mang tính cách mạng trong thế giới sneaker, giày Nike Air Force 1 nổi bật với công nghệ “air” bao gồm một túi khí được bố trí bên trong đế giày để hấp thu lực khi tiếp đất, giảm chấn thương tối đa cho bàn chân. giày Nike Air Force 1 Được tạo ra ban đầu với mục đích dành riêng cho bộ môn bóng rổ, nhưng dần dần được các ngôi sao giải trí có tầm ảnh hưởng ưa thích và biến chúng thành đôi giày “bất hủ”. ',
//       id: 1,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/SNEAKER-315122-111-AIR-FORCE-1-07-NIKE-KINGSHOES.VN-TPHCM-TANBINH-13.jpg',
//         'https://kingshoes.vn/data/upload/media/SNEAKER-315122-111-AIR-FORCE-1-07-NIKE-KINGSHOES.VN-TPHCM-TANBINH-15.jpg',
//         'https://kingshoes.vn/data/upload/media/SNEAKER-315122-111-AIR-FORCE-1-07-NIKE-KINGSHOES.VN-TPHCM-TANBINH-12.jpg',
//       ]),
//   ShoesModels(
//       name: 'Air Zoom Tempo',
//       image:
//           'https://kingshoes.vn/data/upload/media/air-zoom-tempo-running-cj2102-300-king-shoes-sneaker-real-hcm-5-1622879735.jpeg',
//       money: '3.0',
//       description:
//           'Một tấm có chiều dài đầy đủ ở đế giữa giúp ổn định các vỏ Zoom Air đồng thời mang lại cảm giác mạnh mẽ với mỗi sải chân. Sự khác biệt giữa tấm này và những tấm trong giày đua của chúng tôi là tấm trong Tempo NEXT% không quá cứng, cho phép bàn chân của bạn tăng cường sức mạnh trong quá trình luyện tập.',
//       id: 2,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/air-zoom-tempo-running-cj2102-300-king-shoes-sneaker-real-hcm-3.jpeg',
//         'https://kingshoes.vn/data/upload/media/air-zoom-tempo-running-cj2102-300-king-shoes-sneaker-real-hcm.jpeg',
//         'https://kingshoes.vn/data/upload/media/air-zoom-tempo-running-cj2102-300-king-shoes-sneaker-real-hcm-1.jpeg',
//       ]),
//   ShoesModels(
//       name: 'Ari Force 1 Low Tear Away',
//       image:
//           'https://kingshoes.vn/data/upload/media/air-force-1-low-tear-away-white-multicolour-cj1650-101-king-shoes-sneaker-real-hcm-6-1624186903.jpg',
//       money: '3.0',
//       description:
//           'Những điều đáng yêu thật bất ngờ thường đi liền với nhau khi mà tông hồng cực kỳ đáng yêu được nhấn nhá bằng logo Swoosh cực kỳ lấp lánh. Tuy không thay đổi nhiều về mặt chất liệu cũng như form dáng nhưng Air Force 1 thì dù có bao nhiêu phối màu đi chăng nữa chúng ta vẫn cảm thấy không đủ!Nike Air Force 1 Low Tear-Away White Multicolour hứa hẹn sẽ là một siêu phẩm xứng đáng xuất hiện trong tủ.',
//       id: 3,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/air-force-1-low-tear-away-white-multicolour-cj1650-101-king-shoes-sneaker-real-hcm-1.jpg',
//         'https://kingshoes.vn/data/upload/media/air-force-1-low-tear-away-white-multicolour-cj1650-101-king-shoes-sneaker-real-hcm-2.jpg',
//         'https://kingshoes.vn/data/upload/media/air-force-1-low-tear-away-white-multicolour-cj1650-101-king-shoes-sneaker-real-hcm-5.jpg',
//       ]),
//   ShoesModels(
//       name: 'Air Force 1 Shadow',
//       image:
//           'https://kingshoes.vn/data/upload/media/nike-air-force-1-shadow-flash-astronomy-ci0919-105-king-shoes-sneaker-real-hcm-1624261028.jpeg',
//       money: '3.0',
//       description:
//           'Những đôi giày thể thao đã giúp xác định phong cách đường phố được mô phỏng lại bằng Crater Foam, trọng lượng với ít nhất 20% vật liệu tái chế. Đế giữa siêu mềm Crater Foam được làm từ hỗn hợp không gian của khoảng 11% vật liệu xốp và cao su Nike Grind. Với đế ngoài lốm đốm được làm từ 15% cao su Nike Grind, mỗi đôi Nike Air Force 1 ShaDow đều độc đáo và bền bỉ.',
//       id: 4,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/ci0919-1053.jpg',
//         'https://kingshoes.vn/data/upload/media/ci0919-1052.jpg',
//         'https://kingshoes.vn/data/upload/media/ci0919-1054.jpg',
//       ]),
//   ShoesModels(
//       name: 'Epic React',
//       image:
//           'https://kingshoes.vn/data/upload/media/nike-epic-react-infinity-fk-cu0430-001-king-shoes-sneaker-real-hcm-1624261090.jpeg',
//       money: '3.0',
//       description:
//           'Nike Epic React Flyknit 2 có một bước tiến so với người tiền nhiệm của nó với hiệu suất mượt mà, nhẹ và kiểu dáng táo bạo. Phần trên Flyknit được cập nhật phù hợp với bàn chân của bạn với thiết kế hỗ trợ tối thiểu. Công nghệ Nike React bền bỉ dưới bàn chân thách thức mọi khó khăn bằng cách vừa mềm mại vừa phản hồi nhanh, mang lại sự thoải mái kéo dài cho đến khi bạn có thể chạy.',
//       id: 5,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/cu0430-0014.jpg',
//         'https://kingshoes.vn/data/upload/media/cu0430-0013.jpg',
//         'https://kingshoes.vn/data/upload/media/cu0430-0015.jpg',
//       ]),
//   ShoesModels(
//       name: 'NMD R1 All White',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-nmd-r1-all-white-h019031-king-shoes-sneaker-real-hcm-1624253160.jpeg',
//       money: '3.0',
//       description:
//           'Thành phố luôn thay đổi. Dám theo kịp Giày tinh luyện adidas NMD_R1 của đàn em này. Kết hợp phong cách hàng ngày với công nghệ hàng đầu của adidas, đôi giày thể thao lấy cảm hứng từ chạy bộ này giúp bạn thoải mái khi di chuyển nhờ đệm Boost hoàn lại năng lượng. Lớp lưới linh hoạt phía trên ôm sát chân để bạn có thể dễ dàng quay đầu và chuyển hướng bất cứ khi nào có khu vực mới của thành phố gọi đến bạn.',
//       id: 6,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/h019032.jpg',
//         'https://kingshoes.vn/data/upload/media/h019034.jpg',
//         'https://kingshoes.vn/data/upload/media/h019035.jpg',
//       ]),
//   ShoesModels(
//       name: 'Falcon Pink',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-falcon-pink-purple-bd78251-king-shoes-sneaker-real-hcm-1624253267.jpeg',
//       money: '3.0',
//       description:
//           'Phong cách bangin của những năm 90 là ở đây để thể hiện trong những đôi giày adidas Falcon này. Đắm mình trong phong cách bubblegum-pop đã làm nên cả thập kỷ, đôi giày này sẽ khiến bạn sống lại mọi hoài niệm. Với điểm nhấn phần cứng bằng vàng và sự phù hợp với di sản chạy, những cú đá này được thực hiện để trở thành quả bom.',
//       id: 7,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/bd78254.jpg',
//         'https://kingshoes.vn/data/upload/media/bd78253.jpg',
//         'https://kingshoes.vn/data/upload/media/bd78258.jpg',
//       ]),
//   ShoesModels(
//       name: 'Solar Hu NMD',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-pharrell-williams-hu-nmd-eg7737-chinh-hang-hcm-king-shoes-sneaker-authentic-hcm-1624249958.jpeg',
//       money: '3.0',
//       description:
//           'Những phong cách này được cung cấp bởi một thị trường giày thể thao cao cấp. Chỉ dự trữ những đôi giày được tìm kiếm nhiều nhất, họ cung cấp và tuyển chọn một số đôi giày thể thao khó tìm nhất từ khắp nơi trên thế giới.adidas đã hợp tác với Pharrell Williams để thiết kế nên mẫu giày chạy bộ chốn thành thị này. Thân trên giày có lớp lưới siêu nhẹ và thoáng khí.',
//       id: 8,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/adidas-pharrell-williams-hu-nmd-eg7737-chinh-hang-hcm-king-shoes-sneaker-authentic-2.jpg',
//         'https://kingshoes.vn/data/upload/media/adidas-pharrell-williams-hu-nmd-eg7737-chinh-hang-hcm-king-shoes-sneaker-authentic-8.jpg',
//         'https://kingshoes.vn/data/upload/media/adidas-pharrell-williams-hu-nmd-eg7737-chinh-hang-hcm-king-shoes-sneaker-authentic-7.jpg',
//       ]),
//   ShoesModels(
//       name: 'Ozweego Pride',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-eg10761-king-shoes-sneaker-real-uy-tin-nhat-hcm-1624249846.jpeg',
//       money: '3.0',
//       description:
//           'Phần trên của đế bằng lưới nhẹ của giày thể thao có lớp phủ bằng da lộn và các điểm nhấn nhiều màu dọc theo lưỡi gà, thương hiệu Three Stripes và mấu gót TPU. Nó nằm trên một chiếc đế cồng kềnh, có màu cầu vồng, theo chủ đề Niềm tự hào. Đế ngoài bằng cao su màu đen hoàn thiện vẻ ngoài.Một diện mạo được mô phỏng lại từ những năm 90 tôn vinh niềm tự hào của LGBTQ.',
//       id: 9,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/eg10764.jpg',
//         'https://kingshoes.vn/data/upload/media/eg10763.jpg',
//         'https://kingshoes.vn/data/upload/media/eg10765.jpg',
//       ]),
//   ShoesModels(
//       name: 'Stan Smith',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-stan-smith-hologram-fu6673-chinh-hang-tai-quan-tan-binh-hcm-king-shoes-3.jpg',
//       money: '3.0',
//       description:
//           'Cuốn theo cổ điển. Ngày trước, Stan Smith đã thắng lớn trên sân quần vợt. Hãy xỏ chân vào đôi giày adidas xứng đáng với tên của anh ấy và bạn sẽ thắng lớn trên đường phố. Từ trên xuống dưới, đôi giày này thể hiện phong cách thiết yếu của bản gốc năm 1971, với thiết kế bằng da tối giản và đường viền sạch sẽ.',
//       id: 10,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/0000000022943xp5qkhs.jpg',
//         'https://kingshoes.vn/data/upload/media/adidas-stan-smith-hologram-fu6673-chinh-hang-tai-quan-tan-binh-hcm-king-shoes-2.jpg',
//         'https://kingshoes.vn/data/upload/media/uptowndeluxefu66733.jpg',
//       ]),
//   ShoesModels(
//       name: 'Jordan 1 Low Royal',
//       image:
//           'https://kingshoes.vn/data/upload/media/nike-jordan-1-low-royal-blue-553558-124-king-shoes-sneaker-real-hcm-1624271150.jpeg',
//       money: '3.0',
//       description:
//           'Đó là sự pha trộn sang trọng của màu xanh hoàng gia, trắng và đen đã làm cho chúng trở nên hấp dẫn. Jordan 1 đen xanh này chủ đề chặn màu này bắt nguồn từ những chiếc Jordans đầu tiên. Nó dễ dàng và ít quan trọng nhưng đôi khi, những phong cách đơn giản như thế này là một trong những phong cách đáng nhớ nhất. Đây là một trong những bóng linh hoạt nhất, dễ dàng ghép nối với bất cứ thứ gì.',
//       id: 11,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/553558-1245.jpg',
//         'https://kingshoes.vn/data/upload/media/553558-1243.jpg',
//         'https://kingshoes.vn/data/upload/media/553558-1244.jpg',
//       ]),
//   ShoesModels(
//       name: 'Jordan 1 Low Blue',
//       image:
//           'https://kingshoes.vn/data/upload/media/nike-air-jordan-1-low-university-blue-553560-403-king-shoes-sneaker-real-hcm-1624271308.jpeg',
//       money: '3.0',
//       description:
//           'Jordan 1 Low Laser Blue là phiên bản mới nhất của sự tấn công dữ dội của các màu sắc mới của Jordan 1’s low-top do Nike và Jordan Brand mang đến cho chúng ta. Phiên bản lần đầu tiên ra mắt vào năm 1985 cùng với sự kế thừa đỉnh cao mang tính biểu tượng mà tất cả chúng ta đều biết và yêu thích.Dưới bàn chân, một đế giữa màu trắng làm nơi chứa phần còn lại của đôi giày, che giấu phần đệm Nike Air hỗ trợ.',
//       id: 12,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/553560-4034.jpg',
//         'https://kingshoes.vn/data/upload/media/553560-4035.jpg',
//         'https://kingshoes.vn/data/upload/media/553560-4032.jpg',
//       ]),
//   ShoesModels(
//       name: 'Dunk Low Coast',
//       image:
//           'https://kingshoes.vn/data/upload/media/nike-dunk-low-coast-dd1503-100-tai-king-shoes-sneaker-real-hcm-1624272905.jpeg',
//       money: '3.0',
//       description:
//           'Nike Dunk Low Coast giới thiệu phối màu hai tông màu tôn lên hình dáng thấp thoáng của giày thể thao. Giày thể thao có phần trên bằng da, kết hợp phần đế màu trắng với lớp phủ màu xanh lam nhạt. Logo Nike được thêu trên gót giày. Để đúng với phong cách của UCLA, phần logo Nike ở gót giày và lưỡi gà được thêu chỉ vàng nổi bật.',
//       id: 13,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/giày-nike-dunk-low-coast-dd1503-100-tai-king-shoes-sneaker-real-hcm-7.jpg',
//         'https://kingshoes.vn/data/upload/media/giày-nike-dunk-low-coast-dd1503-100-tai-king-shoes-sneaker-real-hcm-9.jpg',
//         'https://kingshoes.vn/data/upload/media/giày-nike-dunk-low-coast-dd1503-100-tai-king-shoes-sneaker-real-hcm-6.jpg',
//       ]),
//   ShoesModels(
//       name: 'Jordan 1 Low Fushsia',
//       image:
//           'https://kingshoes.vn/data/upload/media/jordan-1-low-fuchsia-ct1564-005-king-shoes-sneaker-real-hcm-1624272542.jpeg',
//       money: '3.0',
//       description:
//           'Air Jordan 1 Low Fuchsia là một phiên bản mới hoàn toàn mới của hình bóng AJ1 huyền thoại đã được nhiều thế hệ sneakerhead khác nhau yêu thích. Được ra mắt lần đầu tiên vào năm 1985 bởi Jordan Brand, AJ1 là thiết kế giày bóng rổ đầu tiên của Michael Jordan và có các biến thể high-top, mid và low-top. Thiết kế bởi Peter Moore, AJ1 được cho là một trong những đôi giày thể thao vĩ đại nhất từ trước đến nay.',
//       id: 14,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/ct1564-0053.jpg',
//         'https://kingshoes.vn/data/upload/media/ct1564-0052.jpg',
//         'https://kingshoes.vn/data/upload/media/ct1564-0057.jpg',
//       ]),
//   ShoesModels(
//       name: 'Dunk Orange Pearl',
//       image:
//           'https://kingshoes.vn/data/upload/media/dunk-low-orange-pearl-dd1503-102-king-shoes-sneaker-real-hcm-1624272761.jpeg',
//       money: '3.0',
//       description:
//           'Mới đây, phối màu mới nhất được Nike hé lộ của thiết kế giày vintage bóng rổ này sẽ mang tone màu “Orange Pearl”, tuy cái tên mang màu cam nhưng màu thực sự của nó lại thiên về ánh hồng. Vẫn như thường lệ, phong cách phối màu "two tone" - tức là chỉ phối 2 màu trên một đôi giày ăn khách sẽ được sử dụng, với màu sắc bổ trợ là trắng – trắng ngà cho tone hồng cam gọt ngào.',
//       id: 15,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/dd1503-1023.jpg',
//         'https://kingshoes.vn/data/upload/media/dd1503-1022.jpg',
//         'https://kingshoes.vn/data/upload/media/dd1503-1024.jpg',
//       ]),
//   ShoesModels(
//       name: 'NMD R1',
//       image:
//           'https://kingshoes.vn/data/upload/media/adidas-nmd-r1-ee50861-king-shoes-sneaker-real-uy-tin-nhat-hcm-1624250294.jpeg',
//       money: '3.0',
//       description:
//           'Dòng NMD ứng dụng những công nghệ chạy bộ tốt nhất của adidas vào một thiết kế giày tập đậm chất đường phố. Đôi giày NMD này mang dáng dấp của những đôi giày cổ điển trong kho tàng thiết kế của adidas. Các miếng hỗ trợ mang màu sắc tương phản trên đế giữa khẳng định phong cách nổi bật.họ đã tung ra hai phối màu cơ bản là đen và olive dành cho phiên bản NMD R1 nổi tiếng.',
//       id: 16,
//       status: 'Còn hàng',
//       imageList: [
//         'https://kingshoes.vn/data/upload/media/ee50864.jpg',
//         'https://kingshoes.vn/data/upload/media/ee50865.jpg',
//         'https://kingshoes.vn/data/upload/media/ee50866.jpg',
//       ]),
// ];
// List<ShoesModels> itemss = [
//   ShoesModels(
//       name: 'Vans Old Skool Skate',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a5fcbofw-8.jpg',
//       money: '3.0',
//       description:
//           'Mỗi đôi Vans mang đến sự cảm nhận ban đầu về sức trẻ, sự đơn giản tinh gọn.Thương hiệu giày Vans từ xa xưa gắn liền với thể thao cũng mạnh mẽ và tinh nhạy như trượt ván, trượt tuyết...Người ta dễ dàng bắt gặp những vận động viên, những người chơi Skateboard sử dụng những đôi giày sneaker Vans với phần đế cứng cáp và Form khỏe để giữ thăng bằng.',
//       id: 1,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a5fcbofw-9.jpg?v=1617280197790',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a5fcbofw-3.jpg?v=1617280205097',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a5fcbofw-7.jpg?v=1617280205097',
//       ]),
//   ShoesModels(
//       name: 'Old Skool Mix & Match',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a4u3b2pd-5.jpg',
//       money: '3.0',
//       description:
//           'Vans Old Skool Mix & Match độc đáo với lối phối màu khác biệt cho từng bộ phận của upper, sử dụng các tone màu trong thang Grayscale với sắc độ khác nhau để phân tách và làm nổi bật từng chi tiết. Thiết kế hiện lên như một bức tranh trắng đen đối xứng, không cần màu sắc nổi bật, nhưng cũng đủ làm nên phong cách cực ngầu cho một item đầy cá tính.',
//       id: 2,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4u3b2pd-3.jpg?v=1612259101057',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4u3b2pd-1.jpg?v=1612259098447',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4u3b2pd-4.jpg?v=1612259103843',
//       ]),
//   ShoesModels(
//       name: 'Authentic Pig Suede',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a2z5i18p-4.jpg',
//       money: '3.0',
//       description:
//           'Mẫu giày Vans Authentic Pig Suede có kiểu dáng gọn nhẹ năng động kết hợp cùng chất da cao cấp mềm mại có “năng lực” chống nước và bụi bẩn độc đáo giúp cho người mang có được những trải nghiệm tiện ích và thú vị. Đặc biệt, gam màu vàng “chói chang” khi mix-match với bất kì phong cách nào đều mang đến sự nổi bật và cuốn hút.',
//       id: 3,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a2z5i18p-3.jpg?v=1611921098613',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a2z5i18p-5.jpg?v=1611921098613',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a2z5i18p-6.jpg?v=1611921098613',
//       ]),
//   ShoesModels(
//       name: 'Old Skool 36 DX',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38g219z-7.jpg',
//       money: '3.0',
//       description:
//           'Kiểu dáng Old Skool cổ điển với lót giày được nâng cấp công nghệ Đệm lót UltraCush mang đến một cảm nhận khác biệt với dòng giày cao cấp này của nhà Vans mang lại sự thoải mái & êm ái cho đôi chân. Anaheim Factory 36DX Vintage với chất liệu kết hợp giữa Suede và Canvas. Đặc biệt tông màu trắng ngà đặc biệt trendy được nhiều người tìm kiếm với khả năng phối đồ cực đỉnh.',
//       id: 4,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g219z-5.jpg?v=1611926994217',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g219z-2.jpg?v=1611926994217',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g219z-4.jpg?v=1611926994217',
//       ]),
//   ShoesModels(
//       name: 'Authentic 44 DX',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38en19z-3.jpg',
//       money: '3.0',
//       description:
//           'Đôi giày Vans Authentic Anaheim Factory với tông màu trắng ngà bắt mắt, dễ nhìn, dễ diện cùng chất liệu vải Textile mang đến cho bạn một sự cá tính, thanh lịch nhưng không kém phần nổi bật. Thiết kế truyền thống đơn giản kết hợp với công nghệ UltraCush hiện đại chắc chắn tạo được cảm giác thoải mái, êm nhẹ, đẳng cấp cho người mang dù ở bất kì phong cách nào.',
//       id: 5,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38en19z-4.jpg?v=1611927074670',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38en19z-5.jpg?v=1611927074670',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38en19z-2.jpg?v=1611927074670',
//       ]),
//   ShoesModels(
//       name: 'Vans Sport Suede',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a4bu6so0-1.jpg',
//       money: '3.0',
//       description:
//           'Giày được thiết kế theo phong cách hiện đại, trẻ trung phù hợp cho cả nam và nữ. Đôi giày làm từ chất liệu da lộn mix vải canvas cao cấp.Form giày đi lên chân vừa vặn, các đường chỉ khâu vô cùng chắc chắn và tỉ mỉ đảm bảo hài lòng mọi khách hàng. Màu sắc trắng dễ dàng kết hợp với nhiều trang phục khác nhau theo sở thích bản thân tạo nên 1 set đồ đẹp khi đi chơi, đi học hay dạo phố...',
//       id: 6,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bu6so0-2.jpg?v=1599327513640',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bu6so0-3.jpg?v=1599327513640',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bu6so0-4.jpg?v=1599327513640',
//       ]),
//   ShoesModels(
//       name: 'Era Comfycush Pink',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a3wm9vnl-1.png',
//       money: '3.0',
//       description:
//           'Vans ComfyCush Checkerboard Era được ứng dụng công nghệ ComfyCush hiện đại và chất liệu da lộn/Canvas cao cấp. Thiết kế lần này không chỉ đáp ứng được tính thời trang bởi kiểu dáng Era kinh điển với tone màu Pastel nhẹ nhàng mà còn đảm bảo được chất lượng từ bên trong đệm lót. Ngoài ra họa tiết Checker vừa quen vừa lạ cũng là nét độc đáo cho item này.',
//       id: 7,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a3wm9vnl-2.png?v=1588579452550',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a3wm9vnl-3.png?v=1588579455330',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a3wm9vnl-6.png?v=1588579458240',
//       ]),
//   ShoesModels(
//       name: 'Slip-On Deck Club',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38guvpe-2.png',
//       money: '3.0',
//       description:
//           'Vans Slip-On Deck Club với con số 66 gắn liền với dấu ấn Vans nay được biến tấu một cách độc đáo vào trong thiết kế của dòng giày cổ điển mang đến cho người mang một item đầy màu sắc. Thời trang, nổi bật nhưng vẫn không kém phần tiện dụng là những điểm cộng tuyệt vời cho sản phẩm này khiến các fans nhà Vans không thể ngồi yên.',
//       id: 8,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38guvpe-4.png?v=1588737944747',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38guvpe-3.png?v=1588737951350',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38guvpe-5.png?v=1588737954197',
//       ]),
//   ShoesModels(
//       name: 'Old Skool Off The Wall',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38g1vri-5.png',
//       money: '3.0',
//       description:
//           'Cùng với tất cả ưu điểm và sự quan tâm đến tín đồ hơn ai hết, VANS hoàn xứng đáng được giới trẻ yêu thích các bộ môn nghệ thuật đường phố ưa chuộng trên toàn cầu. Hãy sở hữu VANS OFF THE WALL OLD SKOOL DRESS BLUES TRUE BLUE và thử một lần cảm nhận như thế nào mới được gọi là chất lượng và tâm huyết, sự tinh tế thật sự!',
//       id: 9,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1vri-7.png?v=1553578462360',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1vri-3.png?v=1553578462360',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1vri-2.png?v=1553578462360',
//       ]),
//   ShoesModels(
//       name: 'Old Skool Primary Check',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38g1p0s-2.png',
//       money: '3.0',
//       description:
//           'Hoạ tiết checkerboard không bao giờ là chán với fan VANS, đó là chủ đề sáng tạo vô tận trường tồn năm nay qua năm khác mà không lỗi mốt.Sự kết hợp giữa os thường và checkerboard đã tạo nên 1 đôi giày không chỉ basic mà vẫn nổi bật sự cá tính.',
//       id: 10,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1p0s-3.png?v=1620919723297',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1p0s-5.png?v=1620919711517',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38g1p0s-1.png?v=1620919739597',
//       ]),
//   ShoesModels(
//       name: 'Authentic 44 Dx Red',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a38enmr9-4.png',
//       money: '3.0',
//       description:
//           'Vans Authentic Anaheim Factory với chất liệu vải Textile được dệt một cách tỉ mỉ cùng gam màu đỏ tươi trẻ, năng động chắc chắn là sự lựa chọn của những ai yêu thích sự nổi bật và phong cách cá tính. Giữ nguyên thiết kế truyền thống đơn giản kết hợp công nghệ UltraCush hiện đại, chắc chắn sản phẩm sẽ cho bạn một cảm giác thoải mái êm ái nhất khi đặt chân vào.',
//       id: 11,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38enmr9-2.png?v=1552041382460',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38enmr9-1.png?v=1552041382963',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a38enmr9-3.png?v=1552041381937',
//       ]),
//   ShoesModels(
//       name: 'Authentic All Black',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn000ee3bka-4.png',
//       money: '3.0',
//       description:
//           'Nằm trong bộ 5 huyền thoại của nhà Vans. Nếu bạn quá ngại thắt nhiều dây như oldskool, cũng không thích dáng slipon, mà chỉ thích thấp cổ thì hãy chọn authentic.Phối màu đen full sẽ che khuyết điểm cực tốt nếu chân bạn to ngang, dài quá. Với các bạn nam thì siêu man, còn các bạn nữ thì cực kì cá tính.Các bạn có thể tháo dây giày, dính keo vào 2/3 lưỡi giày để tạo thành 1 đôi giày cho riêng mình.',
//       id: 12,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3bka-2.png?v=1586262255680',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3bka-5.png?v=1586262259730',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3bka-3.png?v=1586262262257',
//       ]),
//   ShoesModels(
//       name: 'Old Skool Alien Ghosts',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn0a4bv5tb1-2.jpg',
//       money: '3.0',
//       description:
//           'Vans trình làng bộ sưu tập Alien Ghosts với ba phiên bản: Old Skool, Slip On và SK8- Hi mang tính biểu tượng. Điểm nhấn chủ đạo của thiết kế này nằm ở phần thân giày là những họa tiết hình ảnh người ngoài hành tinh có “huyền năng” phát sáng khi đi trong bóng tối vô cùng độc đáo. Sử dụng item này trong những mùa lễ hội sắp tới đảm bảo bạn sẽ không hề bị “chìm” đâu nhé!',
//       id: 13,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bv5tb1-4.jpg?v=1584451723297',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bv5tb1-6.jpg?v=1584451728797',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn0a4bv5tb1-1.jpg?v=1584451717420',
//       ]),
//   ShoesModels(
//       name: 'Old Skool Black White',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/45454.png',
//       money: '3.0',
//       description:
//           'Tới nay đôi giày chỉ với phối màu đen trắng này vẫn nằm trong top "Best Seller" của VANS trên toàn thế giới, với kiểu dáng cổ điển cùng "sọc Jazz" huyền thoại hợp thời trang khiến đôi VANS này thật sự trở thành mẫu giày classic bất bại.Được mệnh danh là phiên bản mang "càng cũ càng đẹp" và nhiều phiên bản custom  bậc nhất của nhà VANS.',
//       id: 14,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000d3hy28-2.png?v=1586436309577',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000d3hy28-3.png?v=1586436312567',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000d3hy28-1.png?v=1586436306623',
//       ]),
//   ShoesModels(
//       name: 'Authentic Red White',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/vn000ee3red-4.png',
//       money: '3.0',
//       description:
//           'Sản phẩm Vans Old Skool trở nên vô cùng thịnh hành nhờ sọc Jazz đặc trưng, và đến nay, nó đã sớm trở thành một biểu tượng đặc trưng của hãng giày thể thao VANS. Tất cả các phiên bản màu sắc khác của VANS đều được đông đảo khách hàng đón nhận và không thể không kể đến Vans Old Skool True White Red vì nó dễ dàng kết hợp với bất kì trang phục hay bất kì phong cách khác nhau nào.',
//       id: 15,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3red-2.png?v=1620912562787',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3red-5.png?v=1620912562787',
//         'https://bizweb.dktcdn.net/100/347/923/products/vn000ee3red-1.png?v=1620912562787',
//       ]),
// ];
// List<ShoesModels> itemsss = [
//   ShoesModels(
//       name: 'All Star Love Fearlessly',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/567311c-5.png',
//       money: '3.0',
//       description:
//           'Dòng sản phẩm này được thiết kế rõ ở logo bên hông giày đậm chất sành điệu, đơn giản nhưng nổi bật và đầy tính mạnh mẽ của Converse.Nổi bật chính là dấu ấn trái tim đỏ cùng dòng chữ Love Fearless được thiết kế đẹp mắt.Sản phẩm đều được thiết kế theo tổng thể 2 tông màu đơn giản nhưng nổi bật.Logo mắt cá chân Chuck Taylor được thiết kế trong suốt.',
//       id: 1,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/567311c-1.png?v=1581394432750',
//         'https://bizweb.dktcdn.net/100/347/923/products/567311c-2.png?v=1581394440107',
//         'https://bizweb.dktcdn.net/100/347/923/products/567311c-3.png?v=1581394447207',
//       ]),
//   ShoesModels(
//       name: 'All Star Renew Canvas',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/166373c-6-ae7dd73a-9f5e-4af9-aa01-2e97460723cf.png',
//       money: '3.0',
//       description:
//           'Mặc dù có nguồn gốc từ vỏ chai đã qua sử dụng tưởng chừng cũ kỹ thế, nhưng những thiết kế nằm trong BST Chuck Taylor All Star Renew Canvas vẫn mang được vẻ ngoài vô cùng mới mẻ và bắt mắt. Đặc biệt những item này mà sử dụng trong mùa hè thì không còn gì để chê cả, bởi chúng mang một hiệu quả màu sắc “khỏi phải bàn”.',
//       id: 2,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/166373c-2-b748b23c-c3eb-4314-a6bd-f728875afb99.png?v=1584778767217',
//         'https://bizweb.dktcdn.net/100/347/923/products/166373c-3-75563fbd-cbaf-49df-9cb3-4494863f236d.png?v=1584778776407',
//         'https://bizweb.dktcdn.net/100/347/923/products/166373c-5-d3143b8b-dc2a-4ea2-9f0c-8fd60637f915.png?v=1584778785400',
//       ]),
//   ShoesModels(
//       name: 'All Star CX',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/168569c-5.jpg',
//       money: '3.0',
//       description:
//           'Ở phía trên – upper của All Star Disrupt CX được cải tiến với chất liệu Strech Canvas – Canvas Co Giãn, cho khả năng Fit ôm sát bàn chân nhưng vẫn thoải mái trong thời gian dài. Một điểm tuyệt vời khác của chất liệu này là cách Converse CX giữ được nguyên bề mặt mộc mạc đặc trưng của Canvas',
//       id: 3,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/168569c-1.jpg?v=1602233715530',
//         'https://bizweb.dktcdn.net/100/347/923/products/168569c-2.jpg?v=1602233718160',
//         'https://bizweb.dktcdn.net/100/347/923/products/168569c-6.jpg?v=1602233720650',
//       ]),
//   ShoesModels(
//       name: 'Taylor All Star Logo Play',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/166737c-2.jpg',
//       money: '3.0',
//       description:
//           'Kiểu dáng cổ cao kết hợp thêm các kích thước khác nhau của patch logo Chuck Taylor All Star dạng tròn giúp họa tiết phủ đầy trên thân giày một cách hợp lý nhất mà vẫn không làm rối mắt người nhìn. Item chắc hẳn sẽ là lựa chọn của các tín đồ yêu thích Converse',
//       id: 4,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/166737-4.jpg?v=1598777643333',
//         'https://bizweb.dktcdn.net/100/347/923/products/166737-3.jpg?v=1598777643333',
//         'https://bizweb.dktcdn.net/100/347/923/products/166737-2.jpg?v=1598777643333',
//       ]),
//   ShoesModels(
//       name: 'All Star Archival Camo',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/166715c-1.jpg',
//       money: '3.0',
//       description:
//           'Còn nhớ năm ngoái Converse đã gây ấn tượng với giới trẻ bằng pack Hoop Hunter khi sử dụng họa tiết Camo làm nền chủ đạo. Và lần này cũng không ngoại lệ, Converse Chuck Tyalor All Star Archival Camo - bộ sưu tập tái hiện lại họa tiết rằn ri cá tính mạnh mẽ với tông màu lạ mắt hơn, mang đến chất bụi bặm, phóng khoáng trong từng outfit cho tín đồ sneaker.',
//       id: 5,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/166715c-5.jpg?v=1583774775450',
//         'https://bizweb.dktcdn.net/100/347/923/products/166715c-4.jpg?v=1583774771750',
//         'https://bizweb.dktcdn.net/100/347/923/products/166715c-3.jpg?v=1583774778840',
//       ]),
//   ShoesModels(
//       name: 'All Star Wordmark 2.0',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/165431c-1.jpg',
//       money: '3.0',
//       description:
//           'Vẫn là một mẫu giày mang đậm hơi thở của All Star nhưng lại có dấu ấn riêng  khác, mới lạ, mang màu sắc của thời đại mới. Trong cách phối màu, sử dụng họa tiết và tạo hình, Converse Chuck Taylor All Star Wordmark 2.0 – 165431C là một mẫu giày điển hình của Converser giữa bài toán: vừa giữ được tính đặc trưng của thiết kế huyền thoại vừa mang đến cho người dùng nhiều sự lựa chọn hơn trong mẫu mã sneaker của mình.',
//       id: 6,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/165431c-1.jpg?v=1584452681703',
//         'https://bizweb.dktcdn.net/100/347/923/products/165431c-3.jpg?v=1584452685197',
//         'https://bizweb.dktcdn.net/100/347/923/products/165431c-2.jpg?v=1584452688053',
//       ]),
//   ShoesModels(
//       name: 'All Star Logo Play',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/166984c-5.jpg',
//       money: '3.0',
//       description:
//           'Thân giày bằng chất liệu Canvas nhưng được phủ lên toàn bộ bằng logo Converse All Star quen thuộc ở sau gót giày với nhiều kích thước khác nhau. Với tông màu chủ đạo Đỏ - Xanh giúp bạn có được một item có phối màu khá thời trang và lạ mắt.Không những thế lưỡi gà và gót giày còn được nhấn nhá bằng những tem logo Converse cực xịn.',
//       id: 7,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/166984c-3.jpg?v=1584346421917',
//         'https://bizweb.dktcdn.net/100/347/923/products/166984c-1.jpg?v=1584346428450',
//         'https://bizweb.dktcdn.net/100/347/923/products/166984c-6.jpg?v=1584346425280',
//       ]),
//   ShoesModels(
//       name: 'All Star Iridescent Star',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/566175c-5.jpg',
//       money: '3.0',
//       description:
//           'Có thể nói rằng trong những mùa gần đây, Converse ngày càng cho ra nhiều mẫu giày đa dạng về hình thức và chỉn chu trong từng chi tiết. Không để mất đi bản sắc đặc trưng làm nên tên tuổi của thương hiệu Converse Chuck Taylor, nhưng lại cũng không làm cho khách hàng cảm thấy khó khăn vì ít sự lựa chọn. Mẫu giày Converse Chuck Taylor All Star Iridescent Star vừa ra mắt mới đây là một ví dụ điển hình. ',
//       id: 8,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/566175c-3.jpg?v=1584450579390',
//         'https://bizweb.dktcdn.net/100/347/923/products/566175c-2.jpg?v=1584450583303',
//         'https://bizweb.dktcdn.net/100/347/923/products/566175c-1.jpg?v=1584450586017',
//       ]),
//   ShoesModels(
//       name: 'All Star Move',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/568794c-2.jpg',
//       money: '3.0',
//       description:
//           'Điểm đặc biệt mà ta có thể nhìn thấy bằng mắt thường ở đôi giày này đó chính là phần đế platform dày dặn. Tăng sự nhẹ nhàng khi mang, đôi giày Converse Chuck Taylor All Star Move này có phần đế được nâng cao lên so với phiên bản thông thường. Điều này giúp cho các cô nàng của chúng ta có thể thỏa sức hack chiều cao thoải mái. Các bạn sẽ “ăn gian” được một khoảng chiều cao kha khá đó nhé',
//       id: 9,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/568794c-6.jpg?v=1597673808967',
//         'https://bizweb.dktcdn.net/100/347/923/products/568794c-1.jpg?v=1597673811553',
//         'https://bizweb.dktcdn.net/100/347/923/products/568794c-3.jpg?v=1597673813740',
//       ]),
//   ShoesModels(
//       name: 'All Star VLTG-Back to Earth',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/567046v-2.png',
//       money: '3.0',
//       description:
//           'Mẫu giày cao cổ Chuck Taylor All Star VLTG giúp cho người sử dụng có vẻ ngoài siêu chất và cá tính. Điểm nhấn nổi bật khác của sản phẩm ngoài họa tiết chữ V xếp chồng đó chính là  icon hình ngôi sao được cách điệu ở phần foxing tạo điểm nhấn và sự khác biệt so với các sản phẩm khác.Lớp đế lót OrthoLite giúp duy trì sự thoải mái cho mẫu giày.',
//       id: 10,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/567046v-5.png?v=1584807898237',
//         'https://bizweb.dktcdn.net/100/347/923/products/567046v-3.png?v=1584807911883',
//         'https://bizweb.dktcdn.net/100/347/923/products/567046v-4.png?v=1584807916753',
//       ]),
//   ShoesModels(
//       name: 'All Star Fearless',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/567157c-8.png',
//       money: '3.0',
//       description:
//           'Trong bộ sưu tập Love Fearless mới ra lần này của Converse, vẫn sử dụng chất liệu canvas đặc trưng, nhưng nổi bật chính là dấu ấn trái tim đỏ cùng dòng chữ Love Fearless được thiết kế đẹp mắt nhằm gửi gắm thông điệp: Hãy yêu bản thân trước. Dòng sản phẩm này được thể hiện rõ ở logo bên hông giày với phù hiệu quen thuộc của Giày Converse All Star.',
//       id: 11,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/567157c-6.png?v=1581399172120',
//         'https://bizweb.dktcdn.net/100/347/923/products/567157c-5.png?v=1581399183197',
//         'https://bizweb.dktcdn.net/100/347/923/products/567157c-3.png?v=1581399207087',
//       ]),
//   ShoesModels(
//       name: 'All Star Disrupt CX',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/168563c-7.jpg',
//       money: '3.0',
//       description:
//           'Kiểu dáng cổ cao đầy cá tính và năng độngMàu sắc tinh tế, trẻ trung, thời thượngTích hợp công nghệ hiện đại tiên tiến đem lại sự thoải mái nhất cho đôi chân. Thân giày được làm từ chất liệu Stretch Canvas cho độ fit chân và form chuẩn nhất Đế giữa là một lớp CX Foam Phylon hỗ trợ di chuyển tối đaLớp ngăn ở gót giày được làm từ Foam 3 chiều Đệm lót êm ái.',
//       id: 12,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/168563c-6.jpg?v=1602119327970',
//         'https://bizweb.dktcdn.net/100/347/923/products/168563c-1.jpg?v=1602119331373',
//         'https://bizweb.dktcdn.net/100/347/923/products/168563c-3.jpg?v=1602119334843',
//       ]),
//   ShoesModels(
//       name: 'Chuck 70s Low Top',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/162062c-9.png',
//       money: '3.0',
//       description:
//           'Nhìn qua thì nhiều bạn hay nhầm với đôi Classic, sau đây là 1 số điểm khác biệt tạo nên độ hot của 1970s: Lớp lót dày tạo cảm giác êm ái khi vận động. Phần đế màu trắng ngà vintage được phủ 1 lớp bóng bên ngoài là điểm nhấn riêng cho dòng 1970s, dễ vệ sinh hơn.Vải dày dặn, cứng form hơn.Dây giày dày hơn, cùng màu với phần đế. Tem gót đen 1st-tring - đặc trưng riêng của dòng 1970s.',
//       id: 13,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/162062c-4.png?v=1584259087193',
//         'https://bizweb.dktcdn.net/100/347/923/products/162062c-2.png?v=1584259096367',
//         'https://bizweb.dktcdn.net/100/347/923/products/162062c-1.png?v=1584259099873',
//       ]),
//   ShoesModels(
//       name: '1970s Wahsed Canvas',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/164713-1.png',
//       money: '3.0',
//       description:
//           'Chất liệu Canvas mềm nhẹ, bền chắc, cho bàn chân sự thoải mái nhưng vẫn giữ form.Tone màu xanh mượt mắt, thời trang nhưng không kém phần độc đáo Khoen tròn xỏ dây bằng kim loại cao cấp chống rỉ sét tốt. Đế giày cao su có màu trắng ngà đặc trưng với lớp phủ bóng giúp bạn dễ dàng vệ sinh. Tem logo phía sau gót giày nền đen với font chữ trắng Retro tạo điểm nhấn cho sản phẩm.',
//       id: 14,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/164713-4.png?v=1580924965463',
//         'https://bizweb.dktcdn.net/100/347/923/products/164713-2.png?v=1580924969790',
//       ]),
//   ShoesModels(
//       name: 'All Star CX Ice Blue',
//       image:
//           'https://bizweb.dktcdn.net/thumb/1024x1024/100/347/923/products/169607c-6.jpg',
//       money: '3.0',
//       description:
//           'Converse CX sở hữu những cải tiến đáng giá nhất của hãng từ chất liệu làm nên sản phẩm cho đến bộ đế đầy tính sáng tạo và đột phá,. Tiếp theo là hệ thống đệm bọt CX là kết hợp giữa đế PU và đế Phylon được xếp chồng lên nhau mang lại hiệu ứng thị giác và sự êm ái khi di chuyển. Cuối cùng, là thiết kế đế ngoài làm  tăng cường tính linh hoạt và độ bền cũng như phá cách hơn hẳn.',
//       id: 15,
//       status: 'Còn hàng',
//       imageList: [
//         'https://bizweb.dktcdn.net/100/347/923/products/169607c-3.jpg?v=1607414453840',
//         'https://bizweb.dktcdn.net/100/347/923/products/169607c-2.jpg?v=1607414461517',
//         'https://bizweb.dktcdn.net/100/347/923/products/169607c-1.jpg?v=1607414465707',
//       ]),
// ];
