# flutter_mathjax_latex
[![GitHub stars](https://img.shields.io/github/stars/territoryfan/flutter_mathjax_latex?style=social)](https://github.com/territoryfan/flutter_mathjax_latex) [![pub package](https://img.shields.io/pub/v/flutter_mathjax_latex.svg)](https://pub.dev/packages/flutter_mathjax_latex)

# About
A Flutter Package to render **fully offline** so many types of equations and expressions based on **LaTeX** , **TeX** and **MathML**, most commonly used are as followings:

- **Mathematics / Maths Equations and expressions** (Algebra, Calculus, Geometry, Geometry etc...)

- **Physics Equations and expressions**

- **Signal Processing Equations and expressions**

- **Chemistry Equations and expressions**

- **Statistics / Stats Equations and expressions**

- It also includes full **HTML** with **JavaScript** support.


# How to use?
**1:** Add flutter_mathjax_latex latest  [![pub package](https://img.shields.io/pub/v/flutter_mathjax_latex.svg)](https://pub.dev/packages/flutter_mathjax_latex) version under dependencies to your package's pubspec.yaml file.

```yaml
dependencies:
  flutter_mathjax_latex: ^0.0.3
``` 

**2:** You can install packages from the command line:

```bash
$ flutter packages get
```

Alternatively, your editor might support flutter packages get. Check the docs for your editor to learn more.


**3:** Now you need to put the following implementations in `Android`, `iOS`, and `Web` respectively.

### Android
Make sure to add this line `android:usesCleartextTraffic="true"` in your `<project-directory>/android/app/src/main/AndroidManifest.xml` under `application` like this.

```xml
<application
       ...
       ...
       android:usesCleartextTraffic="true">
</application>
```

It completely works offline, without internet connection, but these are required permissions to work properly:


```xml
    <uses-permission android:name="android.permission.INTERNET" />
    <uses-permission android:name="android.permission.ACCESS_NETWORK_STATE" />
    <uses-permission android:name="android.permission.WAKE_LOCK" />
```

It'll still work in debug mode without permissions, but it won't work in release application without mentioned permissions.

### iOS
Add following code in your `<project-directory>/ios/Runner/Info.plist`

```plist
<key>NSAppTransportSecurity</key>
  <dict>
    <key>NSAllowsArbitraryLoads</key> <true/>
  </dict>
<key>io.flutter.embedded_views_preview</key> <true/> 
```

### Web
For Web support you need to put `<script src="assets/packages/flutter_mathjax_latex/js/flutter_mathjax_latex.js"></script>` and `<script type="text/javascript">window.flutterWebRenderer = "canvaskit";</script>` in `<head>` tag of your `<project-directory>/web/index.html` like this.

```html
<head>
  
    <meta charset="UTF-8">
    <title>Flutter TeX</title>

    <script src="assets/packages/flutter_mathjax_latex/js/flutter_mathjax_latex.js"></script>
    <script type="text/javascript">window.flutterWebRenderer = "canvaskit";</script>
</head>
```

**4:** Now in your Dart code, you can use:

```dart
import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart'; 
```

**5:** Now you can use TeXView as a widget:

# Examples

### Quick Example

```dart
TeXView(
    child: TeXViewColumn(children: [
      TeXViewInkWell(
        id: "id_0",
        child: TeXViewColumn(children: [
          TeXViewDocument(r"""<h2>Flutter \( \rm\\TeX \)</h2>""",
              style: TeXViewStyle(textAlign: TeXViewTextAlign.Center)),
          TeXViewContainer(
            child: TeXViewImage.network(
                'https://raw.githubusercontent.com/territoryfan/flutter_mathjax_latex/main/example/assets/flutter_mathjax_latex_banner.png'),
            style: TeXViewStyle(
              margin: TeXViewMargin.all(10),
              borderRadius: TeXViewBorderRadius.all(20),
            ),
          ),
          TeXViewDocument(r"""<p>                                
                       When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
                       $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$</p>""",
              style: TeXViewStyle.fromCSS(
                  'padding: 15px; color: white; background: green'))
        ]),
      )
    ]),
    style: TeXViewStyle(
      elevation: 10,
      borderRadius: TeXViewBorderRadius.all(25),
      border: TeXViewBorder.all(TeXViewBorderDecoration(
          borderColor: Colors.blue,
          borderStyle: TeXViewBorderStyle.solid,
          borderWidth: 5)),
      backgroundColor: Colors.white,
    ),
   ),
  )
```
# Api Changes.
* Please see [CHANGELOG.md](https://github.com/territoryfan/flutter_mathjax_latex/blob/main/CHANGELOG.md).

# Api Usage.
- `children:` A list of `TeXViewWidget`

- **`TeXViewWidget`**
    - `TeXViewDocument` Holds TeX data by using a raw string e.g. `r"""$$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br> """` You can also put HTML and Javascript code in it.
    - `TeXViewMarkdown` Holds markdown data.
    - `TeXViewContainer` Holds a single `TeXViewWidget` with styling.
    - `TeXViewImage` renders image from assets or network.
    - `TeXViewColumn` holds a list of `TeXViewWidget` vertically.
    - `TeXViewInkWell` for listening tap events. Its child and id is mandatory.
    - `TeXViewGroup` a group of `TeXViewGroupItem` usually used to create quiz layout.
    - `TeXViewDetails` like html `<details>`.


- `TeXViewStyle()` You can style each and everything using `TeXViewStyle()` or by using custom `CSS` code by `TeXViewStyle.fromCSS()` where you can pass hard coded String containing CSS code. For more information please check the example.

- `loadingWidgetBuilder:` Show a loading widget before rendering completes.

- `onRenderFinished:` Callback with the rendered page height, when TEX rendering finishes.
  
- `onTeXViewCreated:` Callback when TeXView loading finishes.

For more please see the [Example](https://github.com/territoryfan/flutter_mathjax_latex/tree/main/example).
