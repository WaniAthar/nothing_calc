import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nothing_calc/constants/constants.dart';
import 'package:nothing_calc/controllers/home_screen_controller.dart';
import 'package:nothing_calc/views/widgets/button.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(),
        body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Expanded(
            child: Center(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 15),
                height: 100.h,
                child: SingleChildScrollView(
                  controller:
                      context.watch<HomeScreenProvider>().scrollController,
                  child: Column(children: [
                    Text(
                      context.watch<HomeScreenProvider>().expression,
                      style: TextStyle(
                          fontFamily: Fonts.ndot,
                          color: AppColours.onSecondary,
                          fontSize: 30.sp),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Text(
                      context.watch<HomeScreenProvider>().result,
                      style: TextStyle(
                          fontFamily: Fonts.ndot,
                          color: AppColours.onSecondary,
                          fontSize: 23.sp),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 380.h,
              margin: const EdgeInsets.all(15),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 6.sp,
                  crossAxisSpacing: 6.sp,
                  crossAxisCount: 4,
                ),
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("%");
                      },
                      buttonText: "%",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("(");
                      },
                      buttonText: "(",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression(")");
                      },
                      buttonText: ")",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("/");
                      },
                      buttonText: "/",
                      buttonColor: AppColours.onPrimary,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("7");
                      },
                      buttonText: "7",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("8");
                      },
                      buttonText: "8",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("9");
                      },
                      buttonText: "9",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("X");
                      },
                      buttonText: "X",
                      buttonColor: AppColours.onPrimary,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("4");
                      },
                      buttonText: "4",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("5");
                      },
                      buttonText: "5",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("6");
                      },
                      buttonText: "6",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("-");
                      },
                      buttonText: "-",
                      buttonColor: AppColours.onPrimary,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("1");
                      },
                      buttonText: "1",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("2");
                      },
                      buttonText: "2",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("3");
                      },
                      buttonText: "3",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("+");
                      },
                      buttonText: "+",
                      buttonColor: AppColours.onPrimary,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context.read<HomeScreenProvider>().ac();
                      },
                      buttonText: "AC",
                      buttonColor: AppColours.onSecondary,
                      buttonTextColor: AppColours.onPrimary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression("0");
                      },
                      buttonText: "0",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context
                            .read<HomeScreenProvider>()
                            .generateExpression(".");
                      },
                      buttonText: ".",
                      buttonColor: AppColours.primaryVariant,
                      buttonTextColor: AppColours.onSecondary),
                  CalcButton(
                      onPressed: () {
                        context.read<HomeScreenProvider>().calculateResult();
                      },
                      buttonText: "=",
                      buttonColor: AppColours.onPrimary,
                      buttonTextColor: AppColours.onSecondary)
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
