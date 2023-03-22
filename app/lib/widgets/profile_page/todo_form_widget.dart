// ignore_for_file: lines_longer_than_80_chars

import 'dart:math';
import 'package:app/models/todo_model.dart';
import 'package:app/stores/todos_store.dart';
import 'package:design_system/design_system.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class TodoFormWidget extends StatefulWidget {
  const TodoFormWidget({super.key});

  @override
  State<TodoFormWidget> createState() => _TodoFormWidgetState();
}

class _TodoFormWidgetState extends State<TodoFormWidget> {
  final _formKey = GlobalKey<FormState>();
  String _title = '';
  TimeOfDay? _time;
  DateTime? _date;

  Future<void> _selectTaskDate() async {
    await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 60),
      ),
    ).then((selectedDate) {
      if (selectedDate == null) {
        return;
      }

      setState(() {
        _date = selectedDate;
      });
    });
  }

  Future<void> _selectTaskHour() async {
    await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    ).then((selectedHour) {
      if (selectedHour == null) {
        return;
      }

      setState(() {
        _time = selectedHour;
      });
    });
  }

  _submitForm() async {
    final isValid = _formKey.currentState?.validate() ?? false;

    final taskDate = DateTime(
      _date!.year,
      _date!.month,
      _date!.day,
      _time!.hour,
      _time!.minute,
    );

    if (!isValid || taskDate.isBefore(DateTime.now())) {
      return;
    }

    _formKey.currentState!.save();
    final todo = TodoModel(
      id: Random().nextInt(500),
      title: _title,
      time: _time!,
      date: _date!,
    );
    await context
        .read<TodosStore>()
        .addTodo(todo)
        .then((value) => Navigator.of(context).pop());
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final themeColors = Theme.of(context).extension<ThemeColorsExtension>()!;
    final themeTextStyles = Theme.of(context).extension<TextStyleExtension>()!;

    OutlineInputBorder _textFieldBorder() {
      return OutlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: themeColors.profileBGColor,
        ),
      );
    }

    return Container(
      color: Colors.white,
      height: size.height * 0.35,
      padding: const EdgeInsets.only(
        top: 20,
        right: 20,
        left: 20,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Add To-do',
              style: TextStyle(
                color: themeColors.blackTextColor,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 15),
            TextFormField(
              style: TextStyle(
                color: themeColors.blackTextColor,
              ),
              decoration: InputDecoration(
                labelText: 'Title',
                labelStyle: TextStyle(
                  color: themeColors.profileBGColor,
                ),
                enabledBorder: _textFieldBorder(),
                border: _textFieldBorder(),
                focusedBorder: _textFieldBorder(),
              ),
              keyboardType: TextInputType.name,
              validator: (_titleInput) {
                final titleInput = _titleInput ?? '';

                if (titleInput.trim().isEmpty) {
                  return 'Title is required!';
                }

                return null;
              },
              onSaved: (titleInput) => _title = titleInput ?? '',
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _date == null
                      ? 'No date selected'
                      : 'Selected Date: ${DateFormat.yMMMMd('en_US').format(_date!)}',
                  style: themeTextStyles.hourTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: _selectTaskDate,
                  child: Text(
                    'Select Date',
                    style: TextStyle(
                      color: themeColors.profileBGColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  _time == null
                      ? 'No hour selected'
                      : 'Selected Hour: ${_time!.hour}:${_time!.minute} ${_time!.period.toString().split('.')[1].toUpperCase()}',
                  style: themeTextStyles.hourTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                TextButton(
                  onPressed: _selectTaskHour,
                  child: Text(
                    'Select Hour',
                    style: TextStyle(
                      color: themeColors.profileBGColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: size.width * 0.7,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: themeColors.profileBGColor,
                ),
                child: const Text(
                  'Confirm',
                ),
                onPressed: _submitForm,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
