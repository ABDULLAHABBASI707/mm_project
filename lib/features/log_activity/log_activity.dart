import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_appbar.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_dropdown.dart'; // Dot Dropdown
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/layouts/sizes.dart';
import '../log_weight/log_added.dart';

class LogActivityScreen extends StatefulWidget {
  const LogActivityScreen({super.key});

  @override
  State<LogActivityScreen> createState() => _LogActivityScreenState();
}

class _LogActivityScreenState extends State<LogActivityScreen> {
  final TextEditingController _weightController = TextEditingController();
  File? _selectedImage;
  DateTime? _selectedDate;
  int _selectedIndex = 0;

  DropdownItem? _selectedActivity;
  final List<DropdownItem> _activities = [
    DropdownItem(label: 'Cardio', dotColor: Color(0xFFFF6727)),
    DropdownItem(label: 'Yoga', dotColor: Color(0xFF00B84A)),
    DropdownItem(label: 'Strength', dotColor: Color(0xFF8063FF)),
    DropdownItem(label: 'Meditation', dotColor: Color(0xFF00A8E1)),
  ];

  @override
  void dispose() {
    _weightController.dispose();
    super.dispose();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(bottom: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppBar(),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
                child: Column(
                  children: [
                    Center(
                      child: Container(
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    const Center(
                      child: Text(
                        "Log Activity",
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),


                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: _weightController,
                              keyboardType: TextInputType.number,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontSize: 48,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              decoration: const InputDecoration(
                                border: InputBorder.none,
                                hintText: '0',
                              ),
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(bottom: 12),
                            child: Text(
                              'min',
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),
                    const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
                    const SizedBox(height: 16),

                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Type of activity',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Colored Dot Dropdown
                    CustomDropdown(
                      selectedItem: _selectedActivity,
                      items: _activities,
                      hintText: '-- Choose --',
                      onChanged: (value) {
                        setState(() {
                          _selectedActivity = value;
                        });
                      },
                    ),

                    const SizedBox(height: 20),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Date',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    const SizedBox(height: 8),

                    CustomDatePicker(
                      selectedDate: _selectedDate,
                      onDatePicked: (date) {
                        setState(() {
                          _selectedDate = date;
                        });
                      },
                    ),

                    const SizedBox(height: 28),
                    Center(
                      child: RoundButton(
                        title: 'Add Weight',
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const LogAddedScreen()),
                          );
                        },
                        bgcolor: CustomColors.purpule600,
                        btnheight: 48,
                        btnwidth: double.infinity,
                      ),
                    ),
                    const SizedBox(height: 32),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      width: double.infinity,
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
          _buildNavItem(Icons.home_outlined, "Home", 0),
          _buildNavItem(Icons.menu_book_outlined, "Library", 1),
          _buildAddButton(),
          _buildNavItem(Icons.restaurant_menu_outlined, "Recipes", 3),
          _buildNavItem(Icons.grid_view_rounded, "Browse", 4),
        ],
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isSelected = _selectedIndex == index;
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: Sizes.s24,
            color: isSelected ? CustomColors.purpule600 : const Color(0xFF616161),
          ),
          const SizedBox(height: Sizes.s4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Sizes.s11,
              color: isSelected ? CustomColors.black50 : const Color(0xFF616161),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddButton() {
    return GestureDetector(
      onTap: () {},
      child: Container(
        width: Sizes.s32,
        height: Sizes.s32,
        padding: const EdgeInsets.all(Sizes.s4),
        decoration: BoxDecoration(
          color: CustomColors.purpule600,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              color: CustomColors.purpule600.withOpacity(0.3),
              blurRadius: 12,
              offset: const Offset(0, 4),
            ),
          ],
        ),
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
