import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';

///Toast For Desktop and Tablet View
void toastSuccess(BuildContext context, String title, String description) {
  return MotionToast.success(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastError(BuildContext context, String title, String description) {
  return MotionToast.error(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastWarning(BuildContext context, String title, String description) {
  return MotionToast.warning(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastInfo(BuildContext context, String title, String description) {
  return MotionToast.info(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

///Toast For Mobile View
void toastMSuccess(BuildContext context, String title, String description) {
  return MotionToast.success(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 5),
    animationType: AnimationType.fromBottom,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.bottom,
    barrierColor: Colors.black.withOpacity(0),
    width: 250,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastMError(BuildContext context, String title, String description) {
  return MotionToast.error(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastMWarning(BuildContext context, String title, String description) {
  return MotionToast.warning(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}

void toastMInfo(BuildContext context, String title, String description) {
  return MotionToast.info(
    title: Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    description: Text(description),
    borderRadius: 2,
    toastDuration: const Duration(seconds: 2),
    animationType: AnimationType.fromRight,
    animationDuration: const Duration(seconds: 1),
    position: MotionToastPosition.top,
    barrierColor: Colors.black.withOpacity(0),
    width: 300,
    height: 60,
    dismissable: true,
  ).show(context);
}
