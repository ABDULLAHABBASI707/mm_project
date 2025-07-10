// import 'package:flutter/material.dart';
// import 'package:lucide_icons_flutter/lucide_icons.dart';
// import 'package:mm_project/styles/colors/colors.dart';
// import 'package:mm_project/styles/layouts/sizes.dart';
//
// class CustomBottomNavigationBar extends StatelessWidget {
//   final int selectedIndex;
//   final Function(int) onItemTapped;
//   final VoidCallback? onAddPressed;
//   final bool isAddButtonActive;
//
//   const CustomBottomNavigationBar({
//     Key? key,
//     required this.selectedIndex,
//     required this.onItemTapped,
//     this.onAddPressed,
//     this.isAddButtonActive = false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 85,
//       decoration: BoxDecoration(
//         color: CustomColors.white,
//         boxShadow: [
//           BoxShadow(
//             color: CustomColors.black.withOpacity(0.05),
//             blurRadius: 10,
//             offset: const Offset(0, -2),
//           ),
//         ],
//       ),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           _buildNavItem(LucideIcons.house, "Home", 0),
//           _buildNavItem(LucideIcons.bookOpen, "Library", 1),
//           _buildAddButton(),
//           _buildNavItem(LucideIcons.chefHat, "Recipes", 3),
//           _buildNavItem(LucideIcons.layoutGrid, "Browse", 4),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildNavItem(IconData icon, String label, int index) {
//     final isSelected = selectedIndex == index;
//     return GestureDetector(
//       onTap: () => onItemTapped(index),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(
//             icon,
//             size: Sizes.s24,
//             color: isSelected
//                 ? CustomColors.purpule600
//                 : const Color(0xFF616161),
//           ),
//           const SizedBox(height: Sizes.s4),
//           Text(
//             label,
//             style: TextStyle(
//               fontWeight: FontWeight.bold,
//               fontSize: Sizes.s11,
//               height: 16 / 11,
//               letterSpacing: 0.5,
//               color: isSelected ? Color(0xFF041C2F) : const Color(0xFF616161),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
//
//   Widget _buildAddButton() {
//     return GestureDetector(
//       onTap: onAddPressed,
//       child: Container(
//         width: 32,
//         height: 32,
//         decoration: BoxDecoration(
//           color: CustomColors.purpule600,
//           borderRadius: BorderRadius.circular(28),
//           boxShadow: [
//             BoxShadow(
//               color: CustomColors.purpule600.withOpacity(0.3),
//               blurRadius: 12,
//               offset: const Offset(0, 4),
//             ),
//           ],
//         ),
//         child: const Icon(
//           LucideIcons.plus,
//           color: Colors.white,
//           size: Sizes.s24,
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/layouts/sizes.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final VoidCallback? onAddPressed;
  final bool isAddButtonActive;

  const CustomBottomNavigationBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
    this.onAddPressed,
    this.isAddButtonActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 85,
      decoration: BoxDecoration(
        color: CustomColors.white,
        boxShadow: [
          BoxShadow(
            color: CustomColors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, -2),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildNavItem(LucideIcons.house, "Home", 0,),
          _buildNavItem(LucideIcons.bookOpen, "Library", 1),
          _buildAddButton(),
          _buildNavItem(LucideIcons.chefHat, "Recipes", 3),
          _buildNavItem(LucideIcons.layoutGrid, "Browse", 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = selectedIndex == index;
    return GestureDetector(
      onTap: () => onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: Sizes.s24,
            color: isSelected
                ? CustomColors.purpule600
                : const Color(0xFF616161),
          ),
          const SizedBox(height: Sizes.s4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: Sizes.s11,
              height: 16 / 11,
              letterSpacing: 0.5,
              color: isSelected
                  ? const Color(0xFF041C2F)
                  : const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: onAddPressed,
      child: Container(
        width: isAddButtonActive ? 48 : 32,
        height: isAddButtonActive ? 48 : 32,
        padding: isAddButtonActive ? const EdgeInsets.all(12) : null,
        decoration: BoxDecoration(
          color: isAddButtonActive
              ? const Color(0xFFF2EFF6)
              : CustomColors.purpule600,
          borderRadius: BorderRadius.circular(40),
          boxShadow: isAddButtonActive
              ? []
              : [
            BoxShadow(
              color: CustomColors.purpule600.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: Icon(
          isAddButtonActive ? LucideIcons.x : LucideIcons.plus,
          color: isAddButtonActive
              ? CustomColors.purpule600
              : Colors.white,
          size: Sizes.s24,
        ),
      ),
    );
  }
}