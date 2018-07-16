(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       150,          7]
NotebookDataLength[     59695,       1485]
NotebookOptionsPosition[     57837,       1419]
NotebookOutlinePosition[     58274,       1436]
CellTagsIndexPosition[     58231,       1433]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Tutorial : L\[EAcute]vy flights, L\[EAcute]vy walks and superdiffusion\
\>", "Title",
 CellChangeTimes->{{3.521261098790794*^9, 3.521261124273987*^9}, {
   3.522059059627245*^9, 3.522059073998459*^9}, 3.61683609306142*^9}],

Cell[TextData[{
 "by Jacopo Bertolotti\n",
 StyleBox["\nUniversity of Exeter\nPhysics building\nStocker road\nExeter\n\
EX4 4QL\nUnited Kingdom",
  FontSize->10,
  FontSlant->"Italic"]
}], "Text",
 CellChangeTimes->{{3.521261143563211*^9, 3.521261155741444*^9}, 
   3.522052118517158*^9, {3.522052174527435*^9, 3.522052179910398*^9}, {
   3.52205226651334*^9, 3.522052286178544*^9}, {3.522052324917078*^9, 
   3.522052331524469*^9}, {3.522052373150468*^9, 3.522052373191657*^9}, {
   3.5226522545551*^9, 3.522652257641803*^9}, {3.522652315660218*^9, 
   3.522652315703399*^9}, {3.6168360339145193`*^9, 3.616836039398861*^9}, {
   3.6168361277071743`*^9, 3.616836162902217*^9}},
 FontSize->18],

Cell[CellGroupData[{

Cell["Faster than diffusion", "Subsection",
 CellChangeTimes->{{3.521269916364412*^9, 3.521269927472148*^9}, {
  3.522059147967959*^9, 3.522059151590821*^9}}],

Cell["\<\
Transport properties of many complex systems can be conveniently described in \
terms of a diffusion process. This approach proved to be extremely effective \
to model the most diverse systems and it is often assumed to be valid even \
when it is known to be based on unjustified assumptions. A famous example is \
the Black-Scholes model in economy [1]. Systems that show a strong deviation \
from the diffusive picture are said to be \[OpenCurlyDoubleQuote]anomalous\
\[CloseCurlyDoubleQuote] [2], yet these deviations are more the norm than the \
exception [3]. Anomalous behavior is present in many disciplines such as \
astronomy [4], geology [5], econometrics [6] and ethology [7].
In the textbook case of normal diffusion, particle transport is described as \
a random walk to which all the steps give the same contribution (Brownian \
motion). Superdiffusion occurs when the transport is dominated by a few very \
large steps. In this regime the variance of the step length distribution \
diverges and the mean square displacement grows faster than linear with time.\
\
\>", "Text",
 CellChangeTimes->{{3.521267972503865*^9, 3.521268033155434*^9}, {
   3.521268065651704*^9, 3.521268068491489*^9}, {3.521268259207407*^9, 
   3.521268456091832*^9}, {3.521268514539907*^9, 3.521268595630082*^9}, {
   3.521268628355641*^9, 3.521268663659601*^9}, {3.521268698243854*^9, 
   3.521268822051696*^9}, {3.521268852756221*^9, 3.521268880651625*^9}, {
   3.521268911220005*^9, 3.521268914161389*^9}, 3.521458483915456*^9, {
   3.522046574902216*^9, 3.522046577004954*^9}, {3.522046738205145*^9, 
   3.522046738893021*^9}, {3.522059170406776*^9, 3.522059170990175*^9}, {
   3.522059348370622*^9, 3.522059401367074*^9}, {3.522061291782539*^9, 
   3.522061298951048*^9}, {3.522061417820258*^9, 3.522061478671945*^9}, 
   3.522062189761873*^9, {3.522062340475962*^9, 3.522062341822461*^9}, 
   3.522652606949173*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Black", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "n"}], "]"}], "]"}], " ", "]"}]}], "}"}], " ", 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Red", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "]"}]}], " ", "}"}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Black", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}], "}"}], " ", "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"brown", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "n"}], "]"}], "]"}], " ", "]"}]}], "}"}], " ", 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"brown", "[", 
          RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}], "}"}], " ", "]"}], 
     ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Comparison between a Brownian random walk (blue) and\\na \
