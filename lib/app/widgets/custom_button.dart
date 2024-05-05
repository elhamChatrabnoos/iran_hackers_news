import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onPressed,
    required this.text,
    this.buttonColor,
    this.borderColor,
    this.paddingSize,
    this.textColor,
    this.textSize,
    this.borderRadius,
    this.width,
    this.height,
    this.isLoading = false,
    this.enabled = true,
    this.fillColor,
    this.borderWidth,
    this.widget,
    this.visualDensity,
  }) : super(key: key);

  final Function()? onPressed;
  final String text;
  final Color? buttonColor;
  final Color? borderColor;
  final double? paddingSize;
  final Color? textColor;
  final Color? fillColor;
  final double? textSize;
  final double? borderRadius;
  final double? width;
  final double? height;
  final bool? isLoading;
  final bool? enabled;
  final double? borderWidth;
  final Widget? widget;
  final VisualDensity? visualDensity;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width == 0 ? null : width ?? MediaQuery.of(context).size.width,
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(0),
          visualDensity: visualDensity ??
              (paddingSize == 0
                  ? const VisualDensity(
                      horizontal: -3,
                      vertical: -3,
                    )
                  : null),
          foregroundColor:
              MaterialStateProperty.all(textColor ?? Colors.white),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius ?? 3),
              side: BorderSide(
                color: borderColor ?? buttonColor ?? Colors.green,
                width: borderWidth ?? 0.5,
              ),
            ),
          ),
          padding: MaterialStateProperty.all(EdgeInsets.all(paddingSize ?? 10)),
          alignment: Alignment.center,
          backgroundColor: enabled!
              ? MaterialStateProperty.all(buttonColor ?? Colors.grey)
              : MaterialStateProperty.all(buttonColor?.withOpacity(0.5) ??
                  Colors.grey.withOpacity(0.5)),
        ),
        onPressed: enabled != null && enabled! ? onPressed : null,
        child:
            isLoading!
                ? const SizedBox(
                    height: 20,
                    width: 20,
                    child:  CircularProgressIndicator(color: Colors.white)
                  )
                :
            Container(
          padding: EdgeInsets.zero,
          child: widget ??
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: textSize,
                ),
              ),
        ),
      ),
    );
  }
}
