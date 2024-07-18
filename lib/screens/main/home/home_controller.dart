import 'package:flutflix_tutorial/data/index.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final _movieApi = MovieApi(service: MovieService.create());

  final trendingState = const BaseState.initial().obs;
  final trendingMovies = <Movie>[].obs;

  final topRatedState = const BaseState.initial().obs;
  final topRatedMovies = <Movie>[].obs;

  final upcomingState = const BaseState.initial().obs;
  final upcomingMovies = <Movie>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
    print('HomeController onInit called');
  }

  @override
  void onReady() {
    super.onReady();
    print('HomeController onReady called');
  }

  @override
  void onClose() {
    super.onClose();
    print('HomeController onClose called');
  }

  void fetchData() {
    getTrendingMovies();
    getTopRatedMovies();
    getUpcomingMovies();
  }

  void getTrendingMovies() async {
    trendingState.value =
        trendingState.value.copyWith(status: BaseStatus.loading);
    try {
      trendingMovies.value = await _movieApi.getTrendingMovies();
      trendingState.value =
          trendingState.value.copyWith(status: BaseStatus.success);
    } catch (e) {
      trendingState.value = trendingState.value.copyWith(
        status: BaseStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }

  void getTopRatedMovies() async {
    topRatedState.value =
        topRatedState.value.copyWith(status: BaseStatus.loading);
    try {
      topRatedMovies.value = await _movieApi.getTopRatedMovies();
      topRatedState.value =
          topRatedState.value.copyWith(status: BaseStatus.success);
    } catch (e) {
      topRatedState.value = topRatedState.value.copyWith(
        status: BaseStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }

  void getUpcomingMovies() async {
    upcomingState.value =
        upcomingState.value.copyWith(status: BaseStatus.loading);
    try {
      upcomingMovies.value = await _movieApi.getUpcomingMovies();
      upcomingState.value =
          upcomingState.value.copyWith(status: BaseStatus.success);
    } catch (e) {
      upcomingState.value = upcomingState.value.copyWith(
        status: BaseStatus.failure,
        errorMessage: e.toString(),
      );
    }
  }
}