L\[EAcute]vy flight (black). The red dot represent the starting\\npoint for \
both random walks.\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "1", ",", "1000", ",", "1"}], "}"}], ",", " ", 
   RowBox[{"DisplayAllSteps", "\[Rule]", "True"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "15"}], ",", " ", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"\[Theta]", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"RandomReal", "[", 
          RowBox[{"{", 
           RowBox[{"0", ",", 
            RowBox[{"2", " ", "\[Pi]"}]}], "}"}], "]"}], ",", 
         RowBox[{"{", "1000", "}"}]}], "]"}]}], ";", " ", 
      RowBox[{"a", "=", 
       RowBox[{"RandomVariate", "[", 
        RowBox[{
         RowBox[{"StableDistribution", "[", 
          RowBox[{"1", ",", "1", ",", "0", ",", "0", ",", "1"}], "]"}], ",", 
         "1000"}], "]"}]}], ";", 
      RowBox[{"levy", "=", 
       RowBox[{"Accumulate", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"n", "\[Equal]", "0"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{
               RowBox[{"a", "[", 
                RowBox[{"[", "n", "]"}], "]"}], " ", 
               RowBox[{"Cos", "[", 
                RowBox[{"\[Theta]", "[", 
                 RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}], ",", 
              RowBox[{
               RowBox[{"a", "[", 
                RowBox[{"[", "n", "]"}], "]"}], " ", 
               RowBox[{"Sin", "[", " ", 
                RowBox[{"\[Theta]", "[", 
                 RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}]}], "}"}]}], 
           "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"n", ",", "0", ",", "1000"}], "}"}]}], "]"}], " ", "]"}]}],
       " ", ";", " ", 
      RowBox[{"brown", "=", 
       RowBox[{"Accumulate", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"If", "[", 
           RowBox[{
            RowBox[{"n", "\[Equal]", "0"}], ",", 
            RowBox[{"{", 
             RowBox[{"0", ",", "0"}], "}"}], ",", 
            RowBox[{"{", 
             RowBox[{
              RowBox[{"RandomReal", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}], ",", 
              RowBox[{"RandomReal", "[", 
               RowBox[{"{", 
                RowBox[{
                 RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}]}], "}"}]}], 
           "]"}], ",", 
          RowBox[{"{", 
           RowBox[{"n", ",", "0", ",", "1000"}], "}"}]}], "]"}], "]"}]}], 
      ";"}], "\[IndentingNewLine]", ")"}]}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.52206162270265*^9, 3.522061701187067*^9}, {
  3.522061744531054*^9, 3.522061818829229*^9}, {3.522061887355703*^9, 
  3.522061896248097*^9}, {3.522062045658963*^9, 3.522062152390969*^9}, {
  3.522062214724061*^9, 3.52206223496772*^9}, {3.522062272089386*^9, 
  3.522062272309863*^9}, {3.522065291697208*^9, 3.522065305894753*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 1, 1000, 1}}, Typeset`size$$ = {
    540., {304., 315.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`n$142745$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$142745$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[{Black, 
          Line[
           Part[$CellContext`levy, 
            Span[1, $CellContext`n$$]]]}], 
        Graphics[{Red, 
          PointSize[0.02], 
          Point[
           Part[$CellContext`levy, 1]]}], 
        Graphics[{Black, 
          PointSize[0.02], 
          Point[
           Part[$CellContext`levy, $CellContext`n$$]]}], 
        Graphics[{Blue, 
          Line[
           Part[$CellContext`brown, 
            Span[1, $CellContext`n$$]]]}], 
        Graphics[{Blue, 
          PointSize[0.02], 
          Point[
           Part[$CellContext`brown, $CellContext`n$$]]}], PlotLabel -> 
        "Comparison between a Brownian random walk (blue) and\na L\[EAcute]vy \
flight (black). The red dot represent the starting\npoint for both random \
walks."], 
      "Specifications" :> {{$CellContext`n$$, 1, 1000, 1, DisplayAllSteps -> 
         True, AnimationRate -> 15, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {357., 365.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`\[Theta] = Table[
         RandomReal[{0, 2 Pi}], {1000}]; $CellContext`a = RandomVariate[
         StableDistribution[1, 1, 0, 0, 1], 1000]; $CellContext`levy = 
       Accumulate[
         Table[
          
          If[$CellContext`n$$ == 0, {0, 0}, {
           Part[$CellContext`a, $CellContext`n$$] Cos[
              Part[$CellContext`\[Theta], $CellContext`n$$]], 
            Part[$CellContext`a, $CellContext`n$$] Sin[
              
              Part[$CellContext`\[Theta], $CellContext`n$$]]}], \
{$CellContext`n$$, 0, 1000}]]; $CellContext`brown = Accumulate[
         Table[
          If[$CellContext`n$$ == 0, {0, 0}, {
            RandomReal[{-1, 1}], 
            RandomReal[{-1, 1}]}], {$CellContext`n$$, 0, 1000}]]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.522059160297259*^9, 3.522061823112734*^9, 3.52206189763479*^9, {
   3.522062096298543*^9, 3.52206210415537*^9}, 3.522062154569126*^9, {
   3.522062216204421*^9, 3.522062235332502*^9}, 3.522062272997357*^9, {
   3.52206529472426*^9, 3.522065306248637*^9}}]
}, {2}]],

Cell[TextData[{
 "In standard diffusion the total displacement of a random walk follows a \
Normal distribution as a consequence of the Central Limit Theorem [8]. This \
result is universal as long as the steps are independent and their length \
distribution has a finite variance. Yet many distribution encountered in \
Physics, Statistics and many other disciplines have tails of the form ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["x", 
    RowBox[{"\[Alpha]", "+", "1"}]], TraditionalForm]]],
 " with 0<\[Alpha]<2 (e.g. the Cauchy distribution, the Zipf distribution, \
the Pareto distribution, the Student's t-distribution etc.) and, as a \
consequence, do not possess a finite variance. The sum of random variables \
taken from these \"heavy tailed\" distributions do not converge to a Gaussian \
but to one of the \[Alpha]-stable L\[EAcute]vy distributions. [9]"
}], "Text",
 CellChangeTimes->{{3.522062366010494*^9, 3.522062400071098*^9}, {
   3.522062545329124*^9, 3.52206273223921*^9}, {3.52206283351924*^9, 
   3.522062841959255*^9}, {3.522062899983311*^9, 3.522063067526981*^9}, 
   3.522063399959631*^9, {3.522063872767598*^9, 3.522063874239464*^9}, 
   3.522652610436462*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"PDF", "[", 
      RowBox[{
       RowBox[{"StableDistribution", "[", 
        RowBox[{
        "1", ",", "\[Alpha]", ",", "\[Beta]", ",", "0", ",", "\[Sigma]"}], 
        "]"}], ",", "x"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "10"}], ",", "10"}], "}"}], ",", 
     RowBox[{"Filling", "\[Rule]", "Axis"}], ",", " ", 
     RowBox[{"PlotRange", "\[Rule]", " ", "All"}], ",", " ", 
     RowBox[{"AxesOrigin", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0"}], "}"}]}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<P(x)\>\""}], "}"}]}], ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Normalized \[Alpha]-Stable L\[EAcute]vy distribution as a function \
