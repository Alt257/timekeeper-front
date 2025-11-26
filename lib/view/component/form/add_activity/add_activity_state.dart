part of 'add_activity_bloc.dart';

@freezed
class AddActivityState with _$AddActivityState {

  // 1. Initial state (Form is loading or blank)
  const factory AddActivityState.initial() = _Initial;

  // 2. User is interacting (Holds current form values & validation errors)
  const factory AddActivityState.filling({
    ActivityType? selectedType,
    Item? selectedItem,
    // Add other form fields here if the Bloc manages them (e.g., item, notes)
    // String? noteError, // Example of field-specific error
  }) = _Filling;

  // 3. Submission in progress (Show loading spinner, disable buttons)
  const factory AddActivityState.submitting() = _Submitting;

  // 4. Submission successful (Trigger navigation or clear form)
  const factory AddActivityState.success(
    Activity activity,
  ) = _Success;

  // 5. Submission failed (Show error snackbar or alert)
  const factory AddActivityState.failure(
    String errorMessage,
  ) = _Failure;
}
