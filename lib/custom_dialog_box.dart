import 'package:flutter/material.dart';

showCustomDialogBox(
  BuildContext context, {
  required String title,
  required String description,
}) {
  return showGeneralDialog(
    context: context,
    barrierLabel: 'Dialog Barrier',
    barrierColor: Colors.black.withValues(alpha: 0.5),
    barrierDismissible: false,
    transitionDuration: Duration(milliseconds: 300),
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0, end: 1.0).animate(
          CurvedAnimation(
            parent: animation,
            curve: Interval(0.00, 0.50, curve: Curves.linear),
          ),
        ),
        child: child,
      );
    },
    pageBuilder: (context, animation, secondaryAnimation) {
      return CustomDialogBox(title: title, description: description);
    },
  );
}

class CustomDialogBox extends StatelessWidget {
  final String title, description;
  const CustomDialogBox({
    super.key,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: false,
      child: Dialog(
        elevation: 0,
        clipBehavior: Clip.antiAlias,
        backgroundColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Stack(
          children: [
            Container(
              width: width,
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.only(
                top: 24,
                left: 20,
                right: 20,
                bottom: 80,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    height: 1.5,
                    margin: const EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(
                        12,
                        (index) => Container(
                          width: 6,
                          height: 1.5,
                          color: Colors.black,
                          margin: const EdgeInsets.symmetric(horizontal: 2),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Text(
                      description,
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: MaterialButton(
                      elevation: 4,
                      clipBehavior: Clip.antiAlias,
                      color: Theme.of(context).primaryColor,
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Text(
                        'OK',
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
