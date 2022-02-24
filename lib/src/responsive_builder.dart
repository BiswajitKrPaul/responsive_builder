import 'package:flutter/material.dart';
import 'package:responsive_builder_ui/src/mediaquery_extensions.dart';

/// A Widget responsible for giving the layout options for `Mobile` and `Tablet`
class ResponsiveBuilderUI extends StatelessWidget {
  /// Gives the builder widget for `Mobile`. Required parameter
  final Widget Function(BuildContext context) mobileBuilder;

  /// Gives the builder widget for `Tablet`.
  ///
  /// It is optional parameter,if not provided then `[mobileBuilder]` will be used.
  final Widget Function(BuildContext context)? tabletBuilder;
  const ResponsiveBuilderUI({
    Key? key,
    required this.mobileBuilder,
    this.tabletBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (!context.isMobile && tabletBuilder != null) {
      return tabletBuilder!(context);
    }
    return mobileBuilder(context);
  }
}
