import 'package:flutter/material.dart';

class OptionRadiaTile extends StatefulWidget {
  final List<String> options;
  String selectedOption = '';
  String? previousOption;
  void Function(String value, String previouValue) getScore;

  OptionRadiaTile({Key? key, required this.options, required this.getScore})
      : super(key: key);

  @override
  State<OptionRadiaTile> createState() => _OptionRadiaTileState();
}

class _OptionRadiaTileState extends State<OptionRadiaTile> {
  @override
  Widget build(BuildContext context) {
    //list of item options
    return Column(
      children: [
        ...widget.options.map(
          //Single option
          (option) => RadioListTile<String>(
            //option value
            value: option,
            //selected value
            groupValue: widget.selectedOption,
            onChanged: (value) {
              setState(() {
                widget.previousOption = widget.selectedOption;
                widget.selectedOption = value!;
                //getScore function will trigger whenever the user changes(choose or select) the other option
                widget.getScore(widget.selectedOption, widget.previousOption!);
              });
            },
            activeColor: Theme.of(context).colorScheme.secondary,
            title: Text(
              option,
              style: TextStyle(
                  color: widget.selectedOption == option
                      ? Theme.of(context).colorScheme.secondary
                      : Colors.grey[300],
                  fontSize: widget.selectedOption == option ? 18 : 14),
            ),
            contentPadding: const EdgeInsets.all(0),
          ),
        ),
      ],
    );
  }
}
