import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';
import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';
import 'package:flutter_mathjax_latex/src/utils/style_utils.dart';

class TeXViewContainer extends TeXViewWidget {
  final String id;

  /// A [TeXViewWidget] as child.
  final TeXViewWidget child;

  /// Style TeXView Widget with [TeXViewStyle].
  final TeXViewStyle style;

  const TeXViewContainer({this.id, this.child, this.style});

  @override
  TeXViewWidgetMeta meta() {
    return TeXViewWidgetMeta(
        id: id,
        tag: 'div',
        classList: 'tex-view-container',
        node: Node.internalChild);
  }

  @override
  void onTapManager(String id) {
    child.onTapManager(id);
  }

  @override
  Map toJson() => {
        'meta': meta().toJson(),
        'data': child.toJson(),
        'style': style?.initStyle() ?? teXViewDefaultStyle,
      };
}
