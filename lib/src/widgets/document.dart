import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';
import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';
import 'package:flutter_mathjax_latex/src/utils/style_utils.dart';

class TeXViewDocument extends TeXViewWidget {
  final String id;

  /// Raw String containing HTML and TEX Code e.g. r"""$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br> """
  final String data;

  /// Style TeXView Widget with [TeXViewStyle].
  final TeXViewStyle style;

  const TeXViewDocument(this.data, {this.id, this.style});

  @override
  TeXViewWidgetMeta meta() {
    return TeXViewWidgetMeta(
        id: id,
        tag: 'div',
        classList: 'tex-view-document',
        node: Node.leaf);
  }

  @override
  Map toJson() => {
        'meta': meta().toJson(),
        'data': data,
        'style': style?.initStyle() ?? teXViewDefaultStyle,
      };
}
