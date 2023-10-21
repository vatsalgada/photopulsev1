import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:photo_pulse_v1/presentation/import_screen/models/import_model.dart';
part 'import_event.dart';
part 'import_state.dart';

/// A bloc that manages the state of a Import according to the event that is dispatched to it.
class ImportBloc extends Bloc<ImportEvent, ImportState> {
  ImportBloc(ImportState initialState) : super(initialState) {
    on<ImportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ImportInitialEvent event,
    Emitter<ImportState> emit,
  ) async {}
}
