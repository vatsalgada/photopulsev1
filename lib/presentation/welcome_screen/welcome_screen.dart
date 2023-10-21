import 'bloc/welcome_bloc.dart';
import 'models/welcome_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_pulse_v1/core/app_export.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeBloc>(
        create: (context) =>
            WelcomeBloc(WelcomeState(welcomeModelObj: WelcomeModel()))
              ..add(WelcomeInitialEvent()),
        child: WelcomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<WelcomeBloc, WelcomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(horizontal: 12.h),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            margin: EdgeInsets.only(
                                left: 102.h, top: 133.v, right: 102.h),
                            padding: EdgeInsets.symmetric(
                                horizontal: 20.h, vertical: 23.v),
                            decoration: AppDecoration.outlineBlack.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder8),
                            child: Container(
                                width: 119.h,
                                child: Text("lbl_photo_pulse".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: theme.textTheme.displayMedium))),
                        Spacer(),
                        Text("msg_welcome_to_photo".tr,
                            style: theme.textTheme.headlineSmall),
                        SizedBox(height: 69.v),
                        SizedBox(
                            width: 364.h,
                            child: Text("msg_generate_high_quality".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: CustomTextStyles.titleLarge22)),
                        SizedBox(height: 110.v),
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowright,
                            height: 41.v,
                            width: 70.h,
                            onTap: () {
                              onTapImgArrowrightone(context);
                            }),
                        SizedBox(height: 50.v)
                      ]))));
    });
  }

  /// Navigates to the importScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the importScreen.
  onTapImgArrowrightone(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.importScreen,
    );
  }
}
