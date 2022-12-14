import 'package:flutter/material.dart';
import 'package:flutter_mathjax_latex/flutter_mathjax_latex.dart';

class TeXExample {
  static TeXViewWidget introduction =
      _teXViewWidget(r"""<h4>Flutter \( \rm\TeX \)</h4>""", r""" 
             
      <p>Flutter \( \rm\TeX \) is a Flutter Package to render so many types of equations based on \( \rm\LaTeX \), It also includes full HTML with JavaScript
      support.</p>
      """);

  static TeXViewWidget quadraticEquation =
      _teXViewWidget(r"<h4>Quadratic Equation</h4>", r"""
     When \(a \ne 0 \), there are two solutions to \(ax^2 + bx + c = 0\) and they are
     $$x = {-b \pm \sqrt{b^2-4ac} \over 2a}.$$<br>""");

  static TeXViewWidget mathML =
      _teXViewWidget(r"<h4>MathML (MathJax Only)</h4>", r"""
<math xmlns = "http://www.w3.org/1998/Math/MathML">
   <mrow>
      <mrow>
         <msup> <mi>x</mi> <mn>2</mn> </msup> <mo>+</mo>
         <mrow>
            <mn>4</mn>
            <mo>⁢</mo>
            <mi>x</mi>
         </mrow>
         <mo>+</mo>
         <mn>4</mn>
      </mrow>
      
      <mo>=</mo>
      <mn>0</mn>
   </mrow>
</math>""");

  static TeXViewWidget bohrRadius = _teXViewWidget(r"<h4>Bohr's Radius</h4>",
      r"""\( a_0 = \frac{{\hbar ^2 }}{{m_e ke^2 }} \)""");

  static TeXViewWidget relationEnergyPrincipalQuantum = _teXViewWidget(
      r"<h4>Relationship between Energy and Principal Quantum Number</h4>",
      r"""\( E_n = - R_H \left( {\frac{1}{{n^2 }}} \right) = \frac{{ - 2.178 \times 10^{ - 18} }}{{n^2 }}joule \)""");

  static TeXViewWidget chemistryEquations =
      _teXViewWidget(r"<h4>Chemistry Equations</h4>", r"""<p>    
     \( \ce{CO2 + C -> 2 CO} \) <br>
     \( \ce{Hg^2+ ->[I-] HgI2 ->[I-] [Hg^{II}I4]^2-} \)<br>
     Scroll long formulas in Katex $$ \ce{x Na(NH4)HPO4 ->[\Delta] (NaPO3)_x + x Nh4 ^ + x H2O} $$ <br>
    </p>""");

  static TeXViewWidget matrix = _teXViewWidget(r"<h4>Matrix</h4>", r"""<p>
     $$ \begin{bmatrix}
         a & b \\
         c & d
      \end{bmatrix}$$</p>""");

  static TeXViewWidget alignedTag =
      _teXViewWidget(r"<h4>Aligned Tag</h4>", r"""    
           $$
           \begin{aligned}
           \dot{x} & = \sigma(y-x) \\
           \dot{y} & = \rho x - y - xz \\
           \dot{z} & = -\beta z + xy
           \end{aligned}
           $$""");

  static TeXViewWidget others = _teXViewWidget(r"<h4> Others </h4>", r"""<p><br />
  <span class="math-content" data-math="\sqrt{12312312312312312}\\DRIFT{123312}我来试试你会不会换行，不会换的话怎么搞 \sqrt{NAOH化学我都忘记了二氧化氮是什么红棕色气体，二氧化碳是无色气体}\\\left\{ \begin{array}{l} {1}\\{2} \end{array}\right.这啥也我也不认识，靠老师自己换行了" style="color:#000000; font-size:14px; text-decoration:none">$\sqrt{12312312312312312}\\DRIFT{123312}我来试试你会不会换行，不会换的话怎么搞 \sqrt{NAOH化学我都忘记了二氧化氮是什么红棕色气体，二氧化碳是无色气体}\\\left\{ \begin{array}{l} {1}\\{2} \end{array}\right.这啥也我也不认识，靠老师自己换行了$</span></p>

    <p align="left" style="text-align:left">&nbsp;</p>

    <figure class="easyimage easyimage-full"><strong><img alt="" sizes="100vw" src="//va-papers.oss-cn-hangzhou.aliyuncs.com/editor/aeea/a234/4aaf/e7f28416-faa4-432a-aeea-a962e77f0d5c" width="596" /></strong>

    <figcaption></figcaption>
    </figure>

    <p>&nbsp;</p>"""
  );

