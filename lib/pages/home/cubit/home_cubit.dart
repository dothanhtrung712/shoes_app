import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoes_app/domain/model/load_cart.dart';
import 'package:shoes_app/domain/model/load_home_data.dart';
part 'home_state.dart';
part 'home_cubit.freezed.dart';

class HomeCubit extends Cubit<HomeState> {
  late LoadHomeData _loadHomeData;
  HomeCubit() : super(HomeInitial());

  void onInit() async {
    emit(LoadingState(true));
    try {
      final cartItems = await _loadCartItems();

      _loadHomeData = LoadHomeData(cart: LoadCartResult(list: cartItems));

      emit(HomeLoadedState(_loadHomeData));
    } catch (error) {
      emit(HomeExceptionState(error.toString(), ''));
    }

    emit(LoadingState(false));
  }

  void onAddItemToCart(
      {required String name,
      required int amount,
      required double money,
      required String id,
      required String image}) async {
    emit(LoadingState(true));
    try {
      final cartFireStore = FirebaseFirestore.instance.collection('cart');

      final cartItems = await _loadCartItems();

      final ids = cartItems.map((item) => item.id!).toList();

      if (!ids.contains(id)) {
        //add new item
        await cartFireStore.add({
          'amount': amount,
          'id': id,
          'image': image,
          'money': money,
          'name': name
        });
      } else {
        //update amount
        await _updateCartItemAmount(id, amount);
      }

      final newData = await _loadCartItems();

      _loadHomeData = LoadHomeData(cart: LoadCartResult(list: newData));

      emit(HomeLoadedState(_loadHomeData));
    } catch (error) {
      emit(HomeExceptionState(error.toString(), ''));
    }
    emit(LoadingState(false));
  }

  Future<List<LoadCardItemResult>> _loadCartItems() async {
    final cartFireStore = FirebaseFirestore.instance.collection('cart');
    final cartCollection = await cartFireStore.get();

    final cartItems = cartCollection.docs.map((doc) {
      final data = doc.data();
      return LoadCardItemResult(
          amount: data['amount'],
          id: data['id'],
          image: data['image'],
          money: data['money'],
          name: data['name']);
    }).toList();

    return cartItems;
  }

  Future<void> _updateCartItemAmount(String id, int amount) async {
    final cartFireStore = FirebaseFirestore.instance.collection('cart');
    final cartCollection = await cartFireStore.get();

    final docs =
        cartCollection.docs.where((doc) => doc.data()['id'] == id).toList();

    if (docs.isNotEmpty) {
      if (amount != 0) {
        await cartFireStore.doc(docs[0].id).update({'amount': amount});
      } else {
        await cartFireStore.doc(docs[0].id).delete();
      }
    }
  }
}
