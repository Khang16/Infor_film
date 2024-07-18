import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutflix_tutorial/data/index.dart';
import 'package:get/get.dart';

class FavoriteService extends GetxService {
  Future<bool> isFavorite(Movie movie) async {
    try {
      final uid = Get.find<AuthService>().user?.uid;
      if (uid != null) {
        final snapshot = await FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('favorites')
            .doc(movie.id.toString())
            .get();
        return snapshot.exists;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Movie fromFireStore(DocumentSnapshot<Map<String, dynamic>> snapshot,
      SnapshotOptions? options) {
    try {
      return Movie.fromJson(snapshot.data()!);
    } catch (e) {
      rethrow;
    }
  }

  Map<String, dynamic> toFireStore(Movie movie, SetOptions? options) {
    try {
      return movie.toJson();
    } catch (e) {
      rethrow;
    }
  }

  CollectionReference<Movie>? getFavorites() {
    try {
      final uid = Get.find<AuthService>().user?.uid;
      if (uid != null) {
        return FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('favorites')
            .withConverter<Movie>(
              fromFirestore: fromFireStore,
              toFirestore: toFireStore,
            );
      }
      return null;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> addFavorite(Movie movie) async {
    try {
      final uid = Get.find<AuthService>().user?.uid;
      if (uid != null) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('favorites')
            .doc(movie.id.toString())
            .set(
              movie.toJson(),
            );
        return true;
      }
      return false;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> removeFavorite(Movie movie) async {
    try {
      final uid = Get.find<AuthService>().user?.uid;
      if (uid != null) {
        FirebaseFirestore.instance
            .collection('users')
            .doc(uid)
            .collection('favorites')
            .doc(movie.id.toString())
            .delete();
        return false;
      }
      return true;
    } catch (e) {
      Get.snackbar('Thông báo', e.toString());
      throw e; // Add a throw statement to ensure that an exception is thrown in case of an error.
    }
  }
}