  static TeXViewWidget phoneLatex = _teXViewWidget(r"<h4> phone_latex </h4>", r"""<p><br />
    <span class="math-content" data-math="\sqrt{12312312312312312}\\DRIFT{123312}我来试试你会不会换行，不会换的话怎么搞 \sqrt{NAOH化学我都忘记了二氧化氮是什么红棕色气体，二氧化碳是无色气体}\\\left\{ \begin{array}{l} {1}\\{2} \end{array}\right.这啥也我也不认识，靠老师自己换行了" style="color:#000000; font-size:14px; text-decoration:none">$\sqrt{12312312312312312}\\DRIFT{123312}我来试试你会不会换行，不会换的话怎么搞 \sqrt{NAOH化学我都忘记了二氧化氮是什么红棕色气体，二氧化碳是无色气体}\\\left\{ \begin{array}{l} {1}\\{2} \end{array}\right.这啥也我也不认识，靠老师自己换行了$</span></p>

    <p align="left" style="text-align:left">&nbsp;</p>

    <figure class="easyimage easyimage-full"><strong><img alt="" sizes="100vw" src="//va-papers.oss-cn-hangzhou.aliyuncs.com/editor/aeea/a234/4aaf/e7f28416-faa4-432a-aeea-a962e77f0d5c" width="596" /></strong>

    <figcaption></figcaption>
    </figure>

    <p>&nbsp;</p>""");
  
  // static TeXViewWidget others = _teXViewWidget(r"<h4> Others </h4>", r"""<p>    
  //   $$ \oint_C {E \cdot d\ell = - \frac{d}{{dt}}} \int_S {B_n dA} $$<br>
    
  //    $$
  //    y = \frac{{n!}}{{k!\left( {n - k} \right)!}}p^k q^{n - k}  = \left( {\begin{array}{*{20}c}
  //             n  \\
  //             k  \\
  //           \end{array}} \right)p^k q^{n - k} 
  //    $$

  //   </p>""");

  static TeXViewWidget _teXViewWidget(String title, String body) {
    return TeXViewColumn(
        style: const TeXViewStyle(
            margin: TeXViewMargin.all(10),
            padding: TeXViewPadding.all(10),
            borderRadius: TeXViewBorderRadius.all(10),
            border: TeXViewBorder.all(TeXViewBorderDecoration(
                borderWidth: 2,
                borderStyle: TeXViewBorderStyle.groove,
                borderColor: Colors.green))),
        children: [
          TeXViewDocument(title,
              style: const TeXViewStyle(
                  padding: TeXViewPadding.all(10),
                  borderRadius: TeXViewBorderRadius.all(10),
                  textAlign: TeXViewTextAlign.center,
                  width: 250,
                  margin: TeXViewMargin.zeroAuto(),
                  backgroundColor: Colors.green)),
          TeXViewDocument(body,
              style: const TeXViewStyle(margin: TeXViewMargin.only(top: 10)))
        ]);
  }
}

class TeXViewDocumentExamples extends StatelessWidget {
  final TeXViewRenderingEngine renderingEngine;

  const TeXViewDocumentExamples(
      {Key key, this.renderingEngine = const TeXViewRenderingEngine.mathjax()})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("TeXViewDocument"),
      ),
      body: TeXView(
        renderingEngine: renderingEngine,
        child: TeXViewColumn(children: [
          TeXExample.introduction,
          TeXExample.mathML,
          TeXExample.quadraticEquation,
          TeXExample.relationEnergyPrincipalQuantum,
          TeXExample.alignedTag,
          TeXExample.bohrRadius,
          TeXExample.chemistryEquations,
          TeXExample.matrix,
          TeXExample.others,
          TeXExample.phoneLatex
        ]),
        style: const TeXViewStyle(
          margin: TeXViewMargin.all(10),
          elevation: 10,
          borderRadius: TeXViewBorderRadius.all(25),
          border: TeXViewBorder.all(
            TeXViewBorderDecoration(
                borderColor: Colors.blue,
                borderStyle: TeXViewBorderStyle.solid,
                borderWidth: 5),
          ),
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}
