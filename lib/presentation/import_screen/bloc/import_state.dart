// ignore_for_file: must_be_immutable

part of 'import_bloc.dart';

/// Represents the state of Import in the application.
class ImportState extends Equatable {
  ImportState({this.importModelObj});

  ImportModel? importModelObj;

  @override
  List<Object?> get props => [
        importModelObj,
      ];
  ImportState copyWith({ImportModel? importModelObj}) {
    return ImportState(
      importModelObj: importModelObj ?? this.importModelObj,
    );
  }
}
