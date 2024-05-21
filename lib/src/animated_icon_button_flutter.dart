import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnimatedIconButton extends StatefulWidget {
  final String text;
  final IconData iconData;
  final Color selectedColor;
  final Color unSelectedColor;

  final Color textSelectedColor;

  final Color textUnselectedColor;
  final Color iconUnselectedColor;
  final Color iconSelectedColor;

  const AnimatedIconButton(
      {Key? key,
      required this.text,
      required this.iconData,
      this.selectedColor = const Color(0xFFFFD700),
      this.unSelectedColor = const Color(0xFF708090),
      this.textSelectedColor = const Color(0xFFFFD700),
      this.textUnselectedColor = const Color(0xFF708090),
      this.iconSelectedColor = const Color(0xFFFFD700),
      this.iconUnselectedColor = const Color(0xFF708090)})
      : super(key: key);

  @override
  AnimatedButtonState createState() => AnimatedButtonState();
}

class AnimatedButtonState extends State<AnimatedIconButton>
    with SingleTickerProviderStateMixin {
  bool isFavorite = false;
  bool isAnimating = false;
  bool isButtonPressed = false;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            GestureDetector(
              onTap: () {
                if (!isAnimating) {
                  buttonPressed();
                  setState(() {
                    isFavorite = !isFavorite;
                    isAnimating = true;

                    Future.delayed(const Duration(milliseconds: 500), () {
                      setState(() {
                        isAnimating = false;
                      });
                    });
                  });
                }
              },
              child: Container(
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 16,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: isButtonPressed
                      ? [
                          // Bottom right
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(2, 2),
                            blurRadius: 15,
                          ),
                          // Top left
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-2, -2),
                            blurRadius: 20,
                          ),
                        ]
                      : [
                          // Bottom right
                          BoxShadow(
                            color: Colors.grey.shade400,
                            offset: const Offset(6, 6),
                            blurRadius: 20,
                          ),
                          // Top left
                          const BoxShadow(
                            color: Colors.white,
                            offset: Offset(-6, -6),
                            blurRadius: 20,
                          ),
                        ],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeInOut,
                      width: 35,
                      // Fixed width to accommodate the largest size
                      height: 35,
                      // Fixed height to accommodate the largest size
                      alignment: Alignment.center,
                      child: Icon(
                        widget.iconData,
                        color: isFavorite
                            ? widget.iconSelectedColor
                            : widget.iconUnselectedColor,
                        size: isAnimating ? 30 : 20,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      widget.text,
                      style: GoogleFonts.getFont(
                        'Roboto',
                        textStyle: TextStyle(
                            color: isFavorite
                                ? widget.textSelectedColor
                                : widget.textUnselectedColor),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (isAnimating)
              Positioned(
                left: 0,
                child: TweenAnimationBuilder<double>(
                  duration: const Duration(milliseconds: 400),
                  tween: Tween<double>(
                    begin: 0.0,
                    end: MediaQuery.of(context).size.width / 3,
                  ),
                  builder: (context, value, child) {
                    return Container(
                      width: value,
                      height: MediaQuery.of(context).size.height / 16,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: isFavorite
                              ? [
                                  widget.selectedColor.withOpacity(0.5),
                                  widget.selectedColor.withOpacity(0.2),
                                ]
                              : [
                                  widget.unSelectedColor.withOpacity(0.5),
                                  widget.unSelectedColor.withOpacity(0.2),
                                ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    );
                  },
                ),
              ),
          ],
        ),
    );
  }

  void buttonPressed() {
    setState(() {
      isButtonPressed = true;
    });
    Future.delayed(const Duration(milliseconds: 400), () {
      setState(() {
        isButtonPressed = false;
      });
    });
  }
}
