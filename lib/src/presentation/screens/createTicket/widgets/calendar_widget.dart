// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class Calendarwidget extends StatefulWidget {
//   const Calendarwidget({
//     super.key,
//   });
//
//   @override
//   State<Calendarwidget> createState() => _CalendarwidgetState();
// }
//
// class _CalendarwidgetState extends State<Calendarwidget> {
//   DateTime? _selectedDate;
//
//   Future<void> _selectDate(BuildContext context) async {
//     final DateTime? pickedDate = await showDatePicker(
//       context: context,
//       initialDate: _selectedDate ?? DateTime.now(),
//       firstDate: DateTime(2000),
//       lastDate: DateTime(2100),
//     );
//
//     if (pickedDate != null && pickedDate != _selectedDate) {
//       setState(() {
//         _selectedDate = pickedDate;
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         const SizedBox(height: 8),
//         GestureDetector(
//           onTap: () => _selectDate(context),
//           child: Container(
//             width: 353,
//             height: 55,
//             padding: const EdgeInsets.symmetric(horizontal: 12),
//             decoration: BoxDecoration(
//               color: const Color(0xFFE5E5E5),
//               borderRadius: BorderRadius.circular(20),
//             ),
//             child: Align(
//               alignment: Alignment.centerLeft,
//               child: Text(
//                 _selectedDate != null
//                     ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
//                     : "Select Date",
//                 style: GoogleFonts.inter(
//                   fontSize: 14,
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Calendarwidget extends StatefulWidget {
  final Function(String dt) onDateSelected; // Callback for selected date

  const Calendarwidget({
    super.key,
    required this.onDateSelected,
  });

  @override
  State<Calendarwidget> createState() => _CalendarwidgetState();
}

class _CalendarwidgetState extends State<Calendarwidget> {
  DateTime? _selectedDate;

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: _selectedDate ?? DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != _selectedDate) {
      setState(() {
        _selectedDate = pickedDate;
      });
      // Notify the parent about the selected date
      widget.onDateSelected(pickedDate.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 8),
        GestureDetector(
          onTap: () => _selectDate(context),
          child: Container(
            width: 353,
            height: 55,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            decoration: BoxDecoration(
              color: const Color(0xFFE5E5E5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                _selectedDate != null
                    ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                    : "Select Date",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