of\\nthe stability parameter \[Alpha], the skewness parameter \[Beta]\\nand \
the scale parameter \[Sigma].\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "1"}], "}"}], ",", "0.1", ",", "2", ",", 
     "0.1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Beta]", ",", "0"}], "}"}], ",", 
     RowBox[{"-", "1"}], ",", "1", ",", "0.1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Sigma]", ",", "1"}], "}"}], ",", "0", ",", "5", ",", "0.2"}],
     "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.522063423375023*^9, 3.522063562603787*^9}, {
  3.522063616165732*^9, 3.522063650375477*^9}, {3.522064226839322*^9, 
  3.522064232004683*^9}, {3.522065357396312*^9, 3.522065377354489*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`\[Alpha]$$ = 1, $CellContext`\[Beta]$$ = 
    0, $CellContext`\[Sigma]$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Alpha]$$], 1}, 0.1, 2, 0.1}, {{
       Hold[$CellContext`\[Beta]$$], 0}, -1, 1, 0.1}, {{
       Hold[$CellContext`\[Sigma]$$], 1}, 0, 5, 0.2}}, Typeset`size$$ = {
    540., {212., 224.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`\[Alpha]$1126$$ = 
    0, $CellContext`\[Beta]$1127$$ = 0, $CellContext`\[Sigma]$1128$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`\[Alpha]$$ = 1, $CellContext`\[Beta]$$ = 
        0, $CellContext`\[Sigma]$$ = 1}, "ControllerVariables" :> {
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$1126$$, 0], 
        Hold[$CellContext`\[Beta]$$, $CellContext`\[Beta]$1127$$, 0], 
        Hold[$CellContext`\[Sigma]$$, $CellContext`\[Sigma]$1128$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        PDF[
         StableDistribution[
         1, $CellContext`\[Alpha]$$, $CellContext`\[Beta]$$, 
          0, $CellContext`\[Sigma]$$], $CellContext`x], {$CellContext`x, -10, 
         10}, Filling -> Axis, PlotRange -> All, AxesOrigin -> {0, 0}, 
        AxesLabel -> {"x", "P(x)"}, PlotLabel -> 
        "Normalized \[Alpha]-Stable L\[EAcute]vy distribution as a function \
of\nthe stability parameter \[Alpha], the skewness parameter \[Beta]\nand the \
scale parameter \[Sigma]."], 
      "Specifications" :> {{{$CellContext`\[Alpha]$$, 1}, 0.1, 2, 
         0.1}, {{$CellContext`\[Beta]$$, 0}, -1, 1, 
         0.1}, {{$CellContext`\[Sigma]$$, 1}, 0, 5, 0.2}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{606., {313., 321.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.522063527201339*^9, 3.522063565631768*^9}, 
   3.522063620831844*^9, 3.522063651851033*^9, 3.52206423437537*^9, 
   3.522065378980223*^9, 3.522131980592042*^9, 3.522643885141954*^9}]
}, {2}]],

Cell[TextData[{
 "The \[Alpha]-stable L\[EAcute]vy distribution are usually not easy to \
express explicitly but can be easily written via the Fourier transform of \
their characteristic function as [10]\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", "x", ")"}], "=", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      SuperscriptBox["e", 
       RowBox[{"i", " ", "k", " ", "x"}]], " ", 
      SuperscriptBox["e", 
       RowBox[{
        RowBox[{
         RowBox[{"i", " ", "k", " ", "\[Mu]"}], "-"}], "|", 
        RowBox[{"\[Sigma]", " ", "k"}], 
        SuperscriptBox["|", "\[Alpha]"], 
        RowBox[{"(", 
         RowBox[{"1", "-", 
          RowBox[{"i", " ", "\[Beta]", " ", "\[CapitalPhi]"}]}], ")"}]}]], 
      RowBox[{"\[DifferentialD]", "k"}]}]}]}], TraditionalForm]]],
 "  with  \[CapitalPhi]=sign(k) tg(\[Pi] \[Alpha]/2)  for all values of \
\[Alpha]\[Element](0,2] except for \[Alpha]=1 where  \[CapitalPhi]=-sign(k) \
(2/\[Pi]) ln|k| .\nWe can easily recognize that, for \[Alpha]=2 the result is \
always a Gaussian while for \[Alpha]=1 and \[Beta]=0 we obtain a Lorentzian. \
We can also see that for 0<\[Alpha]<1 and \[Beta]=1 the distribution is \
defined only for x>0 (only for x<0 if \[Beta]=-1).\nOther special cases \
include:\n\[FilledSmallCircle] For either \[Alpha] or \[Sigma] that tend to \
zero the distribution tends to a Dirac delta.\n\[FilledSmallCircle] For \
\[Alpha]=0.5 and \[Beta]=1 we obtain the L\[EAcute]vy distribution ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", "x", ")"}], "=", 
    RowBox[{
     SqrtBox[
      FractionBox["\[Sigma]", 
       RowBox[{"2", " ", "\[Pi]"}]]], 
     FractionBox[
      SuperscriptBox["e", 
       FractionBox["\[Sigma]", 
        RowBox[{"2", 
         RowBox[{"(", 
          RowBox[{"x", "-", "\[Mu]"}], ")"}]}]]], 
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"x", "-", "\[Mu]"}], ")"}], 
       RowBox[{"3", "/", "2"}]]]}]}], TraditionalForm]]],
 ".\n\[FilledSmallCircle] For \[Alpha]=1.5 and \[Beta]=0 we obtain the \
Holtsmark distribution (that can be expressed only in term of hypergeometric \
functions).\n\nThe first to study random walks whose step length distribution \
do not have a finite variance (and to coin the name \"L\[EAcute]vy flight\") \
was Beno\[IHat]t Mandelbrot to model the fluctuation of the cotton price \
[11].\n\n",
 StyleBox["Question: ",
  FontWeight->"Bold"],
 "Consider a bimodal step length distribution of the form ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", "x", ")"}], "=", 
    RowBox[{
     RowBox[{"a", " ", 
      RowBox[{"\[Delta]", "(", 
       RowBox[{"x", "-", 
        SubscriptBox["x", "1"]}], ")"}]}], "+", 
     RowBox[{"b", " ", 
      RowBox[{"\[Delta]", "(", 
       RowBox[{"x", "-", 
        SubscriptBox["x", "2"]}], ")"}]}]}]}], TraditionalForm]]],
 " where a and b give the probability to make a step of length ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "1"], TraditionalForm]]],
 " or ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "2"], TraditionalForm]]],
 " respectively. If ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["x", "2"], "\[GreaterGreater]", 
    SubscriptBox["x", "1"]}], TraditionalForm]]],
 " then the resulting random walk will be composed by short and long steps, \
and yet the variance of the distribution is finite. Does such a distribution \
give rise to superdiffusion or not? Why?"
}], "Text",
 CellChangeTimes->{{3.522063762980608*^9, 3.522064111091081*^9}, {
   3.522064144161395*^9, 3.522064196777442*^9}, {3.522064298135829*^9, 
   3.522064320799833*^9}, {3.522064384152978*^9, 3.52206442516783*^9}, {
   3.522064538470944*^9, 3.522064721055185*^9}, {3.522064785350934*^9, 
   3.522064864095434*^9}, 3.522064936451694*^9, {3.522064976024197*^9, 
   3.52206508963964*^9}, 3.522065274800475*^9, {3.522651399481724*^9, 
   3.52265160719665*^9}, {3.522651669070439*^9, 3.522651751898933*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Superdiffusion", "Subsection",
 CellChangeTimes->{{3.522065150649851*^9, 3.522065158616859*^9}}],

Cell[TextData[{
 "It can be intuitively understood that a L\[EAcute]vy flight spread faster \
than a Brownian motion (henceforth the name \"superdiffusion\"). But to show \
it in a formal way requires some effort. To do that we will consider a \
particle subject to a stochastic force composed by uncorrelated pulses [12]. \
After each pulse there will be a balance between the particle inertia and the \
medium viscosity that, after a transient, will make the particle move at \
constant speed until the next pulse. We can neglect this transient time and \
consider the approximate case where each rectilinear step is covered at \
constant speed obtaining the Langevin-like equation ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     OverscriptBox["r", "."], "(", "t", ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "(", "t", ")"}], " ", "\[DoubleRightArrow]", " ", 
      RowBox[{"r", "(", "t", ")"}]}], "=", 
     RowBox[{
      RowBox[{"r", "(", "0", ")"}], "+", 
      RowBox[{
       SubsuperscriptBox["\[Integral]", "0", "t"], 
       RowBox[{
        RowBox[{"f", "(", "\[Tau]", ")"}], 
        RowBox[{"\[DifferentialD]", "\[Tau]"}]}]}]}]}]}], TraditionalForm]]],
 "  where ",
 StyleBox["r(t)",
  FontSlant->"Italic"],
 " is the instantaneous position of the particle and ",
 StyleBox["f(t)",
  FontSlant->"Italic"],
 " is the stochastic force divided by the friction coefficient.\nOur aim is \
to obtain an equation that describes the time evolution of the distribution \
function ",
 StyleBox["P(x,t)=< \[Delta]( x- r(t) )>",
  FontSlant->"Italic"],
 " in the case where the intensity of the stochastic force is distributed as \
a \[Alpha]-stable L\[EAcute]vy distribution. Denoting, respectively, the \
Fourier transform and its inverse with ",
 StyleBox["F",
  FontSlant->"Italic"],
 " and ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["F", 
    RowBox[{"-", "1"}]], TraditionalForm]]],
 " we have\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", 
     RowBox[{"x", ",", "t"}], ")"}], "=", 
    RowBox[{
     RowBox[{"<", " ", 
      RowBox[{"\[Delta]", "(", 
       RowBox[{"x", "-", 
        RowBox[{"r", "(", "t", ")"}]}], " ", ")"}], " ", ">"}], " ", "=", " ", 
     RowBox[{
      RowBox[{"<", " ", 
       RowBox[{
        SuperscriptBox["F", 
         RowBox[{"-", "1"}]], "[", 
        SuperscriptBox["e", 
         RowBox[{"i", " ", "k", " ", 
          RowBox[{"r", "(", "t", ")"}]}]], "]"}], ">"}], " ", "=", 
      RowBox[{
       RowBox[{
        SuperscriptBox["F", 
         RowBox[{"-", "1"}]], "[", 
        RowBox[{"<", 
         SuperscriptBox["e", 
          RowBox[{"i", " ", "k", " ", 
           RowBox[{"r", "(", "t", ")"}]}]], ">"}], "]"}], "=", 
       RowBox[{
        SuperscriptBox["F", 
         RowBox[{"-", "1"}]], "[", 
        RowBox[{"<", 
         SuperscriptBox["e", 
          RowBox[{"i", " ", "k", " ", 
           RowBox[{
            SubsuperscriptBox["\[Integral]", "0", "t"], 
            RowBox[{
             RowBox[{"f", "(", "\[Tau]", ")"}], 
             RowBox[{"\[DifferentialD]", "\[Tau]"}]}]}]}]], ">"}], 
        "]"}]}]}]}]}], TraditionalForm]]],
 " \nwhere in the last step we assumed ",
 StyleBox["r(0)=0",
  FontSlant->"Italic"],
 ".\nFor simplicity we can assume that ",
 StyleBox["f(t)",
  FontSlant->"Italic"],
 " is composed by a series of equally spaced pulses (this hypothesis is not \
necessary but makes the derivation easier): ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"f", "(", "t", ")"}], "=", 
    RowBox[{
     UnderoverscriptBox["\[Sum]", 
      RowBox[{"j", "=", "0"}], "m"], 
     RowBox[{
      SubscriptBox["f", "j"], " ", "\[Eta]", " ", 
      RowBox[{"\[Delta]", "(", 
       RowBox[{"t", "-", 
        SubscriptBox["t", "j"]}], ")"}]}]}]}], TraditionalForm]]],
 " , where m is the number of pulses in the time interval t, \[Eta] is the \
interval between two pulses and ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["f", "j"], TraditionalForm]]],
 " is the intensity if the ",
 StyleBox["j",
  FontSlant->"Italic"],
 "th pulse.\nThe characteristic function ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["\[CurlyPhi]", "f"], TraditionalForm]]],
 " of the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["f", "j"], TraditionalForm]]],
 " distribution is the expectation value of ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["e", 
    RowBox[{"i", " ", "k", " ", 
     SubscriptBox["f", "j"]}]], TraditionalForm]]],
 " and can be written as ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["\[CurlyPhi]", "f"], "=", 
    RowBox[{
     RowBox[{"<", 
      SuperscriptBox["e", 
       RowBox[{"i", " ", "k", " ", 
        SubscriptBox["f", "j"]}]], ">"}], " ", "=", 
     SuperscriptBox["e", 
      RowBox[{
       RowBox[{"-", "\[Eta]"}], " ", "|", 
       RowBox[{"\[Sigma]", " ", "k"}], 
       SuperscriptBox["|", "\[Alpha]"]}]]}]}], TraditionalForm]]],
 " (if \[Alpha]=2 we recover the diffusive case while for 0<\[Alpha]<2 we \
have a intensity distribution that follows a \[Alpha]-stable L\[EAcute]vy \
distribution).\nIf the pulses are statistically independent we can then \
write:\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", 
     RowBox[{"x", ",", "t"}], ")"}], "=", " ", 
    RowBox[{
     RowBox[{
      SuperscriptBox["F", 
       RowBox[{"-", "1"}]], "[", 
      RowBox[{"<", 
       SuperscriptBox["e", 
        RowBox[{"i", " ", "k", " ", 
         RowBox[{
          UnderoverscriptBox["\[Sum]", 
           RowBox[{"j", "=", "0"}], "m"], 
          SubscriptBox["f", "j"]}]}]], ">"}], "]"}], "=", 
     RowBox[{
      RowBox[{
       SuperscriptBox["F", 
        RowBox[{"-", "1"}]], "[", 
       RowBox[{
        UnderoverscriptBox["\[Product]", 
         RowBox[{"j", "=", "0"}], "m"], 
        RowBox[{"<", 
         SuperscriptBox["e", 
          RowBox[{"i", " ", "k", " ", 
           SubscriptBox["f", "j"]}]], ">"}]}], "]"}], "=", 
      RowBox[{
       RowBox[{
        SuperscriptBox["F", 
         RowBox[{"-", "1"}]], "[", 
        RowBox[{"<", 
         SuperscriptBox["e", 
          RowBox[{"i", " ", "k", " ", 
           SubscriptBox["f", "j"]}]], 
         SuperscriptBox[">", "m"]}], "]"}], "=", 
       RowBox[{
        RowBox[{
         SuperscriptBox["F", 
          RowBox[{"-", "1"}]], "[", 
         SuperscriptBox["e", 
          RowBox[{
           RowBox[{
            RowBox[{"-", "\[Eta]"}], " ", "m"}], " ", "|", 
           RowBox[{"\[Sigma]", " ", "k"}], 
           SuperscriptBox["|", "\[Alpha]"]}]], "]"}], "=", 
        RowBox[{
         SuperscriptBox["F", 
          RowBox[{"-", "1"}]], "[", 
         SuperscriptBox["e", 
          RowBox[{
           RowBox[{"-", "t"}], " ", "|", 
           RowBox[{"\[Sigma]", " ", "k"}], 
           SuperscriptBox["|", "\[Alpha]"]}]], "]"}]}]}]}]}]}], 
   TraditionalForm]]],
 "  and thus\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", 
      RowBox[{"P", "(", 
       RowBox[{"x", ",", "t"}], ")"}]}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    RowBox[{
     SuperscriptBox["F", 
      RowBox[{"-", "1"}]], "[", 
     RowBox[{"-", 
      RowBox[{"|", 
       RowBox[{"\[Sigma]", " ", "k"}], 
       SuperscriptBox["|", "\[Alpha]"], " ", 
       SuperscriptBox["e", 
        RowBox[{
         RowBox[{"-", "t"}], " ", "|", 
         RowBox[{"\[Sigma]", " ", "k"}], 
         SuperscriptBox["|", "\[Alpha]"]}]]}]}], "]"}]}], TraditionalForm]]],
 " .\nIf \[Alpha] is an integer for each multiplicative ",
 StyleBox["k",
  FontSlant->"Italic"],
 " in the inverse Fourier transform yields a spatial derivative multiplied by \
the imaginary unit ",
 StyleBox["i",
  FontSlant->"Italic"],
 "). Therefore the case \[Alpha]=2 can be written as\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", 
      RowBox[{"P", "(", 
       RowBox[{"x", ",", "t"}], ")"}]}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    RowBox[{
     RowBox[{
      SuperscriptBox["\[Sigma]", "2"], " ", 
      RowBox[{
       SuperscriptBox["\[Del]", "2"], 
       RowBox[{
        SuperscriptBox["F", 
         RowBox[{"-", "1"}]], "[", 
        SuperscriptBox["e", 
         RowBox[{
          RowBox[{"-", "t"}], " ", "|", 
          RowBox[{"\[Sigma]", " ", "k"}], 
          SuperscriptBox["|", "2"]}]], "]"}]}]}], "=", 
     RowBox[{
      SuperscriptBox["\[Sigma]", "2"], 
      RowBox[{
       SuperscriptBox["\[Del]", "2"], 
       RowBox[{"P", "(", 
        RowBox[{"x", ",", "t"}], ")"}]}]}]}]}], TraditionalForm]]],
 "  that is the standard diffusion equation.\nWhen \[Alpha] is not an integer \
(as in the case when the pulses follow a distribution with infinite variance) \
the problem is mathematically more complex. In fact we need to find a \
operator ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["\[Del]", "\[Alpha]"], TraditionalForm]]],
 "that, for any function ",
 StyleBox["g(x)",
  FontSlant->"Italic"],
 ", satisfies ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"F", "[", 
     RowBox[{
      SuperscriptBox["\[Del]", "\[Alpha]"], 
      RowBox[{"g", "(", "x", ")"}]}], "]"}], "=", 
    RowBox[{"-", 
     RowBox[{"|", "k", 
      SuperscriptBox["|", "\[Alpha]"], " ", 
      RowBox[{"g", "(", "x", ")"}]}]}]}], TraditionalForm]]],
 " . Luckily this operator, known as fractional Laplacian, exists and can be \
written explicitly as\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["\[Del]", "\[Alpha]"], 
     RowBox[{"g", "(", "x", ")"}]}], "=", 
    RowBox[{
     FractionBox["1", 
      RowBox[{"2", " ", 
       RowBox[{"\[CapitalGamma]", "(", 
        RowBox[{"2", "-", "\[Alpha]"}], ")"}], " ", 
       RowBox[{"cos", "(", 
        RowBox[{
         FractionBox["\[Pi]", "2"], 
         RowBox[{"(", 
          RowBox[{"2", "-", "\[Alpha]"}], ")"}]}], " ", ")"}]}]], 
     RowBox[{
      FractionBox[
       SuperscriptBox["\[PartialD]", "2"], 
       RowBox[{"\[PartialD]", 
        SuperscriptBox["x", "2"]}]], 
      RowBox[{
       SubsuperscriptBox["\[Integral]", 
        RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
       RowBox[{
        FractionBox[
         RowBox[{"g", "(", "y", ")"}], 
         RowBox[{"|", 
          RowBox[{"x", "-", "y"}], 
          SuperscriptBox["|", 
           RowBox[{"\[Alpha]", "-", "1"}]]}]], 
        RowBox[{"\[DifferentialD]", "y"}]}]}]}]}]}], TraditionalForm]]],
 " . [13]\nArmed with this operator we can obtain a diffusion-like equation \
for a L\[EAcute]vy flight transport: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    FractionBox[
     RowBox[{"\[PartialD]", 
      RowBox[{"P", "(", 
       RowBox[{"x", ",", "t"}], ")"}]}], 
     RowBox[{"\[PartialD]", "t"}]], "=", 
    RowBox[{
     SubscriptBox["D", "\[Alpha]"], " ", 
     RowBox[{
      SuperscriptBox["\[Del]", "\[Alpha]"], 
      RowBox[{"P", "(", 
       RowBox[{"x", ",", "t"}], ")"}]}]}]}], TraditionalForm]]],
 " where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["D", "\[Alpha]"], TraditionalForm]]],
 " is analogous to the diffusion constant but has dimensions ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SuperscriptBox["m", "\[Alpha]"], "/", "s"}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.522065204618226*^9, 3.522065208609829*^9}, {
   3.522132168380856*^9, 3.522132168876422*^9}, {3.522132277796777*^9, 
   3.522132316460756*^9}, {3.522132365487963*^9, 3.522132397324582*^9}, {
   3.52213244814942*^9, 3.522132508628705*^9}, {3.522132603150135*^9, 
   3.522132639237178*^9}, {3.522132685716867*^9, 3.522132795265377*^9}, {
   3.522132834452027*^9, 3.522133017418678*^9}, {3.522133058560123*^9, 
   3.522133100740946*^9}, {3.522133134525033*^9, 3.522133140407645*^9}, {
   3.522133257547582*^9, 3.522133395965188*^9}, {3.522133443240232*^9, 
   3.522133655853421*^9}, {3.522133788295656*^9, 3.522134200834346*^9}, {
   3.522134251941577*^9, 3.522134353348155*^9}, {3.522134422278877*^9, 
   3.522134723684855*^9}, {3.52215243541413*^9, 3.522152878112794*^9}, {
   3.522152967568371*^9, 3.522153144719896*^9}, 3.522651774169308*^9, {
   3.522652631172522*^9, 3.522652638154713*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"PDF", "[", 
      RowBox[{
       RowBox[{"StableDistribution", "[", 
        RowBox[{"1", ",", "\[Alpha]", ",", "0", ",", "0", ",", 
         SuperscriptBox["time", "\[Alpha]"]}], "]"}], ",", "x"}], "]"}], ",", 
     
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "30"}], ",", "30"}], "}"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Red", ",", " ", "Thick"}], "}"}]}], ",", " ", 
     RowBox[{"PlotRange", "\[Rule]", " ", "All"}], ",", " ", 
     RowBox[{"AxesOrigin", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"0", ",", "0"}], "}"}]}], ",", 
     RowBox[{"AxesLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<x\>\"", ",", "\"\<P(x,t)\>\""}], "}"}]}], ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Solution to the diffusion-like equation\\nfor L\[EAcute]vy \
