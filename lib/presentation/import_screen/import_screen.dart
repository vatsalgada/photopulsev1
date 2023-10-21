import 'bloc/import_bloc.dart';
import 'models/import_model.dart';
import 'package:flutter/material.dart';
import 'package:photo_pulse_v1/core/app_export.dart';

class ImportScreen extends StatelessWidget {
  const ImportScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ImportBloc>(
      create: (context) => ImportBloc(ImportState(
        importModelObj: ImportModel(),
      ))
        ..add(ImportInitialEvent()),
      child: ImportScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<ImportBloc, ImportState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 39.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 17.v),
                  SizedBox(
                    height: 243.v,
                    width: 252.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: 256.adaptSize,
                            width: 256.adaptSize,
                            decoration: BoxDecoration(
                              color: appTheme.red200,
                              borderRadius: BorderRadius.circular(
                                126.h,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: 192.v,
                            width: 80.h,
                            child: Stack(
                              alignment: Alignment.topCenter,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle,
                                  height: 107.v,
                                  width: 80.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle80x80,
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  alignment: Alignment.topCenter,
                                  margin: EdgeInsets.only(top: 51.v),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgRectangle1,
                                  height: 80.adaptSize,
                                  width: 80.adaptSize,
                                  alignment: Alignment.topCenter,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 84.v),
                  Text(
                    "lbl_welcome_anon".tr,
                    style: CustomTextStyles.headlineSmallSemiBold,
                  ),
                  SizedBox(height: 35.v),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgPinterestlogo1,
                          height: 58.v,
                          width: 65.h,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 17.v,
                            bottom: 15.v,
                          ),
                          child: Text(
                            "msg_import_from_pinterest".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 16.v),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgUnsplashlog1,
                          height: 46.v,
                          width: 65.h,
                          margin: EdgeInsets.only(bottom: 4.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            top: 11.v,
                            bottom: 13.v,
                          ),
                          child: Text(
                            "msg_import_from_unsplash".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 12.v,
                    ),
                    decoration: AppDecoration.fillRed.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder20,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgAddimages1,
                          height: 58.adaptSize,
                          width: 58.adaptSize,
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 20.h,
                            top: 18.v,
                            bottom: 14.v,
                          ),
                          child: Text(
                            "msg_import_from_your".tr,
                            style: theme.textTheme.titleLarge,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
