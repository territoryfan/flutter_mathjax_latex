import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';
import 'package:flutter_mathjax_latex/src/models/widget_meta.dart';
import 'package:flutter_mathjax_latex/src/utils/style_utils.dart';
import 'package:markdown/markdown.dart' hide Node;

class TeXViewMarkdown extends TeXViewWidget {
  final String id;

  /// Raw String containing HTML and TEX Code e.g. r"""$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br> """
  final String markdown;

  /// Style TeXView Widget with [TeXViewStyle].
  final TeXViewStyle style;

  final Iterable<BlockSyntax> blockSyntaxes;
  final Iterable<InlineSyntax> inlineSyntaxes;
  final ExtensionSet extensionSet;
  final Resolver linkResolver;
  final Resolver imageLinkResolver;
  final bool inlineOnly;

  const TeXViewMarkdown(this.markdown,
      {this.id,
      this.style,
      this.blockSyntaxes = const [],
      this.inlineSyntaxes = const [],
      this.extensionSet,
      this.linkResolver,
      this.inlineOnly = false,
      this.imageLinkResolver});

  @override
  TeXViewWidgetMeta meta() {
    return TeXViewWidgetMeta(
        id: id,
        tag: 'div',
        classList: 'tex-view-markdown',
        node: Node.leaf);
  }

  @override
  Map toJson() => {
        'meta': meta().toJson(),
        'data': markdownToHtml(markdown,
            blockSyntaxes: blockSyntaxes,
            extensionSet: extensionSet,
            imageLinkResolver: imageLinkResolver,
            inlineOnly: inlineOnly,
            inlineSyntaxes: inlineSyntaxes,
            linkResolver: linkResolver),
        'style': style?.initStyle() ?? teXViewDefaultStyle,
      };
}
