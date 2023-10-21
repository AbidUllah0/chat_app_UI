import 'package:chat_app2/utils/app_colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SelectGender());
}

class SelectGender extends StatefulWidget {
  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  final TextEditingController _controller = TextEditingController();
  List<String> items = ['Male', 'Female', 'Others'];

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Gender',
        labelStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: AppColors.textFieldTextColor,
          letterSpacing: 0.1,
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderColor,
          ),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.borderColor,
          ),
        ),
        suffixIcon: PopupMenuButton<String>(
          icon: Icon(
            Icons.arrow_drop_down_sharp,
            size: 50,
          ),
          onSelected: (String value) {
            _controller.text = value;
          },
          itemBuilder: (BuildContext context) {
            return items.map<PopupMenuItem<String>>(
              (String value) {
                return PopupMenuItem(
                  child: Text(value),
                  value: value,
                );
              },
            ).toList();
          },
        ),
      ),
    );
    //Container(
    //   height: 100,
    //   decoration: BoxDecoration(
    //     border: Border(
    //       bottom: BorderSide(
    //         color: AppColors.borderColor,
    //       ),
    //     ),
    //   ),
    //   width: MediaQuery.of(context).size.width,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //     children: <Widget>[
    //       Text('Gender'),
    //       DropdownButton<String>(
    //         elevation: 0,
    //         value: selectedGender,
    //         onChanged: (value) {
    //           setState(() {
    //             selectedGender = value!;
    //           });
    //         },
    //         items: <String>['Male', 'Female', 'Other'].map(
    //           (String value) {
    //             return DropdownMenuItem<String>(
    //               value: value,
    //               child: Text(value),
    //             );
    //           },
    //         ).toList(),
    //         underline: Container(),
    //       ),
    //     ],
    //   ),
    // );
  }
}
