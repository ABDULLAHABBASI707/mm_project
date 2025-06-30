import 'package:flutter/material.dart';
import 'package:mm_project/features/kick_counter/kick_counter2.dart';
import 'package:mm_project/sdk/widgets/button_widget.dart';
import 'package:mm_project/sdk/widgets/custom_date_picker.dart';
import 'package:mm_project/sdk/widgets/custom_dropdown.dart';
import 'package:mm_project/styles/colors/colors.dart';
import 'package:mm_project/styles/layouts/sizes.dart';
import '../log_weight/log_added.dart';

class KickCounterScreen extends StatefulWidget {
  const KickCounterScreen({super.key});

  @override
  State<KickCounterScreen> createState() => _KickCounterScreenState();
}

class _KickCounterScreenState extends State<KickCounterScreen> {
  final TextEditingController _kickController = TextEditingController();
  DateTime? _startDate;
  DateTime? _endDate;
  DropdownItem? _selectedNote;

  final List<DropdownItem> _notes = [
    DropdownItem(label: 'Cardio', dotColor: Color(0xFFFF6727)),
    DropdownItem(label: 'Yoga', dotColor: Color(0xFF00B84A)),
    DropdownItem(label: 'Strength', dotColor: Color(0xFF8063FF)),
    DropdownItem(label: 'Meditation', dotColor: Color(0xFF00A8E1)),
  ];

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showKickCounterBottomSheet(context);
    });
  }

  void _showKickCounterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) {
        return Padding(
          padding: MediaQuery.of(context).viewInsets,
          child: Container(
            width: double.infinity,
            height: 584,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    "Kick Counter",
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        width: 100,
                        child: TextField(
                          controller: _kickController,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                            color: Colors.black,
                          ),
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: '0',
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Text(
                          'kicks',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 8),
                  const Divider(thickness: 1, color: Color(0xFFEEEEEE)),
                  const SizedBox(height: 14),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text('Start',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                  ),
                  const SizedBox(height: 8),
                  CustomDatePicker(
                    labelText: 'Start time',
                    selectedDate: _startDate,
                    onDatePicked: (date) => setState(() => _startDate = date),
                  ),
                  const SizedBox(height: 24),


                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text('End',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                  ),
                  const SizedBox(height: 8),
                  CustomDatePicker(
                    labelText: 'End time',
                    selectedDate: _endDate,
                    onDatePicked: (date) => setState(() => _endDate = date),
                  ),
                  const SizedBox(height: 24),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: const Text('Notes',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 16)),
                  ),
                  const SizedBox(height: 8),
                  CustomDropdown(
                    selectedItem: _selectedNote,
                    items: _notes,
                    hintText: '-- Choose --',
                    onChanged: (value) =>
                        setState(() => _selectedNote = value),
                  ),

                  const SizedBox(height: 28),

                  RoundButton(
                    title: 'Add Weight',
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => const KickCounter2()),
                      );
                    },
                    bgcolor: CustomColors.purpule600,
                    btnheight: 48,
                    btnwidth: double.infinity,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() => _selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kick Counter",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
                color: Colors.black)),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Color(0xFF616161)),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 19),
            child: Icon(Icons.watch_later_outlined, color: Color(0xFF616161)),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: _buildBottomNavBar(),
    );
  }

  Widget _buildBottomNavBar() {
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
          Icon(icon,
              size: Sizes.s24,
              color: isSelected
                  ? CustomColors.purpule600
                  : const Color(0xFF616161)),
          const SizedBox(height: Sizes.s4),
          Text(
            label,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: Sizes.s11,
              color: isSelected
                  ? CustomColors.black50
                  : const Color(0xFF616161),
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
