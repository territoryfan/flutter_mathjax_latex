import 'dart:convert';

import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';
import 'package:flutter_mathjax_latex/src/utils/style_utils.dart';
import 'package:flutter_mathjax_latex/src/views/tex_view.dart';

String getRawData(TeXView teXView) {
  return jsonEncode({
    'meta':
        const TeXViewWidgetMeta(tag: 'div', classList: 'tex-view', node: Node.root)
            .toJson(),
    'fonts': (teXView.fonts ?? []).map((font) => font.toJson()).toList(),
    'data': teXView.child.toJson(),
    'style': teXView.style?.initStyle() ?? teXViewDefaultStyle
  });
}
