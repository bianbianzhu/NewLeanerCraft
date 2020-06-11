import 'package:flutter/material.dart';
import 'package:webpagetransition/utils/animations/shadow_on_hover.dart';
import 'dart:html' as html;

import 'package:webpagetransition/utils/animations/translate_on_hover.dart';

extension HoverExtensions on Widget {
  static final appContainer =
      html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this, // the widget we're using the extension on
      onHover: (event) => appContainer.style.cursor = 'pointer',
      onExit: (event) => appContainer.style.cursor = 'default',
    );
  }

  Widget get moveUpOnHover {
    return TranslateOnHover(
      child: this,
    );
  }

  Widget get shadowOnHover {
    return ShadowOnHover(
      child: this,
    );
  }
}