flights.\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"\[Alpha]", ",", "1"}], "}"}], ",", "0.1", ",", "2", ",", 
     "0.1"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"time", ",", "0.1", ",", "10", ",", "0.1"}], "}"}]}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.522153382580331*^9, 3.522153481292364*^9}, {
  3.522153557315782*^9, 3.522153566958389*^9}, {3.522153649069858*^9, 
  3.522153666627962*^9}, {3.522153725647052*^9, 3.522153733562635*^9}, {
  3.522153861885627*^9, 3.522153952954336*^9}, {3.52215400022557*^9, 
  3.522154105076697*^9}, {3.522398812772171*^9, 3.522398813262427*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`time$$ = 0.1, $CellContext`\[Alpha]$$ = 1, 
    Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{{
       Hold[$CellContext`\[Alpha]$$], 1}, 0.1, 2, 0.1}, {
      Hold[$CellContext`time$$], 0.1, 10, 0.1}}, Typeset`size$$ = {
    540., {198., 210.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`\[Alpha]$18367$$ = 
    0, $CellContext`time$18368$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, 
      "Variables" :> {$CellContext`time$$ = 0.1, $CellContext`\[Alpha]$$ = 1},
       "ControllerVariables" :> {
        Hold[$CellContext`\[Alpha]$$, $CellContext`\[Alpha]$18367$$, 0], 
        Hold[$CellContext`time$$, $CellContext`time$18368$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Plot[
        PDF[
         StableDistribution[
         1, $CellContext`\[Alpha]$$, 0, 
          0, $CellContext`time$$^$CellContext`\[Alpha]$$], $CellContext`x], \
{$CellContext`x, -30, 30}, PlotStyle -> {Red, Thick}, PlotRange -> All, 
        AxesOrigin -> {0, 0}, AxesLabel -> {"x", "P(x,t)"}, PlotLabel -> 
        "Solution to the diffusion-like equation\nfor L\[EAcute]vy flights."],
       "Specifications" :> {{{$CellContext`\[Alpha]$$, 1}, 0.1, 2, 
         0.1}, {$CellContext`time$$, 0.1, 10, 0.1}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{606., {281., 289.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.522153484750618*^9, 3.52215356885323*^9, 3.522153668929022*^9, 
   3.522153734146727*^9, {3.522153868040143*^9, 3.522153908143788*^9}, 
   3.522153955132775*^9, 3.522154013198188*^9, {3.522154056071447*^9, 
   3.522154105682505*^9}, 3.522154146236282*^9, {3.522398815145039*^9, 
   3.522398839582411*^9}}]
}, {2}]],

