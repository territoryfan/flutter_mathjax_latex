import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';
import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';

class TeXViewGroupItem extends TeXViewWidget {
  final String id;

  /// A [TeXViewWidget] as child.
  final TeXViewWidget child;

  final bool rippleEffect;

  const TeXViewGroupItem(
      {this.id, this.child, this.rippleEffect});

  @override
  TeXViewWidgetMeta meta() {
    return TeXViewWidgetMeta(
        id: id,
        tag: 'div',
        classList: 'tex-view-group-item',
        node: Node.internalChild);
  }

  @override
  Map toJson() => {
        'meta': meta().toJson(),
        'data': child.toJson(),
        'rippleEffect': rippleEffect ?? true,
      };
}
