import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';
import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';
import 'package:flutter_mathjax_latex/src/utils/style_utils.dart';

class TeXViewImage extends TeXViewWidget {
  final String id;

  /// Uri for Image.
  final String imageUri;

  final String _type;

  const TeXViewImage.asset(this.imageUri, {this.id})
      : _type = 'tex-view-asset-image';

  const TeXViewImage.network(this.imageUri, {this.id})
      : _type = 'tex-view-network-image';

  @override
  TeXViewWidgetMeta meta() {
    return TeXViewWidgetMeta(
        id: id, tag: 'img', classList: _type, node: Node.leaf);
  }

  @override
  Map toJson() => {
        'meta': meta().toJson(),
        'data': imageUri,
        'style': "max-width: 100%; max-height: 100%; " + teXViewDefaultStyle,
      };
}
