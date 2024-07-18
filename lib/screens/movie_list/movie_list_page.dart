import 'package:flutflix_tutorial/data/index.dart';
import 'package:flutflix_tutorial/screens/index.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'movie_list_controller.dart';

class MovieListPage extends StatefulWidget {
  const MovieListPage({super.key, required this.type});

  final MovieListType type;

  @override
  State<MovieListPage> createState() => _MovieListPageState();
}

class _MovieListPageState extends State<MovieListPage> {
  late final MovieListController _controller;

  @override
  void initState() {
    _controller = Get.put(MovieListController(widget.type));
    super.initState();
  }

  @override
  void dispose() {
    Get.delete<MovieListController>();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.type.name} Movies'),
      ),
      body: SafeArea(child: _buildBody(context)),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Scrollbar(
      child: PagedListView.separated(
        padding: const EdgeInsets.all(8),
        pagingController: _controller.pagingController,
        builderDelegate: PagedChildBuilderDelegate<Movie>(
          itemBuilder: (context, movie, index) {
            return MovieListTile(movie: movie);
          },
          firstPageErrorIndicatorBuilder: (context) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Something went wrong'),
                  TextButton(
                    onPressed: () => _controller.pagingController.refresh(),
                    child: const Text('Retry'),
                  ),
                ],
              ),
            );
          },
          noItemsFoundIndicatorBuilder: (context) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('No movies found'),
                ],
              ),
            );
          },
        ),
        separatorBuilder: (context, index) {
          return const SizedBox(height: 8);
        },
      ),
    );
  }
}
