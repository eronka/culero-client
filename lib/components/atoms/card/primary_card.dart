
import 'package:flutter/material.dart';
import 'package:culero/utils/color.dart';

class PrimaryCard extends StatelessWidget {
  final Widget child;
  final EdgeInsets padding;
  final bool border;
  const PrimaryCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(8),
    this.border = true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(

      padding:padding ,

      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.background,
        borderRadius: BorderRadius.circular(15),
        border: border ? Border.all(color: Theme.of(context).colorScheme.primary, width: 1) : null,

      ),
        child:child,
    );
  }
}
