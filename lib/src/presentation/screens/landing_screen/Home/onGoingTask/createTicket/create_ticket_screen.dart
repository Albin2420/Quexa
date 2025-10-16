import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quexa/src/presentation/screens/landing_screen/Home/onGoingTask/createTicket/widgets/calendar_widget.dart';

import 'package:quexa/src/presentation/widgets/returning_card.dart';

class Createticketscreen extends StatefulWidget {
  const Createticketscreen({super.key});

  @override
  State<Createticketscreen> createState() => _CreateticketscreenState();
}

class _CreateticketscreenState extends State<Createticketscreen> {
  final TextEditingController _taskController1 = TextEditingController();
  final TextEditingController _taskController2 = TextEditingController();
  final TextEditingController _taskController3 = TextEditingController();

  @override
  void dispose() {
    _taskController1.dispose();
    _taskController2.dispose();
    _taskController3.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                ReturningWidget(
                  data: 'Create Ticket',
                  onPressed: () {
                    log("message");
                  },
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Task',
                          style: GoogleFonts.zenDots(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 100,
                                  ),
                                  child: TextField(
                                    controller: _taskController1,
                                    keyboardType: TextInputType.multiline,
                                    textInputAction: TextInputAction.newline,
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(height: 50),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Colors.black,
                        ),
                        SizedBox(height: 10),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Name',
                          style: GoogleFonts.zenDots(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: 150,
                          height: 120,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xFFE5E5E5),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: SingleChildScrollView(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const SizedBox(height: 10),
                                ConstrainedBox(
                                  constraints: const BoxConstraints(
                                    maxHeight: 100,
                                  ),
                                  child: TextField(
                                    controller: _taskController2,
                                    keyboardType: TextInputType.multiline,
                                    textInputAction: TextInputAction.newline,
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      color: Colors.black,
                                    ),
                                    decoration: const InputDecoration(
                                      border: InputBorder.none,
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 30),
                Text(
                  'Deadline',
                  style: GoogleFonts.zenDots(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 5),
                Calendarwidget(
                  onDateSelected: (dt) {
                    log("Parent received selected date: $dt");
                  },
                ),

                SizedBox(height: 30),
                Text(
                  'Description',
                  style: GoogleFonts.zenDots(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 15),
                // Descriptionwidget(),///////////
                Container(
                  width: 353,
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE5E5E5),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SingleChildScrollView(
                    child: TextField(
                      controller: _taskController3,
                      maxLines: null,
                      keyboardType: TextInputType.multiline,
                      textInputAction: TextInputAction.newline,
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.transparent,
        child: Container(
          // height: 70,
          // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          decoration: BoxDecoration(
            color: const Color(0xFFC2FB2A),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Center(
            child: Text(
              'Assign Task',
              style: GoogleFonts.zenDots(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
