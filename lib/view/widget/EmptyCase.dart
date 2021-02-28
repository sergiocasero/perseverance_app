import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:easy_localization/easy_localization.dart';

class EmptyCase extends StatelessWidget {

  final String label;

  const EmptyCase({Key key, @required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Text(
          label,
          style: GoogleFonts.lato(
            fontSize: 24,
            color: Colors.grey[700],
          ),
          textAlign: TextAlign.center,
        ).tr(),
      ),
    );
  }

}