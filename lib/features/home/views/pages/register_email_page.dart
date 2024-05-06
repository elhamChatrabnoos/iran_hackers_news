import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:hackers_news/app/config/app_size.dart';
import 'package:hackers_news/app/config/app_texts.dart';
import 'package:hackers_news/app/config/app_theme.dart';
import 'package:hackers_news/app/routers/route_names.dart';
import 'package:hackers_news/app/routers/route_pages.dart';
import 'package:hackers_news/app/widgets/custom_app_bar.dart';
import 'package:hackers_news/app/widgets/custom_button.dart';
import 'package:hackers_news/app/widgets/custom_text.dart';
import 'package:hackers_news/app/widgets/custom_text_field.dart';
import 'package:hackers_news/features/home/controllers/home_controller.dart';

class RegisterEmailPage extends GetView<HomeController> {
  const RegisterEmailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      shrinkWrap: true,
      slivers: [
        const CustomAppBar(title: AppText.addEmail),
        SliverToBoxAdapter(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(50),
              child: Form(
                key: controller.formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CustomText(
                      text: AppText.emailFormText,
                      fontSize: AppSize.medium_2,
                      maxLine: 2,
                    ),
                    SizedBox(height: 20),
                    const CustomText(
                        text: '*${AppText.email}', fontSize: AppSize.medium_2),
                    const SizedBox(height: 10),
                    CustomTextField(
                        checkValidation: (p0) {
                          if (p0!.isEmpty ||
                              !(p0.endsWith('@gmail.com') ||
                                  p0.endsWith('@email.com') ||
                                  p0.endsWith('@yahoo.com'))) {
                            return AppText.invalidValue;
                          }
                        },
                        controller: controller.emailController,
                        enableBorder: true),
                    const SizedBox(height: 20),
                    const CustomText(
                        text: AppText.phoneNumber, fontSize: AppSize.medium_2),
                    const SizedBox(height: 10),
                    CustomTextField(
                      checkValidation: (p0) {
                        if (p0!.isNotEmpty) {
                          if (!p0.startsWith('0')) {
                            return AppText.invalidValue;
                          }
                        }
                      },
                      controller: controller.phoneNumberController,
                      enableBorder: true,
                      keyboardType: TextInputType.number,
                      maxLength: 11,
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        CustomText(text: AppText.privacyPolicyTxt),
                        InkWell(
                          splashColor: Colors.transparent,
                          onTap: () {
                            Get.toNamed(RoutesName.privacyAndPolicyPage);
                          },
                          child: CustomText(
                            text: AppText.privacyPolicyTxt2,
                            textDecoration: TextDecoration.underline,
                            fontColor: Colors.blue,
                          ),
                        ),
                        CustomText(text: AppText.privacyPolicyTxt3),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Obx(
                      () => CustomButton(
                        onPressed: () {
                          if (controller.formKey.currentState!.validate()) {
                            controller.sendEmail();
                          }
                        },
                        text: AppText.send,
                        fillColor: AppTheme.primary,
                        paddingSize: 15,
                        borderRadius: 10,
                        buttonColor: AppTheme.primary,
                        isLoading: controller.emailIsSaving.value,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
