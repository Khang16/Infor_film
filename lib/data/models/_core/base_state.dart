import 'package:equatable/equatable.dart';

enum BaseStatus {
  initial,
  loading,
  success,
  failure,
}

class BaseState extends Equatable {
  const BaseState._({
    this.status = BaseStatus.initial,
    this.errorMessage,
  });

  const BaseState.initial() : this._();
  const BaseState.error(String errMessage)
      : this._(
          status: BaseStatus.failure,
          errorMessage: errMessage,
        );

  final BaseStatus status;
  final String? errorMessage;

  bool get isLoading => status == BaseStatus.loading;
  bool get isFailure => status == BaseStatus.failure;

  @override
  List<Object> get props => [status];

  BaseState copyWith({
    BaseStatus? status,
    String? errorMessage,
  }) {
    return BaseState._(
      status: status ?? this.status,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }
}