Cell[TextData[{
 StyleBox["Question:",
  FontWeight->"Bold"],
 " How does the mean square root displacement evolve with time for a L\
\[EAcute]vy flight? And for standard diffusion?"
}], "Text",
 CellChangeTimes->{{3.522154188112773*^9, 3.522154275112845*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Truncated L\[EAcute]vy flights and L\[EAcute]vy walks\
\>", "Subsection",
 CellChangeTimes->{{3.522065181122424*^9, 3.522065187330473*^9}, {
  3.522399112369585*^9, 3.52239911806558*^9}}],

Cell[TextData[{
 "The main problem with L\[EAcute]vy flights is that all step in the random \
walk are performed in the same interval of time (in the previous calculation: \
\[Eta]). Since arbitrary long steps are not only possible but also relatively \
likely, this imply the possibility for arbitrary high speed; in principle \
higher than the speed of light.\nOf course this is not physically acceptable \
and this severely limit the usefulness of L\[EAcute]vy flights as a model for \
superdiffusive transport. A way to solve this problem is to introduce a step \
length distribution whose power-law tail is truncated at a certain point (",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", "x", ")"}], "=", "0"}], TraditionalForm]]],
 " for x bigger than a certain value). Such step length distribution has, of \
course, finite variance and therefore the Central Limit Theorem assures us \
that, after many steps, the overall propagation will be diffusive. Yet a \
truncated power-law distribution can take a very long time before it \
converges to a Gaussian. If this characteristic time is longer than the \
typical time-scale we are interested in observing, we will still see a \
superdiffusive transport. [14]\n\n",
 StyleBox["Question: ",
  FontWeight->"Bold"],
 "Can you find an example where an arbitrary high speed is acceptable? (Hint: \
not every quantity follows the special relativity.)\n\nAnother approach to \
this problem is to introduce a random walk whose steps are distributed with a \
power-law tail, but where the walker itself move at a finite (constant) speed \
",
 StyleBox["v",
  FontSlant->"Italic"],
 ". This model, known as a L\[EAcute]vy walk (as opposed to a \"flight\") has \
the advantage to get rid of all divergences without introducing artificial \
truncations in the system. [15]"
}], "Text",
 CellChangeTimes->{{3.522065210832386*^9, 3.522065215825055*^9}, {
   3.52239891661774*^9, 3.522399069017598*^9}, {3.522399136886882*^9, 
   3.522399485617176*^9}, 3.52239953027438*^9, {3.522399841755551*^9, 
   3.522399842993718*^9}, {3.522400020869012*^9, 3.522400134105455*^9}, {
   3.522400180017606*^9, 3.522400274697842*^9}, {3.52257695077666*^9, 
   3.522576951245138*^9}, {3.522651923316579*^9, 3.522652010419245*^9}, {
   3.522652649536213*^9, 3.522652656467665*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"GraphicsColumn", "[", 
    RowBox[{
     RowBox[{"{", "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Accumulate", "[", "rw", "]"}], ",", " ", 
         RowBox[{"Joined", "\[Rule]", " ", "True"}], ",", " ", 
         RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", " ", 
         RowBox[{"Axes", "\[Rule]", " ", "False"}], ",", " ", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", "Black", "}"}]}], ",", " ", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<time\>\"", ",", "\"\<position\>\""}], "}"}]}], ",", 
         " ", 
         RowBox[{"PlotLabel", "\[Rule]", "\"\<Brownian random walk\>\""}]}], 
        "]"}], ",", "\[IndentingNewLine]", 
       RowBox[{"ListPlot", "[", 
        RowBox[{
         RowBox[{"Accumulate", "[", "lw", "]"}], ",", " ", 
         RowBox[{"Joined", "\[Rule]", " ", "True"}], ",", " ", 
         RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", " ", 
         RowBox[{"Axes", "\[Rule]", " ", "False"}], ",", " ", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", "Black", "}"}]}], ",", " ", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<time\>\"", ",", "\"\<position\>\""}], "}"}]}], ",", 
         " ", 
         RowBox[{
         "PlotLabel", "\[Rule]", 
          "\"\<L\[EAcute]vy flight (notice the abrupt jumps)\>\""}]}], "]"}], 
       ",", "\[IndentingNewLine]", 
       RowBox[{"Plot", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"Interpolation", "[", 
           RowBox[{
            RowBox[{"Prepend", "[", 
             RowBox[{
              RowBox[{"Accumulate", "[", 
               RowBox[{"Table", "[", 
                RowBox[{
                 RowBox[{"{", 
                  RowBox[{
                   RowBox[{"Abs", "[", 
                    RowBox[{"lw", "[", 
                    RowBox[{"[", "i", "]"}], "]"}], "]"}], ",", 
                   RowBox[{"lw", "[", 
                    RowBox[{"[", "i", "]"}], "]"}]}], "}"}], ",", 
                 RowBox[{"{", 
                  RowBox[{"i", ",", "500"}], "}"}]}], "]"}], "]"}], ",", 
              RowBox[{"{", 
               RowBox[{"0", ",", "0"}], "}"}]}], "]"}], ",", " ", 
            RowBox[{"InterpolationOrder", "\[Rule]", "1"}]}], "]"}], "[", "x",
           "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"x", ",", "0", ",", "1000"}], "}"}], ",", " ", 
         RowBox[{"Frame", "\[Rule]", " ", "True"}], ",", " ", 
         RowBox[{"Axes", "\[Rule]", " ", "False"}], ",", " ", 
         RowBox[{"PlotStyle", "\[Rule]", 
          RowBox[{"{", "Black", "}"}]}], ",", " ", 
         RowBox[{"FrameLabel", "\[Rule]", 
          RowBox[{"{", 
           RowBox[{"\"\<time\>\"", ",", "\"\<position\>\""}], "}"}]}], ",", 
         " ", 
         RowBox[{
         "PlotLabel", "\[Rule]", 
          "\"\<L\[EAcute]vy walk (long steps take a long time)\>\""}]}], 
        "]"}]}], "\[IndentingNewLine]", "}"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "Large"}], ",", " ", 
     RowBox[{
     "PlotLabel", "\[Rule]", "\"\<Three different 1D random walks\\n\>\""}]}],
     "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"Button", "[", 
    RowBox[{"\"\<Refresh\>\"", ",", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"lw", "=", 
        RowBox[{"RandomVariate", "[", 
         RowBox[{
          RowBox[{"StableDistribution", "[", 
           RowBox[{"1", ",", "1", ",", "0", ",", "0", ",", "1"}], "]"}], ",", 
          "1000"}], "]"}]}], ";", 
       RowBox[{"rw", "=", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"RandomReal", "[", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}], ",", 
          RowBox[{"{", "1000", "}"}]}], "]"}]}], ";"}], ")"}]}], "]"}], ",", 
   " ", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"rw", "=", 
       RowBox[{"Table", "[", 
        RowBox[{
         RowBox[{"RandomReal", "[", 
          RowBox[{"{", 
           RowBox[{
            RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}], ",", 
         RowBox[{"{", "1000", "}"}]}], "]"}]}], ";", 
      RowBox[{"lw", "=", 
       RowBox[{"RandomVariate", "[", 
        RowBox[{
         RowBox[{"StableDistribution", "[", 
          RowBox[{"1", ",", "1", ",", "0", ",", "0", ",", "1"}], "]"}], ",", 
         "1000"}], "]"}]}], ";"}], ")"}]}]}], "  ", "]"}]], "Input",
 CellChangeTimes->{{3.522575063733251*^9, 3.522575190205808*^9}, {
  3.522575568451929*^9, 3.522575568712821*^9}, {3.522575894212437*^9, 
  3.522575936002065*^9}, {3.52257597285391*^9, 3.52257598246064*^9}, {
  3.52257603121099*^9, 3.522576032602568*^9}, {3.522576184133128*^9, 
  3.522576311808819*^9}, {3.522576345990995*^9, 3.522576384763442*^9}, {
  3.52257642812766*^9, 3.52257649647813*^9}, {3.522576545682606*^9, 
  3.522576548005534*^9}, {3.522576643114438*^9, 3.522576644633546*^9}, {
  3.522576703936074*^9, 3.52257676987521*^9}, {3.522576813914342*^9, 
  3.522576872409219*^9}, {3.522644119990174*^9, 3.522644140224631*^9}, {
  3.522644201741207*^9, 3.522644227015404*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{Typeset`show$$ = True, Typeset`bookmarkList$$ = {}, 
    Typeset`bookmarkMode$$ = "Menu", Typeset`animator$$, Typeset`animvar$$ = 
    1, Typeset`name$$ = "\"untitled\"", Typeset`specs$$ = {{
      Hold[
       Button["Refresh", $CellContext`lw = RandomVariate[
           StableDistribution[1, 1, 0, 0, 1], 1000]; $CellContext`rw = Table[
           RandomReal[{-1, 1}], {1000}]; Null]], 
      Manipulate`Dump`ThisIsNotAControl}}, Typeset`size$$ = {
    574., {534., 546.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {}, "ControllerVariables" :> {}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         ListPlot[
          Accumulate[$CellContext`rw], Joined -> True, Frame -> True, Axes -> 
          False, PlotStyle -> {Black}, FrameLabel -> {"time", "position"}, 
          PlotLabel -> "Brownian random walk"], 
         ListPlot[
          Accumulate[$CellContext`lw], Joined -> True, Frame -> True, Axes -> 
          False, PlotStyle -> {Black}, FrameLabel -> {"time", "position"}, 
          PlotLabel -> "L\[EAcute]vy flight (notice the abrupt jumps)"], 
         Plot[
          Interpolation[
           Prepend[
            Accumulate[
             Table[{
               Abs[
                Part[$CellContext`lw, $CellContext`i]], 
               Part[$CellContext`lw, $CellContext`i]}, {$CellContext`i, 
               500}]], {0, 0}], InterpolationOrder -> 
           1][$CellContext`x], {$CellContext`x, 0, 1000}, Frame -> True, Axes -> 
          False, PlotStyle -> {Black}, FrameLabel -> {"time", "position"}, 
          PlotLabel -> "L\[EAcute]vy walk (long steps take a long time)"]}, 
        ImageSize -> Large, PlotLabel -> "Three different 1D random walks\n"],
       "Specifications" :> {
        Button["Refresh", $CellContext`lw = RandomVariate[
            StableDistribution[1, 1, 0, 0, 1], 1000]; $CellContext`rw = 
          Table[
            RandomReal[{-1, 1}], {1000}]; Null]}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{640., {601., 609.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`rw = Table[
         RandomReal[{-1, 1}], {1000}]; $CellContext`lw = RandomVariate[
         StableDistribution[1, 1, 0, 0, 1], 1000]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.52257686415494*^9, 3.522576873353682*^9}, 
   3.522644141375903*^9, {3.522644208381312*^9, 3.522644228227566*^9}}]
}, {2}]],

Cell[TextData[{
 "While L\[EAcute]vy walks solve the \"infinite speed\" problem, they have \
the shortcoming that no diffusion-like equation is known for this type of \
random walks, making analytical prediction with this model difficult. It is \
anyway possible to demonstrate that the mean square displacement ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    RowBox[{
     SuperscriptBox["x", "2"], "(", "t", ")"}], ">"}], TraditionalForm]]],
 " of a L\[EAcute]vy walk scales (for large times) as ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["t", 
    RowBox[{"3", "-", "\[Alpha]"}]], TraditionalForm]]],
 " when 1<\[Alpha]<2, and as ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["t", "2"], TraditionalForm]]],
 " when 0<\[Alpha]<1 . [16]\n\n",
 StyleBox["Question:",
  FontWeight->"Bold"],
 " The mean square displacement of a  ballistic walker (i.e. a walker that \
propagate at a constant speed in a fixed direction) scales with time as ",
 Cell[BoxData[
  FormBox[
   SuperscriptBox["t", "2"], TraditionalForm]]],
 " just like a L\[EAcute]vy walk with 0<\[Alpha]<1. How can the spreading of \
a random walk scale in the same way as something that just fly straight?"
}], "Text",
 CellChangeTimes->{{3.522577009121391*^9, 3.522577148988821*^9}, {
  3.522644290418066*^9, 3.522644458313758*^9}, {3.522644525894934*^9, 
  3.522644568305548*^9}, {3.522644600993788*^9, 3.522644643762126*^9}, {
  3.522644732170089*^9, 3.522644846377937*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Conclusions", "Subsection",
 CellChangeTimes->{{3.521456888541393*^9, 3.521456898829589*^9}}],

Cell["\<\
Superdiffusion is a relatively common phenomenon that can not be explained \
with the usual Brownian random walk model. To describe it we need to include \
the possibility for very long step to happen, and this changes completely the \
properties of the system. The oldest model for superdiffusion (developed by \
Mandelbrot) generalize the Brownian motion to the case of a infinite variance \
step length distribution, thus introducing L\[EAcute]vy flights.
For this new class of random walks it is possible to write a diffusion-like \
equation in terms of a \"fractional Laplacian\"operator but its use is \
limited whenever arbitrary high speeds are not acceptable. In these cases \
more complicated models like truncated L\[EAcute]vy flights and L\[EAcute]vy \
walks can be used.\
\>", "Text",
 CellChangeTimes->{{3.521456921679896*^9, 3.521457137208935*^9}, {
   3.522059184963099*^9, 3.522059185830392*^9}, {3.522644972801747*^9, 
   3.522644973145455*^9}, {3.52264501497773*^9, 3.522645246722006*^9}, {
   3.522645335402384*^9, 3.522645479314054*^9}, 3.522652685989933*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["References", "Section",
 CellChangeTimes->{{3.52204658710558*^9, 3.522046596542175*^9}}],

Cell[TextData[{
 "[1] J.-P. Bouchaud, Nature ",
 StyleBox["455",
  FontWeight->"Bold"],
 ", 1181 (2008).\n[2] R. Klages, G. Radons, and I.M. Sokolov, ",
 StyleBox["\"Anomalous Transport\"",
  FontSlant->"Italic"],
 " , Wiley-VHC (2008).\n[3] C. Tsallis, S.V.F. Levy, A.M.C. Souza, and R. \
Maynard, Phys. Rev. Lett. ",
 StyleBox["75",
  FontWeight->"Bold"],
 ", 3589 (1995).\n[4] S. Boldyrev and C.R. Gwinn, Phys. Rev. Lett. ",
 StyleBox["91",
  FontWeight->"Bold"],
 ", 131101 (2003).\n[5] A. Corral, Phys. Rev. Lett. ",
 StyleBox["97",
  FontWeight->"Bold"],
 ", 178501 (2006).\n[6] R.N. Mantegna and H.E. Stanley, Nature ",
 StyleBox["376",
  FontWeight->"Bold"],
 ", 46 (1995).\n[7] N.E. Humphries ",
 StyleBox["et al.",
  FontSlant->"Italic"],
 ", Nature ",
 StyleBox["465",
  FontWeight->"Bold"],
 ", 1066 (2010).\n[8] K. Pearson, Nature ",
 StyleBox["72",
  FontWeight->"Bold"],
 ", 342 (1905).\n[9] B.V. Gnedenko and A.N. Kolmogorov, ",
 StyleBox["\"Limit Distributions for Sums of Independent Random Variables\"",
  FontSlant->"Italic"],
 ", Addison-Wesley (1954).\n[10] J.P. Nolan, ",
 StyleBox["\"Stable distributions\"",
  FontSlant->"Italic"],
 ", Birkhauser (2002).\n[11] B. Mandelbrot, The Journal of Businnes ",
 StyleBox["36",
  FontWeight->"Bold"],
 ", 394 (1963).\n[12] V.V. Yanovsky, A.V. Chechkin, D. Schertzer, Physica A \
",
 StyleBox["282",
  FontWeight->"Bold"],
 ", 13 (2000).\n[13] I. Podlubny, ",
 StyleBox["\"Fractional differential equations\"",
  FontSlant->"Italic"],
 ", Academic Press (1999).\n[14] R.N. Mantegna and H.E. Stanley, Phys. Rev. \
Lett.  ",
 StyleBox["73",
  FontWeight->"Bold"],
 ", 2946 (1994).\n[15] M.F. Shlesinger, B.J. West and J. Klafter, Phys. Rev. \
Lett. ",
 StyleBox["58",
  FontWeight->"Bold"],
 ", 1100 (1987).\n[16] G. Zumofen and J. Klafter, Phys. Rev. E ",
 StyleBox["47",
  FontWeight->"Bold"],
 ", 851 (1993)."
}], "Text",
 CellChangeTimes->{{3.522046617284922*^9, 3.522046676587974*^9}, 
   3.522046720004198*^9, {3.522046801040373*^9, 3.522046849732385*^9}, {
   3.522046910664647*^9, 3.522046951291877*^9}, {3.522047111479553*^9, 
   3.522047173699748*^9}, {3.522059190774831*^9, 3.522059191358215*^9}, {
   3.52206111095101*^9, 3.522061139710887*^9}, {3.52206117801813*^9, 
   3.522061199751257*^9}, {3.522061503452893*^9, 3.522061529494911*^9}, {
   3.522064896426194*^9, 3.52206492238359*^9}, {3.522065092919203*^9, 
   3.522065122423209*^9}, {3.522132522694744*^9, 3.522132566844937*^9}, {
   3.522152881496451*^9, 3.522152945120756*^9}, {3.522399939033423*^9, 
   3.522399996161513*^9}, {3.522400280001591*^9, 3.52240035616952*^9}, {
   3.522644848636979*^9, 3.522644892170185*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Further readings", "Section",
 CellChangeTimes->{{3.522047527643491*^9, 3.522047535622621*^9}}],

Cell[TextData[{
 "\[FilledSmallCircle] R. Klages, G. Radons and I. M. Sokolov, ",
 StyleBox["\"Anomalous Transport\"",
  FontSlant->"Italic"],
 ", Wiley-VCH (2006)."
}], "Text",
 CellChangeTimes->{{3.522047541842395*^9, 3.522047550468076*^9}, {
   3.522047685492086*^9, 3.522047726995977*^9}, {3.522047851499991*^9, 
   3.522047881964268*^9}, {3.522059197279193*^9, 3.52205919790213*^9}, {
   3.522645509918601*^9, 3.522645576137854*^9}, 3.522652051798547*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Copyright", "Section",
 CellChangeTimes->{{3.52205163377883*^9, 3.522051641111385*^9}}],

Cell[TextData[{
 "This work is licensed under a Creative Commons Attribution - ShareAlike 3.0 \
Unported License (CC BY-SA 3.0).\n\nYou are free:\n    \[FilledSmallCircle] \
to Share \[LongDash] to copy, distribute and transmit the work\n    \
\[FilledSmallCircle] to Remix \[LongDash] to adapt the work\n    \
\[FilledSmallCircle] to make commercial use of the work\n\nUnder the \
following conditions:\n    \[FilledSmallCircle] Attribution \[LongDash] You \
must attribute the work in the manner specified by the author or licensor \
(but not in any way that suggests that they endorse you or your use of the \
work).\n    \[FilledSmallCircle] Share Alike \[LongDash] If you alter, \
transform, or build upon this work, you may distribute the resulting work \
only under the same or similar license to this one.\n\nWith the understanding \
that:\n    \[FilledSmallCircle] Waiver \[LongDash] Any of the above \
conditions can be waived if you get permission from the copyright holder.\n   \
 \[FilledSmallCircle] Public Domain \[LongDash] Where the work or any of its \
elements is in the public domain under applicable law, that status is in no \
way affected by the license.\n    \[FilledSmallCircle] Other Rights \
\[LongDash] In no way are any of the following rights affected by the \
license:\n        \[Bullet] Your fair dealing or fair use rights, or other \
applicable copyright exceptions and limitations;\n        \[Bullet] The \
author\[CloseCurlyQuote]s moral rights;\n        \[Bullet] Rights other \
persons may have either in the work itself or in how the work is used, such \
as publicity or privacy rights.\n \nFor the full license see the ",
 ButtonBox["legal code",
  BaseStyle->"Hyperlink",
  ButtonData->{
    URL["http://creativecommons.org/licenses/by-sa/3.0/legalcode"], None},
  ButtonNote->"http://creativecommons.org/licenses/by-sa/3.0/legalcode"],
 "."
}], "Text",
 CellChangeTimes->{{3.522051663495764*^9, 3.522051855469434*^9}, {
   3.522051933948165*^9, 3.522051985564771*^9}, {3.522052024172901*^9, 
   3.52205204739209*^9}, 3.522052477276268*^9}]
}, Open  ]]
}, Open  ]]
},
WindowSize->{884, 1002},
WindowMargins->{{58, Automatic}, {Automatic, -10}},
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 1.5, 1.5 Inherited],
FrontEndVersion->"8.0 for Linux x86 (64-bit) (October 10, 2011)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[572, 22, 232, 4, 217, "Title"],
Cell[807, 28, 692, 14, 214, "Text"],
Cell[CellGroupData[{
Cell[1524, 46, 158, 2, 57, "Subsection"],
Cell[1685, 50, 1920, 28, 361, "Text"],
Cell[CellGroupData[{
Cell[3630, 82, 4890, 126, 3982, "Input"],
Cell[8523, 210, 3734, 83, 746, "Output"]
}, {2}]],
Cell[12269, 296, 1193, 20, 257, "Text"],
Cell[CellGroupData[{
Cell[13487, 320, 1688, 44, 451, "Input"],
Cell[15178, 366, 2754, 51, 658, "Output"]
}, {2}]],
Cell[17944, 420, 4021, 97, 649, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[22002, 522, 102, 1, 57, "Subsection"],
Cell[22107, 525, 12094, 353, 1319, "Text"],
Cell[CellGroupData[{
Cell[34226, 882, 1590, 40, 1215, "Input"],
Cell[35819, 924, 2472, 48, 594, "Output"]
}, {2}]],
Cell[38303, 975, 260, 6, 71, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[38600, 986, 197, 4, 57, "Subsection"],
Cell[38800, 992, 2319, 39, 599, "Text"],
Cell[CellGroupData[{
Cell[41144, 1035, 5258, 123, 999, "Input"],
Cell[46405, 1160, 3112, 62, 1234, "Output"]
}, {2}]],
Cell[49529, 1225, 1447, 33, 287, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[51013, 1263, 99, 1, 57, "Subsection"],
Cell[51115, 1266, 1090, 16, 282, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52242, 1287, 94, 1, 110, "Section"],
Cell[52339, 1290, 2655, 68, 513, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55031, 1363, 101, 1, 110, "Section"],
Cell[55135, 1366, 460, 9, 43, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[55632, 1380, 93, 1, 110, "Section"],
Cell[55728, 1383, 2081, 32, 751, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature exTAGmuntP6XjAwqPB##SAwi *)
