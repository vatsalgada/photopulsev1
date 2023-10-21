// ignore_for_file: must_be_immutable

part of 'import_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Import widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ImportEvent extends Equatable {}

/// Event that is dispatched when the Import widget is first created.
class ImportInitialEvent extends ImportEvent {
  @override
  List<Object?> get props => [];
}
