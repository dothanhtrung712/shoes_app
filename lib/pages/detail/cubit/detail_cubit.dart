import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shoes_app/domain/model/load_cart.dart';
part 'detail_state.dart';
part 'detail_cubit.freezed.dart';

class DetailCubit extends Cubit<DetailState> {
  DetailCubit() : super(DetailInitial());

  void onInit(String id) async {
    emit(LoadingState(true));
    try {
      final cartItems = await _loadCartItems();

      final items = cartItems.where((item) => item.id == id).toList();

      if (items.isNotEmpty) {
        emit(DetailLoadedState(items[0]));
      }
    } catch (error) {
      emit(DetailExceptionState(error.toString(), ''));
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
}
