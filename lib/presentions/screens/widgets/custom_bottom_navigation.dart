import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

// ✂️ الكلاس المساعد لقص المسار المنحني
class CurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    final w = size.width;
    const curveRadius = 30.0; // نصف قطر الانحناء (لزر 60x60)

    path.lineTo((w / 2) - curveRadius * 2, 0);

    // بدء الانحناء للأسفل
    path.arcToPoint(
      Offset((w / 2) + curveRadius * 2, 0),
      radius: const Radius.circular(curveRadius * 2.5),
      clockwise: false,
    );

    path.lineTo(w, 0);
    path.lineTo(w, size.height);
    path.lineTo(0, size.height);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

// الويدجت الرئيسي لشريط التنقل
class CustomBottomNavigation extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemSelected;

  const CustomBottomNavigation({
    super.key,
    required this.selectedIndex,
    required this.onItemSelected,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90, // ارتفاع إجمالي أكبر للسماح للزر العائم بالظهور
      color: AppColors.backgroundScaffold,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // 1. الشريط المنحني (المحدد)
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: CurveClipper(),
              child: Container(
                height: 70, // ارتفاع الشريط نفسه
                decoration: BoxDecoration(
                    color: AppColors.darkBlue,
                    boxShadow: [
                      BoxShadow(color: Colors.black.withOpacity(0.3), blurRadius: 10)
                    ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // زر القيادة (0)
                    _buildIcon(Icons.drive_eta, 0, context),

                    const SizedBox(width: 80), // مساحة للزر العائم

                    // زر الإعدادات/تسجيل الخروج (2)
                    _buildIcon(Icons.settings, 2, context),
                  ],
                ),
              ),
            ),
          ),

          // 2. الزر العائم المركزي (1)
          Positioned(
            left: 0,
            right: 0,
            top: -25, // رفع الزر فوق الشريط المنحني
            child: Center(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    color: AppColors.mangoYellow,
                    shape: BoxShape.circle,
                    border: Border.all(color: AppColors.backgroundScaffold, width: 5)
                ),
                child: InkWell(
                  onTap: () => onItemSelected(1),
                  borderRadius: BorderRadius.circular(50),
                  child: const Icon(Icons.home, color: AppColors.darkBlue, size: 30),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIcon(IconData icon, int index, BuildContext context) {
    return InkWell(
      onTap: () => onItemSelected(index),
      borderRadius: BorderRadius.circular(50),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: Icon(
          icon,
          color: selectedIndex == index ? AppColors.mangoYellow : Colors.white70,
          size: 30,
        ),
      ),
    );
  }
}