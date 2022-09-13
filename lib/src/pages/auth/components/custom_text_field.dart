// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CustomtextFild extends StatefulWidget {
  final IconData icon;
  final String lebel;
  final bool? isSecret;

  const CustomtextFild({
    Key? key,
    required this.icon,
    required this.lebel,
    this.isSecret,
  }) : super(key: key);

  @override
  State<CustomtextFild> createState() => _CustomtextFildState();
}

class _CustomtextFildState extends State<CustomtextFild> {
  bool isObscure = false;
  @override
  void initState() {
    super.initState();
    isObscure = widget.isSecret ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Icon(widget.icon),
          labelText: widget.lebel,
          suffixIcon: widget.isSecret ?? false
              ? IconButton(
                  onPressed: () {
                    setState(() => isObscure = !isObscure);
                  },
                  icon:
                      Icon(isObscure ? Icons.visibility_off : Icons.visibility),
                )
              : null,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ),
    );
  }
}
