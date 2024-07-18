import 'package:firebase_ui_firestore/firebase_ui_firestore.dart';
import 'package:flutflix_tutorial/data/index.dart';
import 'package:flutflix_tutorial/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Flutflix'),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              Get.defaultDialog(
                title: 'Sign Out',
                middleText: 'Are you sure you want to sign out?',
                textConfirm: 'Sign Out',
                onConfirm: () {
                  Get.back();
                  Get.find<AuthService>().signOut();
                },
                textCancel: 'Cancel',
              );
            },
          ),
        ],
      ),
      body: SafeArea(
        child: _buildBody(context),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 16),
          _buildProfile(),
          const SizedBox(height: 16),
          _buildFavorites(),
        ],
      ),
    );
  }

  Widget _buildProfile() {
    return Column(
      children: [
        CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
            Get.find<AuthService>().user?.photoURL ?? '',
          ),
        ),
        const SizedBox(height: 16),
        Text(
          Get.find<AuthService>().user?.displayName ?? '',
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          Get.find<AuthService>().user?.email ?? '',
          style: const TextStyle(
            fontSize: 16,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _buildFavorites() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Text(
            'My favorite movies',
            style: TextStyle(
              fontSize: 25,
            ),
          ),
        ),
        FirestoreQueryBuilder<Movie?>(
          query: Get.find<FavoriteService>().getFavorites()!.orderBy('title'),
          builder: (context, snapshot, _) {
            if (snapshot.isFetching) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
            if (snapshot.hasError) {
              return const Text('Something went wrong');
            }
            return GridView.builder(
              itemCount: snapshot.docs.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                childAspectRatio: 0.7,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
              ),
              shrinkWrap: true,
              padding: const EdgeInsets.all(16),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                // if we reached the end of the currently obtained items, we try to
                // obtain more items
                if (snapshot.hasMore && index + 1 == snapshot.docs.length) {
                  // Tell FirestoreQueryBuilder to try to obtain more items.
                  // It is safe to call this function from within the build method.
                  snapshot.fetchMore();
                }

                final movie = snapshot.docs[index].data();
                if (movie == null) {
                  return const SizedBox();
                }
                return MoviePosterCard(
                  movie: movie,
                  size: Size.infinite,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
