(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc.                                               *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       835,         17]
NotebookDataLength[    247954,       5192]
NotebookOptionsPosition[    245430,       5094]
NotebookOutlinePosition[    245870,       5111]
CellTagsIndexPosition[    245827,       5108]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Tutorial : Correlated disorder", "Title",
 CellChangeTimes->{{3.521261098790794*^9, 3.521261124273987*^9}, 
   3.6168360870896883`*^9, {3.617006899771715*^9, 3.6170069028096733`*^9}}],

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
   3.522652436413753*^9, 3.522652471782576*^9}, {3.6168357349844847`*^9, 
   3.616835774493723*^9}, {3.616835816848216*^9, 3.616835873241888*^9}},
 FontSize->18],

Cell[CellGroupData[{

Cell["Introduction", "Subsection",
 CellChangeTimes->{{3.521269916364412*^9, 3.521269927472148*^9}, {
   3.617006869721982*^9, 3.617006871883049*^9}, {3.6170070318699417`*^9, 
   3.61700703850106*^9}, 3.61700884959569*^9}],

Cell[TextData[{
 "Consider  the following sequences of positive integer numbers:\n",
 StyleBox["3 1 4 1 5 9 2 6 5 3 5 8 9 7 9 3 2 3 8 4 6 2 6 4 3 3 8 3 2 7...",
  FontWeight->"Bold"],
 "\nand \n",
 StyleBox["1 0 1 0 1 2 3 4 5 6 5 6 7 8 7 6 5 6 7 6 5 6 5 4 3 4 5 4 5 6...",
  FontWeight->"Bold"],
 "\nAlthough they might superficially look analogous to each other, they are \
actually very different sequences. The first is (obviously) a list of the \
first 30 digits of \[Pi]. Being \[Pi] an irrational number the succession of \
its digits does not follow any rule, as a consequence the knowledge of all \
the numbers before and after the ",
 StyleBox["i",
  FontSlant->"Italic"],
 "th will give you no clue whatsoever about what the ",
 StyleBox["i",
  FontSlant->"Italic"],
 "th number in the series is. On the contrary in the second sequence the \
difference between two successive entries is always either 1 or -1. Therefore \
knowing the value of one number gives you a good idea of the possible values \
of its neighbours, and also gives a strict bound of the possible range of \
values that a number ",
 StyleBox["h",
  FontSlant->"Italic"],
 " steps away can take.\nIn the first case the sequence is completely \
uncorrelated, while in the second case it is obviously correlated.\nWe can \
say that two event A and B are uncorrelated if P(A|B)=P(A), and correlated \
otherwise, but this is a very general definition of correlation. In order to \
quantify and compare different kind of correlations to each other in a \
meaningful way, we have to restrict ourselves to a specific context. In the \
following we will consider the, somehow abstract, case of a sequence of real \
numbers ",
 StyleBox["s",
  FontSlant->"Italic"],
 " with a finite mean\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"<", "s", ">"}], " ", "=", " ", 
    RowBox[{
     UnderscriptBox["lim", 
      RowBox[{"N", "\[Rule]", "\[Infinity]"}]], 
     FractionBox[
      RowBox[{
       UnderoverscriptBox["\[Sum]", 
        RowBox[{"i", "=", "1"}], "N"], 
       SubscriptBox["s", "i"]}], "N"]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ".\nIn statistics, econometrics and control theory such objects are commonly \
known as ",
 StyleBox["discrete",
  FontSlant->"Italic"],
 " ",
 StyleBox["time series",
  FontSlant->"Italic"],
 " [1].\nA way to estimate how correlated a series is, is to compare the \
element ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", "i"], TraditionalForm]]],
 " with ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", 
    RowBox[{"i", "+", "h"}]], TraditionalForm]]],
 " for every ",
 StyleBox["i",
  FontSlant->"Italic"],
 " and every ",
 StyleBox["h",
  FontSlant->"Italic"],
 ". In particular we can define an autocorrelation function as\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"C", "(", "h", ")"}], "=", " ", 
    RowBox[{
     RowBox[{
      SubscriptBox["lim", 
       RowBox[{"N", "\[Rule]", "\[Infinity]"}]], 
      FractionBox[
       RowBox[{
        UnderoverscriptBox["\[Sum]", 
         RowBox[{"i", "=", "1"}], "N"], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["s", "i"], "-"}], "<", "s", ">"}], ")"}], 
         "\[CenterDot]", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["s", 
             RowBox[{"i", "+", "h"}]], "-"}], "<", "s", ">"}], ")"}]}]}], 
       RowBox[{
        UnderoverscriptBox["\[Sum]", 
         RowBox[{"i", "=", "1"}], "N"], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["s", "i"], "-"}], "<", "s", ">"}], ")"}], "2"]}]]}], 
     "=", 
     RowBox[{
      SubscriptBox["lim", 
       RowBox[{"N", "\[Rule]", "\[Infinity]"}]], 
      FractionBox[
       RowBox[{
        UnderoverscriptBox["\[Sum]", 
         RowBox[{"i", "=", "1"}], "N"], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["s", "i"], "-"}], "<", "s", ">"}], ")"}], 
         "\[CenterDot]", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{
            SubscriptBox["s", 
             RowBox[{"i", "+", "h"}]], "-"}], "<", "s", ">"}], ")"}]}]}], 
       RowBox[{"<", 
        SuperscriptBox["s", "2"], ">"}]]}]}]}], TraditionalForm]]],
 "\nwhere ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    SuperscriptBox["s", "2"], ">"}], TraditionalForm]]],
 " is the (centered) sequence variance.\n",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " tells us how \"correlated\" an element of the sequence s and an element ",
 StyleBox["h",
  FontSlant->"Italic"],
 " step removed are. Notice that ",
 StyleBox["C(0)",
  FontSlant->"Italic"],
 " is always equal to 1 because (obviously)  anumber is always extremely \
correlated with itself. In some particular case ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " will be independent from ",
 StyleBox["h",
  FontSlant->"Italic"],
 ", but usually elements close to each other will be more correlated than \
elements further away (just like in the second example sequence above)."
}], "Text",
 CellChangeTimes->{{3.521267972503865*^9, 3.521268033155434*^9}, {
   3.521268065651704*^9, 3.521268068491489*^9}, {3.521268259207407*^9, 
   3.521268456091832*^9}, {3.521268514539907*^9, 3.521268595630082*^9}, {
   3.521268628355641*^9, 3.521268663659601*^9}, {3.521268698243854*^9, 
   3.521268822051696*^9}, {3.521268852756221*^9, 3.521268880651625*^9}, {
   3.521268911220005*^9, 3.521268914161389*^9}, 3.521458483915456*^9, {
   3.522046574902216*^9, 3.522046577004954*^9}, {3.522046738205145*^9, 
   3.522046738893021*^9}, {3.6168364950271177`*^9, 3.616836503513235*^9}, {
   3.617006875560254*^9, 3.6170068767199163`*^9}, {3.617007067639243*^9, 
   3.6170071215752563`*^9}, {3.617007155646908*^9, 3.6170072338936577`*^9}, {
   3.617007265447831*^9, 3.617007325660939*^9}, {3.6170074048112288`*^9, 
   3.617007419619399*^9}, {3.617007456340433*^9, 3.6170075099419317`*^9}, {
   3.617008684949214*^9, 3.6170088059373493`*^9}, {3.617008837356533*^9, 
   3.61700890267575*^9}, {3.617009376118259*^9, 3.617009504054701*^9}, {
   3.617009897245924*^9, 3.617009946189724*^9}, 3.617011169106938*^9, {
   3.617011453970851*^9, 3.617011487412663*^9}, {3.617011561727392*^9, 
   3.617011640702794*^9}, {3.6170116871444397`*^9, 3.6170117011784*^9}, {
   3.6170122360612097`*^9, 3.6170122373160067`*^9}, {3.617012275669551*^9, 
   3.617012345342725*^9}, {3.6170124402877207`*^9, 3.617012459690544*^9}, {
   3.617012547915205*^9, 3.617012560599234*^9}, {3.6170128461665077`*^9, 
   3.617012891663488*^9}, {3.617012933986372*^9, 3.617013064296157*^9}, {
   3.617013096927395*^9, 3.617013113549436*^9}, 3.617013151670896*^9, {
   3.6170806585588493`*^9, 3.617080748395567*^9}, {3.617080907534238*^9, 
   3.617081139793541*^9}, {3.617081181814643*^9, 3.617081185931031*^9}, {
   3.617081247650024*^9, 3.617081306895838*^9}, {3.617081361201317*^9, 
   3.617081539561577*^9}, {3.6170816045658216`*^9, 3.617081618549676*^9}, {
   3.617081725997628*^9, 3.617081805962697*^9}, {3.6170818413379173`*^9, 
   3.617082154769333*^9}, {3.617082187369969*^9, 3.617082221451127*^9}, {
   3.6170822828474197`*^9, 3.6170824400442*^9}, {3.617082475235537*^9, 
   3.6170825289680243`*^9}, {3.617082632044033*^9, 3.6170826650397243`*^9}, {
   3.617082699966177*^9, 3.617082744101564*^9}, {3.617083760537114*^9, 
   3.61708379798386*^9}, {3.617083861804633*^9, 3.617083887541464*^9}, {
   3.617083974748679*^9, 3.6170840467333527`*^9}, {3.617084201545981*^9, 
   3.6170842499887857`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Uncorrelated sequences", "Subsection",
 CellChangeTimes->{{3.617010054048912*^9, 3.617010070224678*^9}, {
  3.617084054179968*^9, 3.617084061842009*^9}}],

Cell[TextData[{
 "If a sequence is composed by random numbers that are chosen independently \
from each other it is said to be uncorrelated and we will have ",
 StyleBox["C(h)=0",
  FontSlant->"Italic"],
 " for and ",
 StyleBox["h\[NotEqual]0",
  FontSlant->"Italic"],
 "."
}], "Text",
 CellChangeTimes->{{3.6170100776408157`*^9, 3.617010082934455*^9}, {
  3.6170101264590282`*^9, 3.617010160988199*^9}, {3.617084100433312*^9, 
  3.6170841085370398`*^9}, {3.617084140418399*^9, 3.617084186987813*^9}, {
  3.617084264542418*^9, 3.617084295300846*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "7"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"RandomReal", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"-", "1"}], ",", "1"}], "}"}], ",", "dim"}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ms", "=", 
   RowBox[{"s", "-", 
    RowBox[{"Mean", "[", "s", "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   FractionBox[
    RowBox[{"ListCorrelate", "[", 
     RowBox[{"ms", ",", "ms", ",", "1"}], "]"}], 
    RowBox[{
     RowBox[{"Variance", "[", "ms", "]"}], "*", "dim"}]]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", "Blue", "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "]"}], 
    "\[IndentingNewLine]", ",", "\[IndentingNewLine]", 
    RowBox[{"ListPlot", "[", 
     RowBox[{
      RowBox[{"c", "[", 
       RowBox[{"[", 
        RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
      RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
      RowBox[{"PlotStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Blue", ",", 
         RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
      RowBox[{"Frame", "\[Rule]", "True"}], ",", 
      RowBox[{"FrameLabel", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
      RowBox[{"LabelStyle", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}]}], 
   "\[IndentingNewLine]", "}"}], "]"}]}], "Input",
 CellChangeTimes->{{3.6170850049412117`*^9, 3.617085010807859*^9}, {
  3.61708504766188*^9, 3.617085047929038*^9}, {3.617085161282505*^9, 
  3.617085182452942*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lHtQVGUYxjdThhACkZmyQQZSkESIRbItwH2QFVZu7i73lLiGi0NcTIyb
epYchVECWYH+2KFVVAgliEGiaY2NuCiQkNxxcpc7CMGWiIyCRcN7zszOmd8+
7/O9z/fN+x2r6CTJZxs4HE7s2u//9/qj4+usTO0en+5qpD+QHG0hK818SKwP
3R1FS/63LcQmUJ2Sv6VqXeCvsxkagsYHzuaOEL8NZdLikYjIGao3h+hF34zo
TTXpluA1XZmsbhslfhdafnxB2z8LVL8TaL7xvv/pKmIb1A21X9OIxohtMd17
ccju5STxbpxTKY5tLhsl3gOdjzZz/9NOYgdYJuf93l0zTP0cUfDJyx1xle2k
c6Ew3cJ/PjRF7ASRcX1q4JlHxHuh5GWv5PJriZ0RGiXvMM56TPwBYnNuppcN
sHn2wSR4Kib9uxbq9yES+oWOGZxJYh42lvBKgo0mqP4jJFcY3Y6Mnyb+GKFX
Lqat2I9RvQuEny4eu3CDzeMK130uRf+eZfO6YdyNU1Et0lL9fqR5WEekGPxB
zIdqbMzh9aUnVA8sO3cVrj6ZXdcZIGfex16h6iPdHYz+GYGZtG2dGXc06wqb
3FPZPAegtQryuP/rA9IPgPGwyhrNqCe/B5AhmNJjrpLuAd3w3xv0TGZJF2Au
+5SDp5jmhxGACdOEKL5SkH4QJsuCvm4rysschFAyks5UTFF/T/B2WQ9H76Y8
jCeuH35REvYnO29eUGtyty9ZdJLuBWXCoGhrWSvpQqiXVUmSC3WkC8HhWvRI
t+TR+ofA7M1SyKbuk34InJ/yb6dGsvPqjchwN3/rajafN+75/vhebyLb3wcF
neYOMyO95PfBJX6X8ba7rN8Xyj2zo6nnu0j3xTfhC4/sRzWk+0F/hIvETTRP
jB8GUyobZ/TmaH1/THc6mJZsHCe/P3hwrirqnyP/YaBN6KWqoX7MGket5j+X
/0W6CJzY0hSbHb3r62GNU3vq+2po/4wI6sqtCRIunY9ahIYvEguqEyfIL4bS
wL+/sZD6QQzX6wZShxiaZ0YMXal++fEf7pFfDCavULOAYsovgb57TOK2TDov
SLDifHnxa18t+SWAt0v59kran1oCoUnureoE9v4EoEHKmL/TriF/AAQypd+r
hnnyB6BZLu14sJnmTR0AYW3Wrvi77P0IhHqp81lm2FXKHwhLfyfDokz6vjCB
sBV0y1bf6CF/IByLuUbGAx2UPwjKL3OcYmX0PUQQmMYThrVOdD5MECIN0wqq
44YofxAaXtvUahdB++EEw/foQJlYTIxg2HLqa55VzZM/GI7ln3dLl3rIH4wa
/vkT8jF2fkNQVzbhctSG9oMQXCrJtj/yiu0fApOojK7Ld2i+1CE4ya17eO0k
O3+hUIw0xd3Mp/uHUJwr/sWs6hw7T6GoafnZPfzWOO0/FJzj2qeyGFqPEwbp
b9/LNYPz/P8AXNL90w==
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], LineBox[CompressedData["
1:eJw1lHtQVGUYxjdThhACkZmyQQZSkESIRbItwH2QFVZu7i73lLiGi0NcTIyb
epYchVECWYH+2KFVVAgliEGiaY2NuCiQkNxxcpc7CMGWiIyCRcN7zszOmd8+
7/O9z/fN+x2r6CTJZxs4HE7s2u//9/qj4+usTO0en+5qpD+QHG0hK818SKwP
3R1FS/63LcQmUJ2Sv6VqXeCvsxkagsYHzuaOEL8NZdLikYjIGao3h+hF34zo
TTXpluA1XZmsbhslfhdafnxB2z8LVL8TaL7xvv/pKmIb1A21X9OIxohtMd17
ccju5STxbpxTKY5tLhsl3gOdjzZz/9NOYgdYJuf93l0zTP0cUfDJyx1xle2k
c6Ew3cJ/PjRF7ASRcX1q4JlHxHuh5GWv5PJriZ0RGiXvMM56TPwBYnNuppcN
sHn2wSR4Kib9uxbq9yES+oWOGZxJYh42lvBKgo0mqP4jJFcY3Y6Mnyb+GKFX
Lqat2I9RvQuEny4eu3CDzeMK130uRf+eZfO6YdyNU1Et0lL9fqR5WEekGPxB
zIdqbMzh9aUnVA8sO3cVrj6ZXdcZIGfex16h6iPdHYz+GYGZtG2dGXc06wqb
3FPZPAegtQryuP/rA9IPgPGwyhrNqCe/B5AhmNJjrpLuAd3w3xv0TGZJF2Au
+5SDp5jmhxGACdOEKL5SkH4QJsuCvm4rysschFAyks5UTFF/T/B2WQ9H76Y8
jCeuH35REvYnO29eUGtyty9ZdJLuBWXCoGhrWSvpQqiXVUmSC3WkC8HhWvRI
t+TR+ofA7M1SyKbuk34InJ/yb6dGsvPqjchwN3/rajafN+75/vhebyLb3wcF
neYOMyO95PfBJX6X8ba7rN8Xyj2zo6nnu0j3xTfhC4/sRzWk+0F/hIvETTRP
jB8GUyobZ/TmaH1/THc6mJZsHCe/P3hwrirqnyP/YaBN6KWqoX7MGket5j+X
/0W6CJzY0hSbHb3r62GNU3vq+2po/4wI6sqtCRIunY9ahIYvEguqEyfIL4bS
wL+/sZD6QQzX6wZShxiaZ0YMXal++fEf7pFfDCavULOAYsovgb57TOK2TDov
SLDifHnxa18t+SWAt0v59kran1oCoUnureoE9v4EoEHKmL/TriF/AAQypd+r
hnnyB6BZLu14sJnmTR0AYW3Wrvi77P0IhHqp81lm2FXKHwhLfyfDokz6vjCB
sBV0y1bf6CF/IByLuUbGAx2UPwjKL3OcYmX0PUQQmMYThrVOdD5MECIN0wqq
44YofxAaXtvUahdB++EEw/foQJlYTIxg2HLqa55VzZM/GI7ln3dLl3rIH4wa
/vkT8jF2fkNQVzbhctSG9oMQXCrJtj/yiu0fApOojK7Ld2i+1CE4ya17eO0k
O3+hUIw0xd3Mp/uHUJwr/sWs6hw7T6GoafnZPfzWOO0/FJzj2qeyGFqPEwbp
b9/LNYPz/P8AXNL90w==
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{}, 
       {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lA1Q03UYx3d0CV2iXEAI41UYjPESMN7f9gXG64CNvYEFmLCkHVBKF6hI
/jPoPKgMUAknXGEQo1aKhaapu0MSITrBlyATSonhabBAjasDq9vz391u993n
/32+z+/3e35/r5LX5a9YcTgczX/f/38tH7Oo30U28uTJooj+gE9R5cPwIu+L
FmmDZa+Sl96oDSVtB8dtq0MtmVH0vAP+3HXXofETT+KbkNLUZLrfHULcFR/x
H82v73Uj7YmFzSX6R1eT6PnNKLwyoRwwJBL3wbnHt9ovlrH1fPHL0nx2/KAV
cT58Vvu7umsSiAvgrmnt8jzB1gvEbtOZg8a5DfR8MPSymmcdv3MgHYLjo/tP
zbZ5kQ5Fo1KUnzLhSDoM58Otmbpcth8hyl4rvBvVE0X1w/Gb06CBGWB5BN40
2CYY3HyIR2Lpcfz4TwI/4lG406vtiHGJJh2N6ds+LSpfJ9IxOPvh3NuGrHjS
sbjnaLAJuBBD9eJQXmFs21YL0vGoE7yqgD+7ngTYqIP7B83hxBMx6vncJSHX
l7gIbnWCcZsNQtLA8T4tf2B7kEUzQOfBCuG3LsnEk9Adxhkpz6L1MUmo/72I
p/azI54M1TrN+uJ/Aix5TDIMD+QzB5pFlJ8Cg/mL0r0SHvlTkH4jSOKvdSG/
GEXaUL2fOJP8YgwJ5qW1RfbkT0XXzTEPuS3tB5MKyUptw+4dQcTToOt4Zwpn
6byZNLQ52+6q4sdR/XSMb7159ePWNOLpeGFfZ8bhBjHxDHzdNKyw+zyEeAZG
X6w3JPex+5cJ6fUdpthZEeVnwnmu+KsVOzY/C7MHYmZrBmj+mCy4tls3dHuz
+RLUn9rTVqmi+WUksB+T6M3t7PlmI8AqV7P176FEC8/GgttqWeQKO785ENcv
pvpwwyg/Bx80mrS6B+7EczGwrGwWPJNI9XMhCtU/LTjKzp8UG/9y4kkrrMkv
xZSqKkcXxc6TDP7VFbM6IdWHDCfjr7XcGBdSPRm+n99Xo1lna9FGGSq49fYe
897Ufx7KJ45Zx0Bs4cjDQk+EruwzP/LnQdJ7eu1l60jy58F2WbpSKbSjfDnU
zd7VM79euWDxyyHK7psK3OJM/coxxanViJdovoxy2BWaJs26p8ivQJImelG6
IKB8Bb6RbDq2Fk7vI0aBy6nWPD030KKNCoxPFq51LLLvAyUar3OHw0pDaf1K
7Pc1NffVB1P/Sjz//k7e3iou+ZVw79l+tCCOS/kqnBs5nCTk032ECkvF011D
lZTHqDDjN4TYO3TfjCowP/bWaacjKV+Ne2MLkpPv8smvxmxhZ0hPHN1XRo3s
0tPDHjtpHo1qnMj1nVyopnnl5OPWH+/9vHqJzgv5OISaqgR9HPWfj8Rr539w
MGVSfj5UXlZvRUxetuw3pwDm+62uqWs0LyiA9+3VI6EV7H0owJmNaby+L+m8
jQVQFGkWD33qSv1vwZ66h71HRBGifwEOOMDw
         "]]}, {}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{519.3333333333328, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.617084976041315*^9, 3.6170850116345387`*^9, {3.6170850445043993`*^9, 
   3.6170850503848133`*^9}, 3.6170851857767067`*^9}]
}, {2}]],

Cell["\<\
This is effectively white noise, the archeotypical example of \"randomness\". \
In most cases if someone talks about something as \"random\" it is implicitly \
assumed that he/she means \"random and uncorrelated\". Notice that the fact \
that the fact that the sequence of number is uncorrelated tells you \
absolutely nothing about how those numbers are distributed.\
\>", "Text",
 CellChangeTimes->{{3.6170850623886337`*^9, 3.6170850940784483`*^9}, {
  3.617087220609212*^9, 3.6170872233031263`*^9}, {3.6170872579831753`*^9, 
  3.617087489471384*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Periodic sequence", "Subsection",
 CellChangeTimes->{{3.6170953320157433`*^9, 3.617095350240122*^9}}],

Cell[TextData[{
 "Periodic structures are the epitetome of what we usually mean by perfectly \
correlated systems. One might think that something that is perfectly \
correlated should have ",
 StyleBox["C(h)=1",
  FontSlant->"Italic"],
 " for all values of ",
 StyleBox["h",
  FontSlant->"Italic"],
 ", but it is easy to see that this can not be the case. What actually \
happens is that, for a periodic sequence, ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " is also periodic, and does not tend to zero when ",
 StyleBox["h",
  FontSlant->"Italic"],
 " becomes large."
}], "Text",
 CellChangeTimes->{{3.617095523018745*^9, 3.6170955741911783`*^9}, {
  3.6170960629109287`*^9, 3.6170961728365393`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"Flatten", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "1", ",", "1", ",", "1", ",", "1", ",", "1", ",", "0", ",", "0", ",", 
        "0", ",", "0", ",", "0"}], "}"}], ",", 
      RowBox[{"{", "dim", "}"}]}], "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dim", "=", 
   RowBox[{
    RowBox[{"Dimensions", "[", "s", "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ms", "=", 
   RowBox[{"s", "-", 
    RowBox[{"Mean", "[", "s", "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   FractionBox[
    RowBox[{"ListCorrelate", "[", 
     RowBox[{"ms", ",", "ms", ",", "1"}], "]"}], 
    RowBox[{
     RowBox[{"Variance", "[", "ms", "]"}], "*", "dim"}]]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.617095508095345*^9, 3.617095513943215*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxdzjdKRkEUBeCLlaWFhYWFioiIiDmHZ87pN7eitVuYpc2SXIKKXmG+gcfw
cXjnzOjrR++9LyLevr+f+/d87rR3dK378QAexENdNGcYj+AxPI4n6J/EU3ga
z+BZ+ufwPF7Ai3iJ/mW8glfxGl6nfwNv4i28jXfo71oXHLvkOPba/oJjnxzH
AXk6+w/Zx3FEjuOYfhwn5DhOydPZf8Y+jnNyHBf047gkx3FFns7+a/Zx3LTu
cEn/nYrjtnWHC67p3O+xjwuuOO7YxwVXHPf8n859XHE88H5c0rmP45F9XHBN
5/4T+7jgiuOZfVxwxfHy7y+hf4bY
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJxdzjdKRkEUBeCLlaWFhYWFioiIiDmHZ87pN7eitVuYpc2SXIKKXmG+gcfw
cXjnzOjrR++9LyLevr+f+/d87rR3dK378QAexENdNGcYj+AxPI4n6J/EU3ga
z+BZ+ufwPF7Ai3iJ/mW8glfxGl6nfwNv4i28jXfo71oXHLvkOPba/oJjnxzH
AXk6+w/Zx3FEjuOYfhwn5DhOydPZf8Y+jnNyHBf047gkx3FFns7+a/Zx3LTu
cEn/nYrjtnWHC67p3O+xjwuuOO7YxwVXHPf8n859XHE88H5c0rmP45F9XHBN
5/4T+7jgiuOZfVxwxfHy7y+hf4bY
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJxdkLlKBEEURQsjwcRAxEBBRWRQGdx37Zq9Z++921TG2F+obDD2I/wMOzUx
MDMRwUAzzUxVpkZ4p6FpXt0+995XS5fXwdWEUmrw+/59R8+Xsz6cfX78/nTs
gX5fuPtwi292ntQ3Ty+vU7cPdp4ez/ejeWb8v53ntPWz8zz0RfDL8F9B/qqW
/QrQ18BvwL+I/E3024K+DX4H/rvI30O/fegH4A/hf4T8Y/Q7gX4K/gz+58h3
0E9L3WjwJelvSsgvy36mDL0CvgL/KvKr6FeDXgNfh38d+Q30a0B3wbvwbyK/
iX4t6C3wbfi3kd9Bvw70Lvgu/HvI76FfH3ofvCf9tSfzjSf75dCVD96X/saX
+bmPfoHUdQA+kP55gPxQ9tMh+ofgQ+wfIT+S/Qz0PAIfY/8Y+THuD7pKwCfY
P0F+gvtL0T8Fn2L/FPkZ7i9D/wx8hv0v/vN/ALjSJOg=
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxdkLlKBEEURQsjwcRAxEBBRWRQGdx37Zq9Z++921TG2F+obDD2I/wMOzUx
MDMRwUAzzUxVpkZ4p6FpXt0+995XS5fXwdWEUmrw+/59R8+Xsz6cfX78/nTs
gX5fuPtwi292ntQ3Ty+vU7cPdp4ez/ejeWb8v53ntPWz8zz0RfDL8F9B/qqW
/QrQ18BvwL+I/E3024K+DX4H/rvI30O/fegH4A/hf4T8Y/Q7gX4K/gz+58h3
0E9L3WjwJelvSsgvy36mDL0CvgL/KvKr6FeDXgNfh38d+Q30a0B3wbvwbyK/
iX4t6C3wbfi3kd9Bvw70Lvgu/HvI76FfH3ofvCf9tSfzjSf75dCVD96X/saX
+bmPfoHUdQA+kP55gPxQ9tMh+ofgQ+wfIT+S/Qz0PAIfY/8Y+THuD7pKwCfY
P0F+gvtL0T8Fn2L/FPkZ7i9D/wx8hv0v/vN/ALjSJOg=
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{518.666666666667, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.6170954442904673`*^9, 3.617095514893559*^9}]
}, {2}]],

Cell[TextData[{
 "In the example above we can see that not only ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " is not constantly 1, but it oscillates between 1 (perfect correlation) and \
-1 (perfect anticorrelation). This is a consequence of the fact that, in a \
periodic structure, you not only know where all the \"1\" values are, but \
also that, if you have a 1, a given number of steps later (5 in this \
particular example), you are sure to get a 0. Hence the anticorrelation."
}], "Text",
 CellChangeTimes->{{3.6170962010747538`*^9, 3.617096264459812*^9}, {
  3.6170963165244102`*^9, 3.617096411690607*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Quasi-periodic sequence", "Subsection",
 CellChangeTimes->{{3.6170978419279346`*^9, 3.617097875375925*^9}}],

Cell[TextData[{
 "An interesting, but difficult, case is the quasi-periodic one. Consider the \
sequence\n",
 StyleBox["1 0 1 0 0 1 0 0 0 1 0 0 0 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1 0 0 0 0 0 \
0 0 1...",
  FontWeight->"Bold"],
 "\nwhere at each step the number of zeros between the ones increases by 1. \
This is obviously not a periodic sequence, but it is also definitively not \
what we have in mind as \"random\". As a matter of fact this sequence is \
completely deterministic and also aperiodic, positioning it somewhere in \
between order and disorder. Such sequences are commonly described as \
quasi-periodic. A bit of a misnomer if you consider that they are not close \
at all to being periodic.\nWe do not expect such a sequence to have a \
periodic correlation function, but we also do not expect it to be totally \
uncorrelated, but it is not immediately obvious what we expect ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " to look like."
}], "Text",
 CellChangeTimes->{{3.6170978910073*^9, 3.617098259561866*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", "100"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"Flatten", "@", 
    RowBox[{"Table", "[", 
     RowBox[{
      RowBox[{"PadRight", "[", 
       RowBox[{
        RowBox[{"{", "1", "}"}], ",", "i"}], "]"}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "2", ",", "dim"}], "}"}]}], "]"}]}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dim", "=", 
   RowBox[{
    RowBox[{"Dimensions", "[", "s", "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ms", "=", 
   RowBox[{"s", "-", 
    RowBox[{"Mean", "[", "s", "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   FractionBox[
    RowBox[{"ListCorrelate", "[", 
     RowBox[{"ms", ",", "ms", ",", "1"}], "]"}], 
    RowBox[{
     RowBox[{"Variance", "[", "ms", "]"}], "*", "dim"}]]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}], 
  "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxd0rlKA1EAheGDlaWFhYWFioiIiPuuiXHfNe6taO0r3EebR/IRVPQK8w2E
4ePPmbmEjL9+9N8Hkrx9f37uv9dnp31PN61rsNvuQ/RhPML3R+ljeAJPsp+i
T+MZPIvneN48fQEv4iW8jFd4/ip9Da/jDbyJt/A279uh7+IO7rZdcPboOL32
+0uPvs8e54COc0jHOaJX19/jmI5zQsc5peOc0XHO6dX1fBd0nEs6zhUd55qO
c9N2F5fqv/M29NyyxwU3OH32uOAG5449LtX1/PTcs8cFNzgP7HHBDc4je1xw
U13/P0/sccENzjN7XHCD8/LvL3gWWw0=
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJxd0rlKA1EAheGDlaWFhYWFioiIiPuuiXHfNe6taO0r3EebR/IRVPQK8w2E
4ePPmbmEjL9+9N8Hkrx9f37uv9dnp31PN61rsNvuQ/RhPML3R+ljeAJPsp+i
T+MZPIvneN48fQEv4iW8jFd4/ip9Da/jDbyJt/A279uh7+IO7rZdcPboOL32
+0uPvs8e54COc0jHOaJX19/jmI5zQsc5peOc0XHO6dX1fBd0nEs6zhUd55qO
c9N2F5fqv/M29NyyxwU3OH32uOAG5449LtX1/PTcs8cFNzgP7HHBDc4je1xw
U13/P0/sccENzjN7XHCD8/LvL3gWWw0=
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJxdkrtKA0EUhg9WFhYWFoIiRkRERNSo8Z7JzWium2zcrIUo3hARLCzEbkDQ
WoiFqQTxFbTM1r6AYCP4AhHsvZFBmC8Qwrff+c85M5vQzkl5v01E9n6/f7+t
z0f03X+73/5qRs0DtZnvO305rzVa2K4a4d2z79cLw53gLnC34YTp1wvfDz8A
P6gi9eLBlndp/BD8MPIj4FHwGHgc/SfQfxL1YdRPwU+DZ1AfgZ8Fz4HnkV+A
X1S3unZ09XRjeAn7L6M+inple62Qj9n1OoZ+cfg4fAL9wZJEPgmfQj6F/Vfg
wZJWHXW5bobujE/DryIPljX7/jVYMtg/g3wW/bPYP4f+OeTz6J+HL6B/Af2L
8GBx1PPn43HP4UOLlWO/f+3Y/QIH5y/Z/RRYl5AHSxn5Mu4DPgCLi/1dzHcx
38X+FcwH64r9/wngZR35dbwvcIB68WyvPMwHB559Xqna51FV5KuYDy8+5vvI
gwMf97fxv88P34Xi8g==
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxdkrtKA0EUhg9WFhYWFoIiRkRERNSo8Z7JzWium2zcrIUo3hARLCzEbkDQ
WoiFqQTxFbTM1r6AYCP4AhHsvZFBmC8Qwrff+c85M5vQzkl5v01E9n6/f7+t
z0f03X+73/5qRs0DtZnvO305rzVa2K4a4d2z79cLw53gLnC34YTp1wvfDz8A
P6gi9eLBlndp/BD8MPIj4FHwGHgc/SfQfxL1YdRPwU+DZ1AfgZ8Fz4HnkV+A
X1S3unZ09XRjeAn7L6M+inple62Qj9n1OoZ+cfg4fAL9wZJEPgmfQj6F/Vfg
wZJWHXW5bobujE/DryIPljX7/jVYMtg/g3wW/bPYP4f+OeTz6J+HL6B/Af2L
8GBx1PPn43HP4UOLlWO/f+3Y/QIH5y/Z/RRYl5AHSxn5Mu4DPgCLi/1dzHcx
38X+FcwH64r9/wngZR35dbwvcIB68WyvPMwHB559Xqna51FV5KuYDy8+5vvI
gwMf97fxv88P34Xi8g==
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{518.6666666666658, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.617098298753441*^9}]
}, {2}]],

Cell[TextData[{
 "Looking at the plot we see, for ",
 StyleBox["h\[NotEqual]0",
  FontSlant->"Italic"],
 ", ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 " is quite small, but definitively not zero. In order to see better what it \
is going on, we better re-plot it excluding the first point and going further \
with ",
 StyleBox["h",
  FontSlant->"Italic"],
 "."
}], "Text",
 CellChangeTimes->{{3.617098316942112*^9, 3.61709842308447*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ListPlot", "[", 
    RowBox[{
     RowBox[{"c", "[", 
      RowBox[{"[", 
       RowBox[{"2", ";;", 
        RowBox[{"Round", "[", 
         RowBox[{"dim", "/", "2"}], "]"}]}], " ", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"Joined", "\[Rule]", "True"}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
     RowBox[{"LabelStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ListPlot", "[", 
    RowBox[{
     RowBox[{"c", "[", 
      RowBox[{"[", 
       RowBox[{"2", ";;", 
        RowBox[{"Round", "[", 
         RowBox[{"dim", "/", "2"}], "]"}]}], " ", "]"}], "]"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Cyan", ",", 
        RowBox[{"PointSize", "[", "0.01", "]"}]}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"Joined", "\[Rule]", "False"}]}], "]"}]}], "\[IndentingNewLine]",
   "]"}]], "Input"],

Cell[BoxData[
 GraphicsBox[{{{}, 
    {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxd3H9o3OedJ/AvxRRfEUUUUURXhNmcCCKIMJfVZXU5XTqbarOzWTWdTbVZ
NVWTaaq4E0dxJo7iTBzF+caW7bGjOGNHtieObI9tXW8IIjcEkRVFdIciiiii
DEX0RE+UoSeKKLre0BNlKKJ3HDUcz2v/Wd59//i8n+f5/hiNFP/lcy8/+fzn
oij67/8miv7f///z/7W++p2v3/Pqf3tj7l/v/g+pf/2r773+f3556i4+CO4E
d93FX/vqn3E3fA98Av7e1F9f+8ahZ586c5fvhb8Pfx/4fnA/+AHyk+T/O/QP
ov8r+AHwv0f/EPxfgwfB/wH/w/D/MfVhPHf47L9cvouH6P+f0D+C/qvwqdAf
p9D/TaiP/wb+UXhw9DX4r+EfhgdHfxvq47+Ffwz/Y6mOa9HF//WXlbv838GD
ozR8mv3/+xDHf0//x/GDo3+g/z+QP4J/hPyvw4OjJ8h/Av4b+L+R+un//mzy
L3L/+S6fCc8/lSEvE/atZ8j/xxCn/hE/uI4+ejLMTz1JX3D9Sfp/k/nfZP43
6Y8+GsU/Gl4/MXwdHP1TOC8Fjv8JP3z0FPPB8VPheutPcf38M/5/Zj58HT4a
ww+Ox9i/Mfb/W5zft3iefIvzh4+e5vp7OnXu6y+l/+6Tj+/Oh6+Do28z/9v0
h6+Do3Hmg+Nx+o/j/w7+73D9wNe/g/8Z+j9D/2fwo4+eZf6zPK+eDfvUn+X6
zaaC930iSx9wNsv+wFfAdfTNbCr9X/5t76t7//Xu/O8y/7us57vMh4/hK+A6
+iZ89FyIE+DUc6E/+xznC18B19E34aPvhTjxPZ4n4Oz3OF9whbw6uIk+mmD+
BOufYD76GFyZCM+3Dt8ER8+z/8/zPILPPs/z7Xnmg+v4m8/z+eAQ6z/E/sNn
wfGhMK8CXz/EfHD0feZ/n/0HZ8Ex/sr3w+dnHX0TfZRjPjgFzuZ4PufC86qg
r+e4/uGjF0J/4gXW/wLz0ccvsP/wdfzNF3j/HWY+OHU4fN9lD4fPq/gw+3+Y
5w98k/zoRa7/F5n/Iut/kesffwV/Hb75Ytg/muT8J8PzTU2GedlJ1j/JfPg6
fHOS++8l5r8U+lMvsf8vcf3jr7zE+tE3yY+OsP9HmH+E9R/h+X+E+Uf4vEB+
k7zoZdb/Muf/Mvf/y+z/y+H+VPDXyW+ij/JhXic4kQ/nJ/P0g8/keV/kw/l5
8mP0JfIr5Nfg6+Q3yG/mw/dRCz56JfR3vhLuTwI++Qrvh1dY/ythfhZ/Hn+M
v4S/Al+Dr5PfoH8Tf+sVrr+jIe48yv0ATqJPHQ3nZ46y/qPh/ZLHH+MvHeV6
hq/Rpw5ukN8Et8DRq5z/qyGfeDXsn3yV58OrnD/+LHyeeTH6EvkV9LVXU6ei
//n2N65/enf98A1wk/kt5kVTrB+cmOL8pzj/qfB6zqDPkpcHx+AS+ZWp8H1U
m+L6R99gfhO+BY5e4/p/jecffPK1sG/qNc4fnH0t3J88eTF5pdf4PANfo1+d
vAZ8k7zWazz/j7H+Y6wfPglOHQv7ZY6F87LwefLjYzz/0VeYVzvG/Q9uoG+C
W8yPXuf6fz3sk3id6/911g/OvM7zj7z86+H+x8wvkVd5PdzPGvl1+jXIa4Jb
+KMC7/8C778C778C778C6ycvS14efQwuMa8CrqGvF8L9aTC/CW4VwudJ9AbX
/xvhvAQ4+QY/n8Bn3gjzs/B55sVvcP2/wfMffY28OriBvkl+Cz46zvqPs374
5HHef8fD883gz6LPH+fzO/ml42HfCnk19HX4xvFw/5voW/SJ3gz7dL7J8+9N
1v8m1/+bnD/6LDhPfsz80pt8/sFfw1+Hb4Cb6Fv0jaY5/2nOfzrcz+Q01z/6
DDg7zflP8/xjfgl9BVzDX6dPA31zmvcffPQWz/+3eP6/FeqT6FPoM29x/uA8
OCavBF8B15hXf4v1wzfp3wJHJzh/cOIE6z8R7mfqBJ9/8GdP8P4jLz7B+sEV
/DX8deY3mN8Et06En5+jt3n/vc363+b9/zbnjz4DnyU/D47fDvezRF6F+TVw
nXkN8pvkt8iP4lB/MA7vr0747pjnQxzm9cXsF/wg/hR8mnkZ8sbwZ8G5ODzf
PHkF8mL8RfqU4Mv4K+Aq/hr8Mnl18Bq4Qf/NmPs7Ds93B30L3CY/eifse/Cd
kO98J7weut/h/Yi+7x1+Xn4nXP8g81LgNDjDvDHys8zPoc8zv0B+DC6+w+cx
8srgCvoqfWrol9/h9yPo19A3yN+Eb8LvkNdifW32IzrJ+Z/keXgyzOsGJ06G
eX3kJdEPok/Bp0+G+5Ohzxj67Mlw/Tnm58EF8mLyivClk+Hnn/JJfj4nv4q/
Br/MvDr7sYa/gX8TfRN+h/1oMa9NfnQq5A+eCtfXCd99KpyXQN93is8L4MFT
nD84jT7D/DH4LP4cffLoC/SP8RfBJfxl8iv0q+KvnQqvn2Xy6vjXwA30m/BN
1rNzivOHb9MvmuH9D+6cCf3d8IkZ7n9wEjw4E/ZPwaeZl5kJ1zMGzpKXo18e
vgCOwUXml8Bl8isz4flW4WvkL8/w9xjwa/AN5m+Cm/h3wC1wG390muf/ac7/
NPf/6fD5nMDfhz+Jf/A09z/+NPoM/Bj52dPhfuXw58EF/DH5RfqVTofXWxl/
hfzq6fDzZ438ZfR1+DVwg3mb8E367qBvnQ4/v7WZH53h/M/wfcgZzh+cwN93
hvNHP4g+BZ+Gz5wJz3cMnMWfY34evgAfk1dEXwKXwRVwlf2rnQmvn2Xm11nv
GvoG+ZvkN/HvoG8xr32G7//P8v4/y/mDu8/y/D/L+aNPwg/iT50N15umTwb9
GHlZ5uXw58kvkBejL8KXmFcGV86G+1nFXwMvn+X5T94afRrgTXATvHM2fP60
mN9mXlTk/V/k579iuH/d8AlwH3nJYrjewSLPf/xp5mXIGyty/uTlwHn0BfrE
zC+CS/jL9KmAq/hr4GVwvRheP2v0b6DfhG8yfwfcYr1t9jc6x/1/LlxvJ3w3
fAK+71yYn0Q/iD4FTp/j8/+5cH/G4LP4c/B5+hToE5/j8z98ibzyufDzXgW+
Cq7Rbxm+zrw18hvwm/ib5/j+B77F/DY4Os/5n+f5D98NTpwP+/WdD88reZ6f
/8Ap9GnyM+jHwFlwjv55cAEcM6/Iekroy/AV/FX61OCXz/P3mfBr4Ab7s0l+
kz474BZ5bfzRu+H6Dr7L8x/cjT7xLucPn3w3vP8G0afIT8NnwGPkZeFz73L/
k18Ax/iL+EvMK8NX4Kusv4Z+GVxHv0afBn033w1//mqSt4O/hb8NH83y/p8N
19MJ3z3L+aPvg0/O8vwHp2Y5f3AGPAbOgnPMz9OvwHpi+hTBJfRl8ivwVfrU
ZsPn8zJ8nXlr8A3yN9E3Z8Pnww79WuS1wdF7PP/Bne/x+Q+ceC/s1wdOggff
C/um3uP7H/QZ+oyBs+AcOP9euF8FcIy++F74+bkEX6ZfBb5Kfo31LeOvo1+D
b7Bfm8xrot95j9/3wbfxRxd4/l/g898Fzv9C6E+A+y5w/vgH4VPMT18I+2fI
H8OfpW8OfR594QL//QL6IvoS/crMq4Cr4Br5y+A6+jX4BvwmfZrgHfStC+H7
os36ove5/9/n+z/4bvgEfB98Ejz4Pvf/+2Hf9Puc//v8/hecJT9HXh6+AB+D
i6ynBC6TV8Ffha/Rdxlcx78GbjB/E9xkv3aY30LfRh+VQv5AKZx/sBTevx3w
naVwXhf6bvJ70CdK4X70wvfB95OfJH8A/SD8EPkp1jMMnwaPkJfBP1ri51X8
4+iz5E2Ac6XwfTRJXh48xfwC+zGNPqbPDPOL4Fn2vwQ/R36Z/Hn4CvwCfavw
i8yrgZfIX4ZfKfHzF/mrzF+DXwc3yN9g/ib6LXCT89omb4e8Xfwt8B792+Tt
kxdd5P6/GD4fDl4M8zsu8n64GF4PXfDd5PeQl7jI/Y+/D30/OAkeYN4g/BD5
Kfhh1pMmbwQ+Q94oeIz9HCcvy/wJ8nPkTYLz6KfgC+RPMz8Gz6AvXgyvz1ny
S+A59GX4ec67wvwF9FX4RdZbQ7+EfvlieL+vwNdZ7yp5a+B15jfAG+Rv4t9i
/U382/h38O/StwXeA7eZt09edCnEB8AHL4V9Oi6F76NO+K5L/L6IvJ5L3P/g
3kt8n0B+PzjJvAHmDaIfgk/BD9MnfSm8nkfwZ8Cjl/h9Jfnj5GfBE+Ac65uE
z8NP0acAnkYf028Gvoh/Flxif+boV+Y85/FX0C/AV8GL4Br+pUv8vQ36FdZX
B6+iXwOvgxvs3wb8Jvlb4Cb+bfZrh/Xtglv498Bt9PucV/QB7/8PuP8/CPt2
fBDmdeLvQt+Nvof8xAfh/dKLvw99P3lJ+AHwIPlD9E2Bh8lPw4/QLwMeZf4Y
/vEP+P6aeRPk5eg/SV6eeVPkFdBPw8fwM+AifWbhS8yfI7/8QXi9zaOvkLcA
rpK3iL9G/hL+ZfQr4Dr6Vda7Br9OnwZ5G/TZxL+FvwneZv4O/O4H4fOtBb9H
nzbz99FHc7z/5/g+EL4D3DnH/Q/fPcf9Pxf2T8D34u+jTz98Ev8A/CB4iLwU
eJj1pMkfAWfAo8wbI38cPot/Yi68fnLoJ8F5/FNz4fOiwHqm4WP8M+iL8LPM
L6Gfgy/Dz8NX6LMAXwUvcv3UyF9iv5fnwuftCnl11rdK3hr+dfQN+A34TfAW
uAnept8OeBd9i7578G34ffYnuhz2P3CZ9z+4A9wJ7roczu++HJ5XD/rE5bBf
L3360PeDk/gHLvP9H/wQ/VLoh8lPg0fQZ8CjrHeM+ePkZfFP0C+HfxJ/Hn4K
vsB+TjMvxj9zOXz+FMmbBZfInyOvjH4evgJeQF9lPxfZnxr6JfKWwSv46/Rf
JW8N/Tr700C/gX4Tfos+TeZvw+/g3yW/dTl8fu6hb6PfB0dXeP9fCfmD4I4r
/H0Q/i703VfC9fSAE+h74fvI77/Cf1+GfoC8QfoOoU/BD1/h75HIG6FPBv0o
/NiV8HzHmZelzwQ4R94k/jz8FP4C/DR8DJ4BF8GzzC+xP3PwZebPgyvkL7Cf
Vc57EX+NeUvwy+AV5tXBq6xnjfnr5DXQb5C3Cb9F3yb8Nvk74F3yW/B78G36
76OProZ9DlwN/Qev8vu/q2HfTnAX/u6rfP93lc//+HvR910N+/fDJ/EPXA1/
3z2Ifoh+KfzD8GnwCPoM+aPox9CPs99Z9BPgHPpJ+DznM8W8Av2m8cfgGfxF
/LPwJfxz4DJ4Hlyh/wL5VfSL7EeNfkv4l8lfga+DV6/y99jkr4Mb5G+Qt0n/
LfxN8Db+Ha7nXfQt8B7+NngffVTm/V/m/Q/fUQ77dJbD8+jC342/B5wA9+Lv
K4f711/m9//oB9AP0m8Ifwr9MH3S+EfgM+BR+oyBx9Fn4SfokwNP4s/jn0Jf
KIfPz2n8Mf4ZcJH1z5Jfgp8Dl9HPc/1U4BeYX4VfpH8NfonzXYZfwV+nzyr8
Gv51+jXQb4A30W/Rr4l+m/3bgd+Fb4H30LeZv1/m+/8Pw/Ud+JCf/+E74Ds/
DPO7wN34e/AnPuT3//B9H4b71U9eEjyAfxA8RF4K//CHfP5nPSPoMx+G99co
88bQj8NnyZ+gXw79JHl58BT+Avw0eTH7PwMu0m+WvBJ5c+Ay+zNPfoW8BXCV
vEX8NfRL9F3Gv8L+1PGv4l/jelhH30C/Qb9N9Fv0adJnG/0O+l3yW+j34Nv4
98HRNd7/1/j7n2v8/H8tnNd5jb//ge/G38O8BPpe+L5r4c8L/eQl0Q9c4/s/
+CH8KfTD9EmjH6FPhvxR8Bj+cfgseIL5OfyT9M3DT5FX4Hym8cfMm8FfBM+i
LzF/juunDD+PvwJeoF+V+YvgGv4l+GXOawV9nXmr8Gv0Xwc32N8N8jbps4W/
ybxt9Dvk7cK3yNtj/9vo99FHH4X4wEf8/u+jsF8HuBPc9RG///so3J8e+AT+
XnAfffrpm4QfIH+QvCH6pOCHwWnwCDgDHv2Iv/9h3jj9s+AJ8nKsZ/Kj8HrO
o59CXwBPo4+ZPwNfxD/Lfpc+4u9/0JfJn8dfQb+AvkqfRfazBr9E/jL8Cvl1
8Cp91vCvgxvgDfI22Z8t9E3mbXO+O+h30bfg9+Db8Pvw0Tzv//lQf3A+7N+B
vhPcBe6eD/ejB5yYD8+zF38fffrhk/Pc/+gH6T8EnwIP0ydN3xHmZ+BHwWPo
x+f594HRT7CeHP0m4fPgKeYVwNPgmPXO0KfI/Fn0JfLm6FMmbx59BbxAfpX5
i+hr7OcS85bRr5BXR7+Kfg28jr8Bv0H/TfRb6Jvot9Hv0G8X3EK/B9/mPPbh
o+u8/8EHr/P933X+++DrfP+Hvpu8nuvh+zGBvxd/H7j/erjeJPwA/QaZP4Q+
BT8Mn2beCPkZ+FHwGHic/Cz8BPuTQz8JzuOfol+B9U2TH8PPkF+8Hn4/Nsu8
Euc3h78MnsdfAS+gr9JvkfXVwEv4l8Er9K2Tvwpew78ObqDfIH8Tfou+TfK2
2Y+d6+H7axd9C7zH/Dbz98mPboT4APjgDf7+9wbv/xthftcN/r1Y8nrQJ8jr
he+D7wcn6TfAvEHwEPoU/DA4fSM8rxHmZ9CPgsfQj7O+LPs1gT+HfvIG/74l
+VP4C/SfRh+jn0FfRD/L/BL+OXAZPA+usL4FcJU+i/hr9FuCX4Zfga9zPawy
fw3/On0a5G2g32S/tpjXRL8N3kG/C9+6EX7+2aNPG/0+fHST+/8m3/+DO8Cd
+Ltuhu+L7pvhfvagT4B7ye/D33+Tv/+BHyBv8GZ4XkPwKfzD5Kdv8vs/+mXI
H4UfY94487LoJ5iXwz8JzuOfwl9AP03fGP8MuAieJa8EnmN9Zfzz8BX6Ltzk
31PFvwiucV5L9FkmfwV/Hf0qeA3/OriBfgO8ybwt+Cbnsc3+7KDfJa8Fvwff
vhm+X/bJjyqh/nMVfh4Afx79wUqY/4VK2KcD/EVwJ/lfgu+C/3KFf1+gEp7H
V/D3gO+hf4L8e8G9+O9jfh/8/eB++j0AnwQ/CB7A/xD9BtE/DD/Eeh+phP/9
Zgr+UfKGmf8Y+jT4cfQj5D2BPlMJ798n0Y+ynqfQj5H3NPpx+GfAWeY9h38C
/SH0Ofochp/EfwScZ95R+Cnyj6EvMO849+M0eSfQx+SdRD+D/gzXfxH9efJm
4S+QV0J/CTyH/wr+Muu9Rr958m6QV4G/Tf4C/A/wV9F/zPW/CP4EXMP/KXiJ
+Z+xvmX0P6TfSiV8n/4Ivk7+j9nPVfifMG+NvJ/Cr+P/Getv4P85eAP8C/Am
+b+E32Ler9A32c9f499mPb9Bv4P+t+h3mfc7+Bb87+H36P8H+Db4j+Ttg//E
8yS6xfsffOBWqP/8rTDvIPgL+DvgvwjuBH8J3EXel2/x/of/yq1wv3puhftz
D/oE/L2stxf9feA+/PeD+8EPsL4kfR8ED6B/iPmD5D98K7zfh9A/gj4FfpR5
w+DH6JfG/zjzRm6FnzeeQJ9B/yT8KPgp9GOc19Pox8HPoM+yvufQT8AfAufQ
H4afpO8R9Hn0R8FT+I/BF8DHyZ/GfwIc4z/J/TVD3hlw8Vb4vjhP/iz4Av4S
/CX6zHG9XUFfBl8Dz7OeG+RV6H+b+Qvk/QB/lfV8DL8I/oT8Gvmfwi+BP2Pe
Muv7IfwK+T8C19H/GH6V+T9h3hr8T9nPdfJ/hr5B3s+Zv4H/F/Cb5P0Sfgv/
r+Cb8L/mvLbhf8O8HfJ+i36X9f2O52EL/e/Be+A/0K8N/0f67YP/BI5uh/hz
t8O8A7fD9X0efBD8Bfwdt8PvA78I38n8L8F3gb/MvG7wV8A9+O+5ze8fmX8v
/t7b4fndh74PfD/6fvIeACfp9yB5A+gfIn8Q/cPkDeF/BD4FfpT8YfjHyEvf
Dj9vPA4/An6C/c/AP8l6RunzFPox+j19O3z+jMM/A86S/xz5E/Q9hD8HPox/
kvwj8Hn8R+GnwMfYnwL88dvh82Ea/QnmxeCT6GfofwZ9kfnn4WfBF8gvsb+X
0M+hv8L6yvS7Rp958m6AK+Tdps8CeT9AX4X/GH4R/hNwDfwp/Za4nj9Dvwz+
If1XyPsRuA7+MXiV/J+w32vof8p5reP/GXwD/HP6b5D/C/I24X8J3uI8fkX/
Jvpfg7fx/4a+O+Df0m8X/nfkt1jv79Hvgf8AbjPvj+Tvs94/sZ7oDj//3+H9
D/958ME7Yf4X4DvI++Id/v0A+C+Bu+6E+/Nl8rvRf4X8Hvh78Cfofy/+XvB9
4L474Xncz7x+5j0AToIfZL0D8A8xbxD8MPOH8D8CTrGeR8HD7M9j+NPMe5w+
I+An8GfwPwkeBT91J/Xo03e+/eb/+Jc/542R/zT54/ifQZ8FP4d+Av4Q+TnO
6zD+SfARcJ68o/BT4GP0KcAfJ2+a8zwBH3O+J+FnwGfuhJ/3isw/T94s/AVw
ifxL9J2DvwJfZv+vkT+P/wb6Cnm30S/A/wC+ynl8DL8I/gR9jf36lP5L6D/7
//z/BaxPwvg=
      "]]}, {}}, {{}, 
    {RGBColor[0, 1, 1], PointSize[0.01], PointBox[CompressedData["
1:eJxd3H9o3OedJ/AvxRRfEUUUUURXhNmcCCKIMJfVZXU5XTqbarOzWTWdTbVZ
NVWTaaq4E0dxJo7iTBzF+caW7bGjOGNHtieObI9tXW8IIjcEkRVFdIciiiii
DEX0RE+UoSeKKLre0BNlKKJ3HDUcz2v/Wd59//i8n+f5/hiNFP/lcy8/+fzn
oij67/8miv7f///z/7W++p2v3/Pqf3tj7l/v/g+pf/2r773+f3556i4+CO4E
d93FX/vqn3E3fA98Av7e1F9f+8ahZ586c5fvhb8Pfx/4fnA/+AHyk+T/O/QP
ov8r+AHwv0f/EPxfgwfB/wH/w/D/MfVhPHf47L9cvouH6P+f0D+C/qvwqdAf
p9D/TaiP/wb+UXhw9DX4r+EfhgdHfxvq47+Ffwz/Y6mOa9HF//WXlbv838GD
ozR8mv3/+xDHf0//x/GDo3+g/z+QP4J/hPyvw4OjJ8h/Av4b+L+R+un//mzy
L3L/+S6fCc8/lSEvE/atZ8j/xxCn/hE/uI4+ejLMTz1JX3D9Sfp/k/nfZP43
6Y8+GsU/Gl4/MXwdHP1TOC8Fjv8JP3z0FPPB8VPheutPcf38M/5/Zj58HT4a
ww+Ox9i/Mfb/W5zft3iefIvzh4+e5vp7OnXu6y+l/+6Tj+/Oh6+Do28z/9v0
h6+Do3Hmg+Nx+o/j/w7+73D9wNe/g/8Z+j9D/2fwo4+eZf6zPK+eDfvUn+X6
zaaC930iSx9wNsv+wFfAdfTNbCr9X/5t76t7//Xu/O8y/7us57vMh4/hK+A6
+iZ89FyIE+DUc6E/+xznC18B19E34aPvhTjxPZ4n4Oz3OF9whbw6uIk+mmD+
BOufYD76GFyZCM+3Dt8ER8+z/8/zPILPPs/z7Xnmg+v4m8/z+eAQ6z/E/sNn
wfGhMK8CXz/EfHD0feZ/n/0HZ8Ex/sr3w+dnHX0TfZRjPjgFzuZ4PufC86qg
r+e4/uGjF0J/4gXW/wLz0ccvsP/wdfzNF3j/HWY+OHU4fN9lD4fPq/gw+3+Y
5w98k/zoRa7/F5n/Iut/kesffwV/Hb75Ytg/muT8J8PzTU2GedlJ1j/JfPg6
fHOS++8l5r8U+lMvsf8vcf3jr7zE+tE3yY+OsP9HmH+E9R/h+X+E+Uf4vEB+
k7zoZdb/Muf/Mvf/y+z/y+H+VPDXyW+ij/JhXic4kQ/nJ/P0g8/keV/kw/l5
8mP0JfIr5Nfg6+Q3yG/mw/dRCz56JfR3vhLuTwI++Qrvh1dY/ythfhZ/Hn+M
v4S/Al+Dr5PfoH8Tf+sVrr+jIe48yv0ATqJPHQ3nZ46y/qPh/ZLHH+MvHeV6
hq/Rpw5ukN8Et8DRq5z/qyGfeDXsn3yV58OrnD/+LHyeeTH6EvkV9LVXU6ei
//n2N65/enf98A1wk/kt5kVTrB+cmOL8pzj/qfB6zqDPkpcHx+AS+ZWp8H1U
m+L6R99gfhO+BY5e4/p/jecffPK1sG/qNc4fnH0t3J88eTF5pdf4PANfo1+d
vAZ8k7zWazz/j7H+Y6wfPglOHQv7ZY6F87LwefLjYzz/0VeYVzvG/Q9uoG+C
W8yPXuf6fz3sk3id6/911g/OvM7zj7z86+H+x8wvkVd5PdzPGvl1+jXIa4Jb
+KMC7/8C778C778C778C6ycvS14efQwuMa8CrqGvF8L9aTC/CW4VwudJ9AbX
/xvhvAQ4+QY/n8Bn3gjzs/B55sVvcP2/wfMffY28OriBvkl+Cz46zvqPs374
5HHef8fD883gz6LPH+fzO/ml42HfCnk19HX4xvFw/5voW/SJ3gz7dL7J8+9N
1v8m1/+bnD/6LDhPfsz80pt8/sFfw1+Hb4Cb6Fv0jaY5/2nOfzrcz+Q01z/6
DDg7zflP8/xjfgl9BVzDX6dPA31zmvcffPQWz/+3eP6/FeqT6FPoM29x/uA8
OCavBF8B15hXf4v1wzfp3wJHJzh/cOIE6z8R7mfqBJ9/8GdP8P4jLz7B+sEV
/DX8deY3mN8Et06En5+jt3n/vc363+b9/zbnjz4DnyU/D47fDvezRF6F+TVw
nXkN8pvkt8iP4lB/MA7vr0747pjnQxzm9cXsF/wg/hR8mnkZ8sbwZ8G5ODzf
PHkF8mL8RfqU4Mv4K+Aq/hr8Mnl18Bq4Qf/NmPs7Ds93B30L3CY/eifse/Cd
kO98J7weut/h/Yi+7x1+Xn4nXP8g81LgNDjDvDHys8zPoc8zv0B+DC6+w+cx
8srgCvoqfWrol9/h9yPo19A3yN+Eb8LvkNdifW32IzrJ+Z/keXgyzOsGJ06G
eX3kJdEPok/Bp0+G+5Ohzxj67Mlw/Tnm58EF8mLyivClk+Hnn/JJfj4nv4q/
Br/MvDr7sYa/gX8TfRN+h/1oMa9NfnQq5A+eCtfXCd99KpyXQN93is8L4MFT
nD84jT7D/DH4LP4cffLoC/SP8RfBJfxl8iv0q+KvnQqvn2Xy6vjXwA30m/BN
1rNzivOHb9MvmuH9D+6cCf3d8IkZ7n9wEjw4E/ZPwaeZl5kJ1zMGzpKXo18e
vgCOwUXml8Bl8isz4flW4WvkL8/w9xjwa/AN5m+Cm/h3wC1wG390muf/ac7/
NPf/6fD5nMDfhz+Jf/A09z/+NPoM/Bj52dPhfuXw58EF/DH5RfqVTofXWxl/
hfzq6fDzZ438ZfR1+DVwg3mb8E367qBvnQ4/v7WZH53h/M/wfcgZzh+cwN93
hvNHP4g+BZ+Gz5wJz3cMnMWfY34evgAfk1dEXwKXwRVwlf2rnQmvn2Xm11nv
GvoG+ZvkN/HvoG8xr32G7//P8v4/y/mDu8/y/D/L+aNPwg/iT50N15umTwb9
GHlZ5uXw58kvkBejL8KXmFcGV86G+1nFXwMvn+X5T94afRrgTXATvHM2fP60
mN9mXlTk/V/k579iuH/d8AlwH3nJYrjewSLPf/xp5mXIGyty/uTlwHn0BfrE
zC+CS/jL9KmAq/hr4GVwvRheP2v0b6DfhG8yfwfcYr1t9jc6x/1/LlxvJ3w3
fAK+71yYn0Q/iD4FTp/j8/+5cH/G4LP4c/B5+hToE5/j8z98ibzyufDzXgW+
Cq7Rbxm+zrw18hvwm/ib5/j+B77F/DY4Os/5n+f5D98NTpwP+/WdD88reZ6f
/8Ap9GnyM+jHwFlwjv55cAEcM6/Iekroy/AV/FX61OCXz/P3mfBr4Ab7s0l+
kz474BZ5bfzRu+H6Dr7L8x/cjT7xLucPn3w3vP8G0afIT8NnwGPkZeFz73L/
k18Ax/iL+EvMK8NX4Kusv4Z+GVxHv0afBn033w1//mqSt4O/hb8NH83y/p8N
19MJ3z3L+aPvg0/O8vwHp2Y5f3AGPAbOgnPMz9OvwHpi+hTBJfRl8ivwVfrU
ZsPn8zJ8nXlr8A3yN9E3Z8Pnww79WuS1wdF7PP/Bne/x+Q+ceC/s1wdOggff
C/um3uP7H/QZ+oyBs+AcOP9euF8FcIy++F74+bkEX6ZfBb5Kfo31LeOvo1+D
b7Bfm8xrot95j9/3wbfxRxd4/l/g898Fzv9C6E+A+y5w/vgH4VPMT18I+2fI
H8OfpW8OfR594QL//QL6IvoS/crMq4Cr4Br5y+A6+jX4BvwmfZrgHfStC+H7
os36ove5/9/n+z/4bvgEfB98Ejz4Pvf/+2Hf9Puc//v8/hecJT9HXh6+AB+D
i6ynBC6TV8Ffha/Rdxlcx78GbjB/E9xkv3aY30LfRh+VQv5AKZx/sBTevx3w
naVwXhf6bvJ70CdK4X70wvfB95OfJH8A/SD8EPkp1jMMnwaPkJfBP1ri51X8
4+iz5E2Ac6XwfTRJXh48xfwC+zGNPqbPDPOL4Fn2vwQ/R36Z/Hn4CvwCfavw
i8yrgZfIX4ZfKfHzF/mrzF+DXwc3yN9g/ib6LXCT89omb4e8Xfwt8B792+Tt
kxdd5P6/GD4fDl4M8zsu8n64GF4PXfDd5PeQl7jI/Y+/D30/OAkeYN4g/BD5
Kfhh1pMmbwQ+Q94oeIz9HCcvy/wJ8nPkTYLz6KfgC+RPMz8Gz6AvXgyvz1ny
S+A59GX4ec67wvwF9FX4RdZbQ7+EfvlieL+vwNdZ7yp5a+B15jfAG+Rv4t9i
/U382/h38O/StwXeA7eZt09edCnEB8AHL4V9Oi6F76NO+K5L/L6IvJ5L3P/g
3kt8n0B+PzjJvAHmDaIfgk/BD9MnfSm8nkfwZ8Cjl/h9Jfnj5GfBE+Ac65uE
z8NP0acAnkYf028Gvoh/Flxif+boV+Y85/FX0C/AV8GL4Br+pUv8vQ36FdZX
B6+iXwOvgxvs3wb8Jvlb4Cb+bfZrh/Xtglv498Bt9PucV/QB7/8PuP8/CPt2
fBDmdeLvQt+Nvof8xAfh/dKLvw99P3lJ+AHwIPlD9E2Bh8lPw4/QLwMeZf4Y
/vEP+P6aeRPk5eg/SV6eeVPkFdBPw8fwM+AifWbhS8yfI7/8QXi9zaOvkLcA
rpK3iL9G/hL+ZfQr4Dr6Vda7Br9OnwZ5G/TZxL+FvwneZv4O/O4H4fOtBb9H
nzbz99FHc7z/5/g+EL4D3DnH/Q/fPcf9Pxf2T8D34u+jTz98Ev8A/CB4iLwU
eJj1pMkfAWfAo8wbI38cPot/Yi68fnLoJ8F5/FNz4fOiwHqm4WP8M+iL8LPM
L6Gfgy/Dz8NX6LMAXwUvcv3UyF9iv5fnwuftCnl11rdK3hr+dfQN+A34TfAW
uAnept8OeBd9i7578G34ffYnuhz2P3CZ9z+4A9wJ7roczu++HJ5XD/rE5bBf
L3360PeDk/gHLvP9H/wQ/VLoh8lPg0fQZ8CjrHeM+ePkZfFP0C+HfxJ/Hn4K
vsB+TjMvxj9zOXz+FMmbBZfInyOvjH4evgJeQF9lPxfZnxr6JfKWwSv46/Rf
JW8N/Tr700C/gX4Tfos+TeZvw+/g3yW/dTl8fu6hb6PfB0dXeP9fCfmD4I4r
/H0Q/i703VfC9fSAE+h74fvI77/Cf1+GfoC8QfoOoU/BD1/h75HIG6FPBv0o
/NiV8HzHmZelzwQ4R94k/jz8FP4C/DR8DJ4BF8GzzC+xP3PwZebPgyvkL7Cf
Vc57EX+NeUvwy+AV5tXBq6xnjfnr5DXQb5C3Cb9F3yb8Nvk74F3yW/B78G36
76OProZ9DlwN/Qev8vu/q2HfTnAX/u6rfP93lc//+HvR910N+/fDJ/EPXA1/
3z2Ifoh+KfzD8GnwCPoM+aPox9CPs99Z9BPgHPpJ+DznM8W8Av2m8cfgGfxF
/LPwJfxz4DJ4Hlyh/wL5VfSL7EeNfkv4l8lfga+DV6/y99jkr4Mb5G+Qt0n/
LfxN8Db+Ha7nXfQt8B7+NngffVTm/V/m/Q/fUQ77dJbD8+jC342/B5wA9+Lv
K4f711/m9//oB9AP0m8Ifwr9MH3S+EfgM+BR+oyBx9Fn4SfokwNP4s/jn0Jf
KIfPz2n8Mf4ZcJH1z5Jfgp8Dl9HPc/1U4BeYX4VfpH8NfonzXYZfwV+nzyr8
Gv51+jXQb4A30W/Rr4l+m/3bgd+Fb4H30LeZv1/m+/8Pw/Ud+JCf/+E74Ds/
DPO7wN34e/AnPuT3//B9H4b71U9eEjyAfxA8RF4K//CHfP5nPSPoMx+G99co
88bQj8NnyZ+gXw79JHl58BT+Avw0eTH7PwMu0m+WvBJ5c+Ay+zNPfoW8BXCV
vEX8NfRL9F3Gv8L+1PGv4l/jelhH30C/Qb9N9Fv0adJnG/0O+l3yW+j34Nv4
98HRNd7/1/j7n2v8/H8tnNd5jb//ge/G38O8BPpe+L5r4c8L/eQl0Q9c4/s/
+CH8KfTD9EmjH6FPhvxR8Bj+cfgseIL5OfyT9M3DT5FX4Hym8cfMm8FfBM+i
LzF/juunDD+PvwJeoF+V+YvgGv4l+GXOawV9nXmr8Gv0Xwc32N8N8jbps4W/
ybxt9Dvk7cK3yNtj/9vo99FHH4X4wEf8/u+jsF8HuBPc9RG///so3J8e+AT+
XnAfffrpm4QfIH+QvCH6pOCHwWnwCDgDHv2Iv/9h3jj9s+AJ8nKsZ/Kj8HrO
o59CXwBPo4+ZPwNfxD/Lfpc+4u9/0JfJn8dfQb+AvkqfRfazBr9E/jL8Cvl1
8Cp91vCvgxvgDfI22Z8t9E3mbXO+O+h30bfg9+Db8Pvw0Tzv//lQf3A+7N+B
vhPcBe6eD/ejB5yYD8+zF38fffrhk/Pc/+gH6T8EnwIP0ydN3xHmZ+BHwWPo
x+f594HRT7CeHP0m4fPgKeYVwNPgmPXO0KfI/Fn0JfLm6FMmbx59BbxAfpX5
i+hr7OcS85bRr5BXR7+Kfg28jr8Bv0H/TfRb6Jvot9Hv0G8X3EK/B9/mPPbh
o+u8/8EHr/P933X+++DrfP+Hvpu8nuvh+zGBvxd/H7j/erjeJPwA/QaZP4Q+
BT8Mn2beCPkZ+FHwGHic/Cz8BPuTQz8JzuOfol+B9U2TH8PPkF+8Hn4/Nsu8
Euc3h78MnsdfAS+gr9JvkfXVwEv4l8Er9K2Tvwpew78ObqDfIH8Tfou+TfK2
2Y+d6+H7axd9C7zH/Dbz98mPboT4APjgDf7+9wbv/xthftcN/r1Y8nrQJ8jr
he+D7wcn6TfAvEHwEPoU/DA4fSM8rxHmZ9CPgsfQj7O+LPs1gT+HfvIG/74l
+VP4C/SfRh+jn0FfRD/L/BL+OXAZPA+usL4FcJU+i/hr9FuCX4Zfga9zPawy
fw3/On0a5G2g32S/tpjXRL8N3kG/C9+6EX7+2aNPG/0+fHST+/8m3/+DO8Cd
+Ltuhu+L7pvhfvagT4B7ye/D33+Tv/+BHyBv8GZ4XkPwKfzD5Kdv8vs/+mXI
H4UfY94487LoJ5iXwz8JzuOfwl9AP03fGP8MuAieJa8EnmN9Zfzz8BX6Ltzk
31PFvwiucV5L9FkmfwV/Hf0qeA3/OriBfgO8ybwt+Cbnsc3+7KDfJa8Fvwff
vhm+X/bJjyqh/nMVfh4Afx79wUqY/4VK2KcD/EVwJ/lfgu+C/3KFf1+gEp7H
V/D3gO+hf4L8e8G9+O9jfh/8/eB++j0AnwQ/CB7A/xD9BtE/DD/Eeh+phP/9
Zgr+UfKGmf8Y+jT4cfQj5D2BPlMJ798n0Y+ynqfQj5H3NPpx+GfAWeY9h38C
/SH0Ofochp/EfwScZ95R+Cnyj6EvMO849+M0eSfQx+SdRD+D/gzXfxH9efJm
4S+QV0J/CTyH/wr+Muu9Rr958m6QV4G/Tf4C/A/wV9F/zPW/CP4EXMP/KXiJ
+Z+xvmX0P6TfSiV8n/4Ivk7+j9nPVfifMG+NvJ/Cr+P/Getv4P85eAP8C/Am
+b+E32Ler9A32c9f499mPb9Bv4P+t+h3mfc7+Bb87+H36P8H+Db4j+Ttg//E
8yS6xfsffOBWqP/8rTDvIPgL+DvgvwjuBH8J3EXel2/x/of/yq1wv3puhftz
D/oE/L2stxf9feA+/PeD+8EPsL4kfR8ED6B/iPmD5D98K7zfh9A/gj4FfpR5
w+DH6JfG/zjzRm6FnzeeQJ9B/yT8KPgp9GOc19Pox8HPoM+yvufQT8AfAufQ
H4afpO8R9Hn0R8FT+I/BF8DHyZ/GfwIc4z/J/TVD3hlw8Vb4vjhP/iz4Av4S
/CX6zHG9XUFfBl8Dz7OeG+RV6H+b+Qvk/QB/lfV8DL8I/oT8Gvmfwi+BP2Pe
Muv7IfwK+T8C19H/GH6V+T9h3hr8T9nPdfJ/hr5B3s+Zv4H/F/Cb5P0Sfgv/
r+Cb8L/mvLbhf8O8HfJ+i36X9f2O52EL/e/Be+A/0K8N/0f67YP/BI5uh/hz
t8O8A7fD9X0efBD8Bfwdt8PvA78I38n8L8F3gb/MvG7wV8A9+O+5ze8fmX8v
/t7b4fndh74PfD/6fvIeACfp9yB5A+gfIn8Q/cPkDeF/BD4FfpT8YfjHyEvf
Dj9vPA4/An6C/c/AP8l6RunzFPox+j19O3z+jMM/A86S/xz5E/Q9hD8HPox/
kvwj8Hn8R+GnwMfYnwL88dvh82Ea/QnmxeCT6GfofwZ9kfnn4WfBF8gvsb+X
0M+hv8L6yvS7Rp958m6AK+Tdps8CeT9AX4X/GH4R/hNwDfwp/Za4nj9Dvwz+
If1XyPsRuA7+MXiV/J+w32vof8p5reP/GXwD/HP6b5D/C/I24X8J3uI8fkX/
Jvpfg7fx/4a+O+Df0m8X/nfkt1jv79Hvgf8AbjPvj+Tvs94/sZ7oDj//3+H9
D/958ME7Yf4X4DvI++Id/v0A+C+Bu+6E+/Nl8rvRf4X8Hvh78Cfofy/+XvB9
4L474Xncz7x+5j0AToIfZL0D8A8xbxD8MPOH8D8CTrGeR8HD7M9j+NPMe5w+
I+An8GfwPwkeBT91J/Xo03e+/eb/+Jc/542R/zT54/ifQZ8FP4d+Av4Q+TnO
6zD+SfARcJ68o/BT4GP0KcAfJ2+a8zwBH3O+J+FnwGfuhJ/3isw/T94s/AVw
ifxL9J2DvwJfZv+vkT+P/wb6Cnm30S/A/wC+ynl8DL8I/gR9jf36lP5L6D/7
//z/BaxPwvg=
      "]]}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{1., 0.},
  Frame->True,
  FrameLabel->{
    FormBox["\"h\"", TraditionalForm], 
    FormBox["\"C(h)\"", TraditionalForm]},
  LabelStyle->{Medium, Bold},
  Method->{},
  PlotRangeClipping->True]], "Output",
 CellChangeTimes->{
  3.617098542879355*^9},ImageCache->GraphicsData["CompressedBitmap", "\<\
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
14PNWamys73eswE27B++98kb1pfwP385uSQ=\
\>"]]
}, {2}]],

Cell[TextData[{
 "Even now it is not easy to find an obvious structure in ",
 StyleBox["C(h)",
  FontSlant->"Italic"],
 ". It is clear that it is not going to zero, but it is also clear that it is \
not periodic. One might tempted to say that it is random, but that would be \
very strange given how regular the sequence was. What it is happening is that \
our quasi-periodic structure gave rise to a fractal correlation function. \
Understanding exactly what fractal dimensions this pattern has and how it is \
related to the sequence is a difficult problem that  is way beyond the scope \
of this tutorial."
}], "Text",
 CellChangeTimes->{{3.617098585471833*^9, 3.617098711002982*^9}, {
   3.617098764895608*^9, 3.6170987973843737`*^9}, {3.617098844056692*^9, 
   3.617098888456769*^9}, 3.617099094067415*^9, 3.617099296783128*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["\<\
Short-range correlated sequences\
\>", "Subsection",
 CellChangeTimes->{{3.617099430081236*^9, 3.617099450189849*^9}}],

Cell[TextData[{
 "Consider a sequence built as follows: each element ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", "i"], TraditionalForm]]],
 " is given by the previous element ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", 
    RowBox[{"i", "-", "1"}]], TraditionalForm]]],
 " rescaled by a factor \[Phi] and summed with a random number \[Sigma], such \
that the recurrence equation is\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "i"], "=", 
    RowBox[{
     RowBox[{"\[Phi]", "\[CenterDot]", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "1"}]]}], "+", "\[Sigma]"}]}], TraditionalForm]]],
 ".\nAs long as \[Sigma] is taken from a distribution with zero mean and \
finite variance, its details are not really important. In the following we \
will consider only \[Sigma] taken from a uniform distribution between -1 and \
1, but all the results holds for more complicated distributions.\n\nIn order \
to find ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", "s", ">"}], TraditionalForm]]],
 " we consider that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "1"], "=", 
    RowBox[{
     RowBox[{"\[Phi]", "\[CenterDot]", 
      SubscriptBox["s", "0"]}], "+", "\[Sigma]"}]}], TraditionalForm]]],
 " and thus\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    SubscriptBox["s", "1"], ">=", 
    RowBox[{"\[Phi]", "\[CenterDot]", 
     SubscriptBox["s", "0"]}]}], TraditionalForm]]],
 "\nwhere we used the fact that \[Sigma] has zero mean and that ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", "0"], TraditionalForm]]],
 " is a starting condition that we are free to choose. Therefore\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "2"], "=", 
    RowBox[{
     RowBox[{
      RowBox[{"\[Phi]", "\[CenterDot]", 
       SubscriptBox["s", "1"]}], "+", "\[Sigma]"}], "  ", "\[Rule]", " ", 
     RowBox[{"<", 
      SubscriptBox["s", "2"], ">=", 
      RowBox[{"\[Phi]", "\[CenterDot]"}], "<", 
      SubscriptBox["s", "1"], ">=", 
      RowBox[{
       SuperscriptBox["\[Phi]", "2"], "\[CenterDot]", 
       SubscriptBox["s", "0"]}]}]}]}], TraditionalForm]]],
 "\nand thus\n",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    SubscriptBox["s", "i"], ">=", 
    RowBox[{
     SuperscriptBox["\[Phi]", "i"], "\[CenterDot]", 
     SubscriptBox["s", "0"]}]}], TraditionalForm]]],
 " .\nIf ",
 Cell[BoxData[
  FormBox[
   RowBox[{"|", "\[Phi]", "|", 
    RowBox[{"<", "1"}]}], TraditionalForm]]],
 " then ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    SubscriptBox["s", "i"], ">"}], TraditionalForm]]],
 " goes to zero for large enough values of",
 StyleBox[" i",
  FontSlant->"Italic"],
 ". But if ",
 Cell[BoxData[
  FormBox[
   RowBox[{"|", "\[Phi]", "|", 
    RowBox[{">", "1"}]}], TraditionalForm]]],
 " then the mean diverges exponentially. For the case \[Phi]=1 we get ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", "s", ">=", 
    SubscriptBox["s", "0"]}], TraditionalForm]]],
 ". As a consequence we will restrict ourselves to ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", "1"}], "<", "\[Phi]", "<", "1"}], TraditionalForm]]],
 ".\n\nIf we calculate the variance of the recurrence equation we get\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"Var", "(", 
     SubscriptBox["s", "i"], ")"}], "=", 
    RowBox[{
     RowBox[{
      RowBox[{
       RowBox[{"Var", "(", 
        RowBox[{"\[Phi]", "\[CenterDot]", 
         SubscriptBox["s", 
          RowBox[{"i", "-", "1"}]]}], ")"}], "+", 
       RowBox[{"Var", "(", "\[Sigma]", ")"}]}], "  ", "\[Rule]", " ", 
      RowBox[{"<", 
       SuperscriptBox["s", "2"], ">"}]}], " ", "=", 
     RowBox[{
      SuperscriptBox["\[Phi]", "2"], "<", 
      SuperscriptBox["s", "2"], ">", 
      RowBox[{"+", 
       RowBox[{"<", 
        SuperscriptBox["\[Sigma]", "2"], ">"}]}]}]}]}], TraditionalForm]]],
 "\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"\[Rule]", " ", 
     RowBox[{"<", 
      SuperscriptBox["s", "2"], ">"}]}], " ", "=", " ", 
    FractionBox[
     RowBox[{"<", 
      SuperscriptBox["\[Sigma]", "2"], ">"}], 
     RowBox[{"1", "-", 
      SuperscriptBox["\[Phi]", "2"]}]]}], TraditionalForm]]],
 ",\nwhere we used the fact that, when",
 StyleBox[" i",
  FontSlant->"Italic"],
 " is large enough, ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"Var", "(", 
     SubscriptBox["s", "i"], ")"}], "=", 
    RowBox[{
     RowBox[{"Var", "(", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "1"}]], ")"}], "=", 
     RowBox[{"<", 
      SuperscriptBox["s", "2"], ">"}]}]}], TraditionalForm]]],
 ".\nOnce again the sequence variance is well defined only if ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"-", "1"}], "<", "\[Phi]", "<", "1"}], TraditionalForm]]],
 " .\n\nWe know that ",
 StyleBox["C(0)=1",
  FontSlant->"Italic"],
 ", and we can write\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"C", "(", "1", ")"}], "=", 
    RowBox[{
     FractionBox[
      RowBox[{"E", "(", 
       RowBox[{
        SubscriptBox["s", "i"], "\[CenterDot]", 
        SubscriptBox["s", 
         RowBox[{"i", "+", "1"}]]}], ")"}], 
      RowBox[{"<", 
       SuperscriptBox["s", "2"], ">"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{"E", "(", 
        RowBox[{
         SubscriptBox["s", "i"], " ", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"\[Phi]", "\[CenterDot]", 
            SubscriptBox["s", "i"]}], "+", "\[Sigma]"}], ")"}]}], " ", ")"}], 
       
       RowBox[{"<", 
        SuperscriptBox["s", "2"], ">"}]], "=", 
      RowBox[{
       FractionBox[
        RowBox[{
         RowBox[{"E", "(", 
          RowBox[{"\[Phi]", "\[CenterDot]", 
           SuperscriptBox[
            SubscriptBox["s", "i"], "2"]}], ")"}], "+", 
         RowBox[{"E", "(", 
          RowBox[{
           SubscriptBox["s", "i"], "\[CenterDot]", "\[Sigma]"}], ")"}]}], 
        RowBox[{"<", 
         SuperscriptBox["s", "2"], ">"}]], "=", 
       RowBox[{
        FractionBox[
         RowBox[{
          RowBox[{"\[Phi]", "\[CenterDot]"}], "<", 
          SuperscriptBox["s", "2"], ">"}], 
         RowBox[{"<", 
          SuperscriptBox["s", "2"], ">"}]], "=", "\[Phi]"}]}]}]}]}], 
   TraditionalForm]]],
 "\nwhere E(\[CenterDot]) is the expectation value, and we used the fact that \
",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", "i"], TraditionalForm]]],
 " and \[Sigma] are statistically independent and thus ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"E", "(", 
     RowBox[{
      SubscriptBox["s", "i"], "\[CenterDot]", "\[Sigma]"}], ")"}], "=", "0"}],
    TraditionalForm]]],
 ".\nUsing the same kind of reasoning we can write\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"C", "(", "h", ")"}], "=", 
    RowBox[{
     FractionBox[
      RowBox[{"E", "(", 
       RowBox[{
        SubscriptBox["s", "i"], "\[CenterDot]", 
        SubscriptBox["s", 
         RowBox[{"i", "+", "h"}]]}], ")"}], 
      RowBox[{"<", 
       SuperscriptBox["s", "2"], ">"}]], "=", 
     RowBox[{
      FractionBox[
       RowBox[{"E", "(", 
        RowBox[{
         SubscriptBox["s", "i"], "(", 
         RowBox[{
          RowBox[{"\[Phi]", "\[CenterDot]", 
           SubscriptBox["s", 
            RowBox[{"i", "+", 
             RowBox[{"(", 
              RowBox[{"h", "-", "1"}], ")"}]}]]}], "+", "\[Sigma]"}], ")"}], 
        " ", ")"}], 
       RowBox[{"<", 
        SuperscriptBox["s", "2"], ">"}]], "=", 
      RowBox[{
       RowBox[{"\[Phi]", "\[CenterDot]", " ", 
        RowBox[{"C", "(", 
         RowBox[{"h", "-", "1"}], ")"}]}], "=", 
       RowBox[{
        RowBox[{
         SuperscriptBox["\[Phi]", "h"], "\[CenterDot]", " ", 
         RowBox[{"C", "(", "0", ")"}]}], "=", 
        SuperscriptBox["\[Phi]", "h"]}]}]}]}]}], TraditionalForm]]],
 ".\n\nFor \[Phi]=0.9 we get:"
}], "Text",
 CellChangeTimes->{{3.617099478185418*^9, 3.617099510893036*^9}, {
   3.617099565451522*^9, 3.617099680704913*^9}, {3.617099728203664*^9, 
   3.617099758973179*^9}, 3.617100766349586*^9, 3.6171008902497787`*^9, {
   3.617101051123062*^9, 3.617101152993699*^9}, {3.6171016622869663`*^9, 
   3.617102191347138*^9}, {3.617102222226705*^9, 3.6171022285860863`*^9}, {
   3.6171022601368933`*^9, 3.617102746343444*^9}, {3.617102953269113*^9, 
   3.617103278829391*^9}, {3.617103385779902*^9, 3.6171034317490683`*^9}, {
   3.617103481945815*^9, 3.6171035332596197`*^9}, {3.6171035875305367`*^9, 
   3.617103619292721*^9}, {3.6171036548575172`*^9, 3.617103732017123*^9}, {
   3.6171039601758947`*^9, 3.617103967174815*^9}, {3.6171040045824137`*^9, 
   3.61710404306384*^9}, 3.617455196159975*^9}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Phi]", "=", "0.9"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Sigma]", "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"RandomFunction", "[", 
      RowBox[{
       RowBox[{"ARMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "\[Phi]", "}"}], ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "dim"}], "}"}]}], "]"}], "[", "\"\<States\>\"", 
     "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"CorrelationFunction", "[", 
      RowBox[{
       RowBox[{"ARMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "\[Phi]", "}"}], ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", "h"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"h", ",", "0", ",", "dim"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}], 
  "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lAswXGcUx2/R9dqOt4g0iqro1niLN3+vtYvF7mIlaTut8UraCY0UUY+N
R6ZNdKoyjCRixkSb6tBgEKpiRzvTnUgrk8xoKaIismY9i3gFbWfPvTN37vzu
//ufc77zPexSsyXpWgzDpP33/v/VPCshR9UrBbjzdJB+4IPF7ipp7RyxHkpa
Fw6tNiqJjXFvRJLxOHgtRMPmUHy8Vde+wY63gnvsaycFBxvEr6OsTNqSF75K
bIsPG9VxoW+uENuj6xeuT5PNAsVzgMf9P83fObxO7IizPRfr+VWzxE4Qvr3k
3aJeJeZhQvWVycuZGWJnjNY4FQ2M7hG7QOwYWl6z8Ao07Iayok+VzCyH2B03
d4uZzTY2nwesbTsHa3P3iT1x1LCz6EHEDrEXeq02xpu5u8TeCI12X+62XyQ+
jrndCAOByyTNzwfJnEzuZjXbL1/cvlERNCxi6/FDuvCGwyWeDrE/Lp+ZEGw+
Y+sJQLloj7Hqf0YciJkWix3PF2z/gjCRfvq3yaoh0oMhUe4vpMk6SA+Bs1/l
KvPFP6QDpQ/7RQU9mxqWAz637g95erH9CEVcENfF47quhuWhuHau+evfh7fJ
HwZbTv2p0ONUnzwMeT8KFGNX2fUOh15fk7FqYo70cCxb1rs9aVCTPwKflV4s
zTtC/ZVH4FEQv7JDpkX5I7GfFyhV6tN+kEdi1PPbv2Ld1yg+HwvaplF5zI6G
5XzEZeq3rJtvkx6F+qlBYZXjqwqNHoUqq9uHq8X6GmYEaMrytm110CFdgDOq
mvH37zGkC1E4U2ziztEjXQh+0MFjP64u6dFQZX/+IOb7LcofDVPZhXjTa2z8
GKT17bYv1WmRPwY6tjHcZgMO6bGY/mbKs8We4sljkfbJbIZQTfEYEc4t//GR
v8Vzii9CcaFjedAGq8chrNZDPHSE9cdhOif/sm4HzZeJR0rHzs8+Tpvkj8dW
n1p+9vw8+RMwO/eI8Y2l/YMExPjzvrNxnKbxCQhUvjtpU0P5FAnI7tk0CAhe
JL8YXNF4mas2rQfEmAzgDeUeY/stxpVLvr8qrbU1rBADGfN3e7O4VJ8EgT8M
RK6bm2kYEiyqzncN8AzJL0HEcrTZWjqNV0jQ8FPWGzqBrF+KKRO+68E+rT+k
aEzN1O2K36P6pQiZN4rR0Vmn+qVIDb/5fKyf7V8ieHapDe+N7pI/ERxeW+nw
lyryJ2KmM2MpYYTuM0Ui9OqMl/ULxmj/JmHvVr6bKmRFw0jCw/jsu4fqn9J+
TYLcZCTshLSb/EkoKB1oO+3CnvdkrDRaNpv10nlDMiosrSqSstnzkIwksfNV
nyw6b4pkXG/OsWvMZe8zGa4YzruKcykeZKi0zrljZaGtYbkMcRdaSxYn6T5R
yDDb8CSs1ZFL+VPwt1FgfqaZMflTIJp7i+/10oj8KZgTvCg51c6QPwXW68c4
ypMG5D+BikJ1dY37dsi/WuvcEg==
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lAswXGcUx2/R9dqOt4g0iqro1niLN3+vtYvF7mIlaTut8UraCY0UUY+N
R6ZNdKoyjCRixkSb6tBgEKpiRzvTnUgrk8xoKaIismY9i3gFbWfPvTN37vzu
//ufc77zPexSsyXpWgzDpP33/v/VPCshR9UrBbjzdJB+4IPF7ipp7RyxHkpa
Fw6tNiqJjXFvRJLxOHgtRMPmUHy8Vde+wY63gnvsaycFBxvEr6OsTNqSF75K
bIsPG9VxoW+uENuj6xeuT5PNAsVzgMf9P83fObxO7IizPRfr+VWzxE4Qvr3k
3aJeJeZhQvWVycuZGWJnjNY4FQ2M7hG7QOwYWl6z8Ao07Iayok+VzCyH2B03
d4uZzTY2nwesbTsHa3P3iT1x1LCz6EHEDrEXeq02xpu5u8TeCI12X+62XyQ+
jrndCAOByyTNzwfJnEzuZjXbL1/cvlERNCxi6/FDuvCGwyWeDrE/Lp+ZEGw+
Y+sJQLloj7Hqf0YciJkWix3PF2z/gjCRfvq3yaoh0oMhUe4vpMk6SA+Bs1/l
KvPFP6QDpQ/7RQU9mxqWAz637g95erH9CEVcENfF47quhuWhuHau+evfh7fJ
HwZbTv2p0ONUnzwMeT8KFGNX2fUOh15fk7FqYo70cCxb1rs9aVCTPwKflV4s
zTtC/ZVH4FEQv7JDpkX5I7GfFyhV6tN+kEdi1PPbv2Ld1yg+HwvaplF5zI6G
5XzEZeq3rJtvkx6F+qlBYZXjqwqNHoUqq9uHq8X6GmYEaMrytm110CFdgDOq
mvH37zGkC1E4U2ziztEjXQh+0MFjP64u6dFQZX/+IOb7LcofDVPZhXjTa2z8
GKT17bYv1WmRPwY6tjHcZgMO6bGY/mbKs8We4sljkfbJbIZQTfEYEc4t//GR
v8Vzii9CcaFjedAGq8chrNZDPHSE9cdhOif/sm4HzZeJR0rHzs8+Tpvkj8dW
n1p+9vw8+RMwO/eI8Y2l/YMExPjzvrNxnKbxCQhUvjtpU0P5FAnI7tk0CAhe
JL8YXNF4mas2rQfEmAzgDeUeY/stxpVLvr8qrbU1rBADGfN3e7O4VJ8EgT8M
RK6bm2kYEiyqzncN8AzJL0HEcrTZWjqNV0jQ8FPWGzqBrF+KKRO+68E+rT+k
aEzN1O2K36P6pQiZN4rR0Vmn+qVIDb/5fKyf7V8ieHapDe+N7pI/ERxeW+nw
lyryJ2KmM2MpYYTuM0Ui9OqMl/ULxmj/JmHvVr6bKmRFw0jCw/jsu4fqn9J+
TYLcZCTshLSb/EkoKB1oO+3CnvdkrDRaNpv10nlDMiosrSqSstnzkIwksfNV
nyw6b4pkXG/OsWvMZe8zGa4YzruKcykeZKi0zrljZaGtYbkMcRdaSxYn6T5R
yDDb8CSs1ZFL+VPwt1FgfqaZMflTIJp7i+/10oj8KZgTvCg51c6QPwXW68c4
ypMG5D+BikJ1dY37dsi/WuvcEg==
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJwtknlQFGQYh0FL80oYlRRBQM2AOFwQEOP4gcuxLAu77C67gDE7yCqByJGo
ME5iiDnUqkMiITiGKyOzphCSSDpDgkSEJIcZEEReaEgeOIygxobD75355p3n
e77nv88uIS1KO8PExCRx6rzZ0/PU35SbF7hx/c2MkN/BE9mlFfmP/iGbocCi
97cX8gfkxah6uSm1efIeeSmSz3eHiu/fIVthwkp96IjpbbItGts7S5LL/iKv
xC9dPqqfv/qTvBr7CvIi9rb1kNegz3WjpkF6i2yP3ea35mQvuUl2RP3CM0r5
oi6yE57HWrQXCzvILoj0tc8QhraT1+LlzAyjPvZXsgAJ0r3GiboWshveLxrV
tqibye4oH3n+rsSzibwO1+yydLvDrpI98CptW1uFTQPZE6+Lb8+8M+MK2Qub
T937pM2jnrweDR/WBiVXXyR74+tYZU9hSi15A1akDI11aGrIH8HD2cqgLKgm
+2BiWKttbz5H9sX5A5UBJ9sMZD+UDYY9rrSuJPvj09f9PuLaCjJQKnK2NhzU
T3Mu0BsXaFlytJw+APIKQ9GiipP0AdC6XJg1nlNGH4ix/g3eg+Ul9IHYqVku
qTIvpt+IlHRts3XTUfqNmPg+oO14VSG9EC62l/P8Oo/QC/Gvd92B9KBD9EFQ
Pjg9+Jnfl/RBMJaFtM7LP0gfjPAFsUkq8wP0wRifJxMm9efRh6BQVZX+YnAf
fQiSk7xq4i1y6UMxenlzn9nYHvpQ6A6viW9cmEMvglFyRVG0Yxe9CG7BO402
Vln0YdBkDmsvGjPpw/BsS32calkGvRjiekmPZ8t2ejEcdYNjYRdS6MMBN9GA
w+Mk+nDMyonLGU3bQi/BLDub7TpBIr0ENm9Z3f3GKYE+ApEnjNroOA19BDZF
GK09Mj6mj4Stxnh8z95Y+kgM+4SrV/Wq6KXY1rHrxsmdymmGFC6/P0p1kMn5
XooBf4WoIkE2zT9JcWj+ZJ6DOJK9DJY9xU3zHMPZyyBemHZsboyIvQzXdP/Z
ruoIZi9DsbH6hM1BIfsozB661Pd5TiD7KNws7b2WVQ72UXiv5oui1Ce+7KOm
/reme8mzDezl8MxOz9D4r2cvh/hbcYm+y4O9HGYDR/QTenf2cti/LM12Pidg
r4DF4ft9sk5X9gq8ck8623rKib0CrkWG3B+aHdgrYBgxrnkq+IC9EibKoSer
/17NXollQw//+LF1JXsl7pbKGq8+tGWvxNb7hY5NaSvYR8MsqW7+scTl7KOR
ZfDrkZ9Zyj4aXlvW9wvWWrCPxmTc9UGn8UXsVZjM73QdGzdnP8Xxc872O5mx
n2LDgLvOegF7FcS5IaFu6+ayV2MgBjs0RbPZq7F4f3ep3vtt9mp813Q6M9hy
Jns1Iu46b/UXmLKPQYPbyIjf6KTf/ztExfk=
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJwtknlQFGQYh0FL80oYlRRBQM2AOFwQEOP4gcuxLAu77C67gDE7yCqByJGo
ME5iiDnUqkMiITiGKyOzphCSSDpDgkSEJIcZEEReaEgeOIygxobD75355p3n
e77nv88uIS1KO8PExCRx6rzZ0/PU35SbF7hx/c2MkN/BE9mlFfmP/iGbocCi
97cX8gfkxah6uSm1efIeeSmSz3eHiu/fIVthwkp96IjpbbItGts7S5LL/iKv
xC9dPqqfv/qTvBr7CvIi9rb1kNegz3WjpkF6i2yP3ea35mQvuUl2RP3CM0r5
oi6yE57HWrQXCzvILoj0tc8QhraT1+LlzAyjPvZXsgAJ0r3GiboWshveLxrV
tqibye4oH3n+rsSzibwO1+yydLvDrpI98CptW1uFTQPZE6+Lb8+8M+MK2Qub
T937pM2jnrweDR/WBiVXXyR74+tYZU9hSi15A1akDI11aGrIH8HD2cqgLKgm
+2BiWKttbz5H9sX5A5UBJ9sMZD+UDYY9rrSuJPvj09f9PuLaCjJQKnK2NhzU
T3Mu0BsXaFlytJw+APIKQ9GiipP0AdC6XJg1nlNGH4ix/g3eg+Ul9IHYqVku
qTIvpt+IlHRts3XTUfqNmPg+oO14VSG9EC62l/P8Oo/QC/Gvd92B9KBD9EFQ
Pjg9+Jnfl/RBMJaFtM7LP0gfjPAFsUkq8wP0wRifJxMm9efRh6BQVZX+YnAf
fQiSk7xq4i1y6UMxenlzn9nYHvpQ6A6viW9cmEMvglFyRVG0Yxe9CG7BO402
Vln0YdBkDmsvGjPpw/BsS32calkGvRjiekmPZ8t2ejEcdYNjYRdS6MMBN9GA
w+Mk+nDMyonLGU3bQi/BLDub7TpBIr0ENm9Z3f3GKYE+ApEnjNroOA19BDZF
GK09Mj6mj4Stxnh8z95Y+kgM+4SrV/Wq6KXY1rHrxsmdymmGFC6/P0p1kMn5
XooBf4WoIkE2zT9JcWj+ZJ6DOJK9DJY9xU3zHMPZyyBemHZsboyIvQzXdP/Z
ruoIZi9DsbH6hM1BIfsozB661Pd5TiD7KNws7b2WVQ72UXiv5oui1Ce+7KOm
/reme8mzDezl8MxOz9D4r2cvh/hbcYm+y4O9HGYDR/QTenf2cti/LM12Pidg
r4DF4ft9sk5X9gq8ck8623rKib0CrkWG3B+aHdgrYBgxrnkq+IC9EibKoSer
/17NXollQw//+LF1JXsl7pbKGq8+tGWvxNb7hY5NaSvYR8MsqW7+scTl7KOR
ZfDrkZ9Zyj4aXlvW9wvWWrCPxmTc9UGn8UXsVZjM73QdGzdnP8Xxc872O5mx
n2LDgLvOegF7FcS5IaFu6+ayV2MgBjs0RbPZq7F4f3ep3vtt9mp813Q6M9hy
Jns1Iu46b/UXmLKPQYPbyIjf6KTf/ztExfk=
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.000029512665430652835`},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{519.333333333333, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.6171007461095343`*^9}]
}, {2}]],

Cell[TextData[{
 "There are a few things to notice. First of all, although each term depends \
explicitly only on the previous one, it has a non zero correlation also with \
terms further away. \"How correlated\" a value is correlated with the others \
decay exponentially with the distance and hence the neme ",
 StyleBox["short-range correlations",
  FontSlant->"Italic"],
 ". But especially when \[Phi] is close to 1 the correlation function can \
extend quite far.\nMore surprising is the case \[Phi]=1, that is a simple \
Brownian random walk, because in that case the variance diverges and the \
correlations are indeterminate (since ",
 Cell[BoxData[
  FormBox[
   FractionBox["\[Infinity]", "\[Infinity]"], TraditionalForm]]],
 "is an indeterminate form), although the mean stays well defined at ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["s", "0"], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.617103772843543*^9, 3.617103943734096*^9}, {
  3.617103981191689*^9, 3.617103986726206*^9}, {3.6171040543525963`*^9, 
  3.617104061022153*^9}, {3.617104104397641*^9, 3.6171042448280783`*^9}, {
  3.617455069062479*^9, 3.617455112927086*^9}, {3.617455178913102*^9, 
  3.6174552040888577`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["More complicated sequences", "Subsection",
 CellChangeTimes->{{3.617517315055128*^9, 3.6175173320594187`*^9}, {
  3.6175183229009533`*^9, 3.617518325332408*^9}}],

Cell[TextData[{
 "We have seen that having each element independent from the others produces \
an uncorrelated sequence ( ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"C", "(", "h", ")"}], "=", 
    SubscriptBox["\[Delta]", 
     RowBox[{"h", ",", "0"}]]}], TraditionalForm]]],
 ") and that having each element linearly dependent from the previous one \
produces a short-range correlated sequence ( ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"C", "(", "h", ")"}], "=", 
    SuperscriptBox["\[Phi]", "h"]}], TraditionalForm]]],
 " ). Of course this does not exhaust all the possibilities. We can easily \
create a sequence where each element depends from the previous two elements \
instead of one as\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "i"], "=", 
    RowBox[{
     RowBox[{
      SubscriptBox["\[Phi]", "1"], "\[CenterDot]", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "1"}]]}], "+", 
     RowBox[{
      SubscriptBox["\[Phi]", "2"], "\[CenterDot]", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "2"}]]}], "+", "\[Sigma]"}]}], TraditionalForm]]],
 "\nor even generalize the concept to a dependance over the ",
 StyleBox["n",
  FontSlant->"Italic"],
 " previous elements. This complicates the calculations, but do not change \
the overall behaviour, still resulting in an exponential decaying correlation \
function. These kind of sequences are commonly known as ",
 StyleBox["auto regressive time series",
  FontSlant->"Italic"],
 ", often abbreviated as AR(",
 StyleBox["n",
  FontSlant->"Italic"],
 ") models. There is a vast literature on every possible variation of this \
kind of sequences, so we refer the interested reader to it.\n\nA much more \
complicated case is the one of a non-linear dependence between an element and \
the previous one, complicated enough to fall outside the scope of this simple \
tutorial. We will just briefly look at a simple case to show what kind of \
problem one might encounter.\nLet's consider the logistic map ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "i"], "=", 
    RowBox[{
     RowBox[{"r", "\[CenterDot]", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "1"}]]}], " ", 
     RowBox[{"(", 
      RowBox[{"1", "-", 
       SubscriptBox["s", 
        RowBox[{"i", "-", "1"}]]}], ")"}]}]}], TraditionalForm]]],
 ", i.e. a relatively simple quadratic dependance of each term on the \
previous one. The behavior of this sequence depends a lot on the value of the \
paramenter ",
 StyleBox["r",
  FontSlant->"Italic"],
 ". In fact, as long as ",
 StyleBox["r",
  FontSlant->"Italic"],
 " is smaller than ~3.5 the sequence either converge to a single value or \
oscillate periodically, but for 3.5\[LessTilde]",
 StyleBox["r<4",
  FontSlant->"Italic"],
 " the sequence becomes chaotic [2].\nBelow an example for r=3.75 :"
}], "Text",
 CellChangeTimes->{{3.617517351603272*^9, 3.617517359634429*^9}, {
  3.617517393800488*^9, 3.61751768769296*^9}, {3.617517720786531*^9, 
  3.617517895762896*^9}, {3.617518008491907*^9, 3.617518045317218*^9}, {
  3.617518333570901*^9, 3.617518398651517*^9}, {3.6175184983799334`*^9, 
  3.617518709680423*^9}, {3.6175190786724*^9, 3.6175191054014673`*^9}, {
  3.617519165600625*^9, 3.61751918975718*^9}, {3.6175193028133802`*^9, 
  3.617519330674162*^9}, {3.617519765980144*^9, 3.617519783946031*^9}, {
  3.6175198168956423`*^9, 3.617519880183189*^9}, {3.617519952070548*^9, 
  3.617519961783917*^9}, {3.617520041737961*^9, 3.617520121680595*^9}, {
  3.617520515340279*^9, 3.6175205156422853`*^9}, {3.6175205748786497`*^9, 
  3.617520580626498*^9}, {3.6175206326288023`*^9, 3.617520666892511*^9}, {
  3.617527642026972*^9, 3.61752764306107*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", "1000"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"Table", "[", 
    RowBox[{"0.5", ",", 
     RowBox[{"{", "dim", "}"}]}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"r", "=", "3.75"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"For", "[", 
    RowBox[{
     RowBox[{"i", "=", "2"}], ",", 
     RowBox[{"i", "\[LessEqual]", "dim"}], ",", 
     RowBox[{"i", "++"}], ",", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"s", "[", 
       RowBox[{"[", "i", "]"}], "]"}], "=", 
      RowBox[{"r", " ", 
       RowBox[{"s", "[", 
        RowBox[{"[", 
         RowBox[{"i", "-", "1"}], "]"}], "]"}], " ", 
       RowBox[{"(", 
        RowBox[{"1", "-", 
         RowBox[{"s", "[", 
          RowBox[{"[", 
           RowBox[{"i", "-", "1"}], "]"}], "]"}]}], ")"}]}]}]}], 
    "\[IndentingNewLine]", "]"}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"dim", "=", 
   RowBox[{
    RowBox[{"Dimensions", "[", "s", "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"ms", "=", 
   RowBox[{"s", "-", 
    RowBox[{"Mean", "[", "s", "]"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   FractionBox[
    RowBox[{"ListCorrelate", "[", 
     RowBox[{"ms", ",", "ms", ",", "1"}], "]"}], 
    RowBox[{
     RowBox[{"Variance", "[", "ms", "]"}], "*", "dim"}]]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.617520159276381*^9, 3.617520159617072*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lAlMVFcUhkfSVhBqpWCYIJWpDnYkFBiHnaHzs8i+DbOwCBYIBNM2owKl
IKa+0gXZtG5VwQhtQB0NAUGwhEImRQy1KCKbtFAt7VQERBAZEFJpDee+5OXm
y8n5z/3vOfe+m7o3Jt2Ix+Ol/f+/Wle/Gdnq+pBWHlaXaWLjVRZ0E294xdz9
438TW4ITOa3LKZ0k5mPN6O7wurYRYhvw3E6/UNc/IRYgJalhZt7yLvEWWG78
uuHsiX+IhXhr+Zf+nOlx4m34fYQXOXyB1RMhvbL92UAOq2ePflMNT7FjlNgB
Vticvr6T1XPEtunL2YG2PcTOyL81JnTfyOqJMemgaJrXPibegUt5hacD1v9F
LIHGWTrx4NEUsQusrVqt8w39xK4I8q+qT9BMELvh6IS9skv2J7E72rymIpx7
2X48EOSRMZBacIfYE/LlsKa5Lj2xF1LzDju8Ycn0vOE7dbl4jD9GLIWh1tXn
zYNMzwfJK/Jjiym9xB8g6mVaQEHbI2IZzNaeuVizxPwCkhzN6I1QOl8OsP6p
QSebZfV9UdwTMlw9QufB+aLllsQurJzV98Na98a5my5Un/PD4et+twdt+yju
j9e9MyZ/ELJ8f9iXac02ubD+BcBsWXBg/An1jwuAxs+0/LOa3yi+E87fNU+Y
bGf6O2HxsclQ8h6mH4gws4qTPycw/UBwaZ3SrnbWryCMJvIHxbuoX1wQ5hPO
HfrI/T7FgyHv6Jmr9GTxYLz/7Z6V3kUWD4Gmxq6ytIzFQ2C+dOC1/eZDFA+F
m2NfnVbL9h8K9YI2+95mNu9h2CJSff7OUbb/MKgWku9ufczmPRzI7bCPV1J/
uHCUXmkx7LrG+hWBkmOVFq6mLB4BfX6t5IgTuw+RKOnIiO+2o35ykRh0NHcV
H2fzG4VDNsKLQ/50HlwUbq69wRPr2PxG43mFp+0m/cAqIxoF5ecbRUbMTzQ8
i7avGz3zYJV10TD6ZndS10s2b3LUrzR+9cKJ3gPI8UVkUYt3BfWXk+Pp2238
fV+Snk6O6+PcfPY0O58YRPXNFqe0kB5ikH3yvEV7E91PLgb7O22ajZPIny4G
p+z/zXL1Zf4USBNcm+UM5A8KzIvXlI6IWL8UuLRYx6+KG6Z8BQRLV8vmGpl/
JaJMVhIFjoOUr8RVvvD7LgfmX4lsn+BMWesflK9Ej1omnZ5j/lXwLrz3UNjO
/KuQpEqpluqZfxVmJHtXjMXMvwppVQ4bDNWkx1Oj25BV7v6M+VdDNPlUVNZP
epwaeZkXSn6dIT2dGndyapObt7L3LhbvdU421E+QHmJR31pnJllg8xaLg88z
rySdID1dLBKnTqmtetj9i8O5kUilRyjpIQ4f+n+a6ycgPS4OhfuWwrV60tPF
QTp0tv2T3NuUH4/yH72KsgL0sv8AyiPdkA==
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lAlMVFcUhkfSVhBqpWCYIJWpDnYkFBiHnaHzs8i+DbOwCBYIBNM2owKl
IKa+0gXZtG5VwQhtQB0NAUGwhEImRQy1KCKbtFAt7VQERBAZEFJpDee+5OXm
y8n5z/3vOfe+m7o3Jt2Ix+Ol/f+/Wle/Gdnq+pBWHlaXaWLjVRZ0E294xdz9
438TW4ITOa3LKZ0k5mPN6O7wurYRYhvw3E6/UNc/IRYgJalhZt7yLvEWWG78
uuHsiX+IhXhr+Zf+nOlx4m34fYQXOXyB1RMhvbL92UAOq2ePflMNT7FjlNgB
Vticvr6T1XPEtunL2YG2PcTOyL81JnTfyOqJMemgaJrXPibegUt5hacD1v9F
LIHGWTrx4NEUsQusrVqt8w39xK4I8q+qT9BMELvh6IS9skv2J7E72rymIpx7
2X48EOSRMZBacIfYE/LlsKa5Lj2xF1LzDju8Ycn0vOE7dbl4jD9GLIWh1tXn
zYNMzwfJK/Jjiym9xB8g6mVaQEHbI2IZzNaeuVizxPwCkhzN6I1QOl8OsP6p
QSebZfV9UdwTMlw9QufB+aLllsQurJzV98Na98a5my5Un/PD4et+twdt+yju
j9e9MyZ/ELJ8f9iXac02ubD+BcBsWXBg/An1jwuAxs+0/LOa3yi+E87fNU+Y
bGf6O2HxsclQ8h6mH4gws4qTPycw/UBwaZ3SrnbWryCMJvIHxbuoX1wQ5hPO
HfrI/T7FgyHv6Jmr9GTxYLz/7Z6V3kUWD4Gmxq6ytIzFQ2C+dOC1/eZDFA+F
m2NfnVbL9h8K9YI2+95mNu9h2CJSff7OUbb/MKgWku9ufczmPRzI7bCPV1J/
uHCUXmkx7LrG+hWBkmOVFq6mLB4BfX6t5IgTuw+RKOnIiO+2o35ykRh0NHcV
H2fzG4VDNsKLQ/50HlwUbq69wRPr2PxG43mFp+0m/cAqIxoF5ecbRUbMTzQ8
i7avGz3zYJV10TD6ZndS10s2b3LUrzR+9cKJ3gPI8UVkUYt3BfWXk+Pp2238
fV+Snk6O6+PcfPY0O58YRPXNFqe0kB5ikH3yvEV7E91PLgb7O22ajZPIny4G
p+z/zXL1Zf4USBNcm+UM5A8KzIvXlI6IWL8UuLRYx6+KG6Z8BQRLV8vmGpl/
JaJMVhIFjoOUr8RVvvD7LgfmX4lsn+BMWesflK9Ej1omnZ5j/lXwLrz3UNjO
/KuQpEqpluqZfxVmJHtXjMXMvwppVQ4bDNWkx1Oj25BV7v6M+VdDNPlUVNZP
epwaeZkXSn6dIT2dGndyapObt7L3LhbvdU421E+QHmJR31pnJllg8xaLg88z
rySdID1dLBKnTqmtetj9i8O5kUilRyjpIQ4f+n+a6ycgPS4OhfuWwrV60tPF
QTp0tv2T3NuUH4/yH72KsgL0sv8AyiPdkA==
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.2197265625},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lAswXGcUxzfJEGmZmJJEM0gIYZQ0qEcI/t7ikV37sjphorqlSggxQawu
GrWDhPGKR1rxfjUeG0Q6HeuRRJqiUtlG0kbMZA1VkWxbwsik7ezZO3Pnzrm/
8/+f73zn3s/kk0S2cDuDwfj0v/v/p+p66WH19d7ZyfVVD3oBUd+V+fGfFUOq
UAsTgnPZ7Z6/EteFfaTv26JbE8T1YTcm8XXsaqHYAH76DRVxiQ8o3xD7tPrz
/z57n/hBDBf07GZYfE/cFGZVzvIo837iZrD6w8BvIK2O4sOIVipmc+puU74l
2BtMwxL2KHErfJDyTEs6r/azRoYF5zP5+8PEj6D58UxbR9gA8aOw0Di/lScv
IG4LJT92p7fXNeJ2sPWSDNcGNRC3R8KBOFG5ZxXFH0GYEFwh/Eud7wCdDL3k
1sQM4o5wdnGJT8ovJ+4EZuvjV7nB9sSdUXDOamr8PSnFx5CtKx+znR6kfBdk
xqa/8CsdIO6KjRiDD5uO9xM/DnvdANddog7ibohws2fF1JVS7A6FiSJkbfUG
5XtgrvtH7XGGjDhQk3dWmxE+puJiIGmt68voXvV+emLZ2EHZZ0P7KfZExRnu
vUt514l7YXxEadXnVEncC+brGTGi3DSq541avfTX4sUmVb7YG/fMg/ca3Wki
7oOefsvNrtYy4j7oddkUpaSXEPfFdHtJ3Y6vssjfF/qGtr+7C5qpvh+6h5jV
lk0NxP1Qmbx/o+ahej7+2Gi8rdtS3E7cH1uDS288U9qJB2Cm66ZOyza1PgCL
31wtiRGq/U/g6Y6xnESdauInoImp7NPNGbS+QOSm5izrPKN64kC4Rto0rcXV
Ew+CU97I0mvrSuJByJp9MrI7UUT+wQhjrjxwPFNB/sG43ll86PM9OcRD0Oe2
sJB3NI54CGpuRF10nigi/5NIuKUxs7bVSf4nccTGOM7wmJQ4E9qD1tmaLJqX
mImlUYMnFzSbibNQfvUlwyFCouJgoXVVs9r0cBvls8BKly7Hv6LvR8ZC/kCO
mVTYQ+sLhWh26LTbBfJDKE6dTzPlMi6TPhSX9TOU6WX1qlgWioCqkGKjOz1U
nw1TEUtiutpL9dngR0Wk/mZ4k/plo2KUn7myReeBjI3YR+9Mmvh0kJ4DO4d9
DU7u1D842CrYNnfJk/zFHNzd89C4N4LmI+PgkGXWAYUvj/RcBEevPx9bqyY9
F5Mumz+Iedmk58JdY1AhEzdS/1yUPk362IV5hfrnYa5w8ruLK6mk5yFkvVo3
ubac+udB1mhnZlREfjIefqrUK7f1aaH6fNz/59Ri/eA10vPxbrbMXj6dSXo+
ytKT3xQK6DyR8fF8quiRwF/9/YQhcIs/3F/WRfsfhv1fdMpTOrpJHwapd/TO
X/6so/phEKZJJQeX1OepAPOcBf9dhQWkF0AZyctUvmil/gUwiw+/K0mlecsE
+LY4d/vYW/X/Gw7TkbYybkfj0L+7euqt
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lAswXGcUxzfJEGmZmJJEM0gIYZQ0qEcI/t7ikV37sjphorqlSggxQawu
GrWDhPGKR1rxfjUeG0Q6HeuRRJqiUtlG0kbMZA1VkWxbwsik7ezZO3Pnzrm/
8/+f73zn3s/kk0S2cDuDwfj0v/v/p+p66WH19d7ZyfVVD3oBUd+V+fGfFUOq
UAsTgnPZ7Z6/EteFfaTv26JbE8T1YTcm8XXsaqHYAH76DRVxiQ8o3xD7tPrz
/z57n/hBDBf07GZYfE/cFGZVzvIo837iZrD6w8BvIK2O4sOIVipmc+puU74l
2BtMwxL2KHErfJDyTEs6r/azRoYF5zP5+8PEj6D58UxbR9gA8aOw0Di/lScv
IG4LJT92p7fXNeJ2sPWSDNcGNRC3R8KBOFG5ZxXFH0GYEFwh/Eud7wCdDL3k
1sQM4o5wdnGJT8ovJ+4EZuvjV7nB9sSdUXDOamr8PSnFx5CtKx+znR6kfBdk
xqa/8CsdIO6KjRiDD5uO9xM/DnvdANddog7ibohws2fF1JVS7A6FiSJkbfUG
5XtgrvtH7XGGjDhQk3dWmxE+puJiIGmt68voXvV+emLZ2EHZZ0P7KfZExRnu
vUt514l7YXxEadXnVEncC+brGTGi3DSq541avfTX4sUmVb7YG/fMg/ca3Wki
7oOefsvNrtYy4j7oddkUpaSXEPfFdHtJ3Y6vssjfF/qGtr+7C5qpvh+6h5jV
lk0NxP1Qmbx/o+ahej7+2Gi8rdtS3E7cH1uDS288U9qJB2Cm66ZOyza1PgCL
31wtiRGq/U/g6Y6xnESdauInoImp7NPNGbS+QOSm5izrPKN64kC4Rto0rcXV
Ew+CU97I0mvrSuJByJp9MrI7UUT+wQhjrjxwPFNB/sG43ll86PM9OcRD0Oe2
sJB3NI54CGpuRF10nigi/5NIuKUxs7bVSf4nccTGOM7wmJQ4E9qD1tmaLJqX
mImlUYMnFzSbibNQfvUlwyFCouJgoXVVs9r0cBvls8BKly7Hv6LvR8ZC/kCO
mVTYQ+sLhWh26LTbBfJDKE6dTzPlMi6TPhSX9TOU6WX1qlgWioCqkGKjOz1U
nw1TEUtiutpL9dngR0Wk/mZ4k/plo2KUn7myReeBjI3YR+9Mmvh0kJ4DO4d9
DU7u1D842CrYNnfJk/zFHNzd89C4N4LmI+PgkGXWAYUvj/RcBEevPx9bqyY9
F5Mumz+Iedmk58JdY1AhEzdS/1yUPk362IV5hfrnYa5w8ruLK6mk5yFkvVo3
ubac+udB1mhnZlREfjIefqrUK7f1aaH6fNz/59Ri/eA10vPxbrbMXj6dSXo+
ytKT3xQK6DyR8fF8quiRwF/9/YQhcIs/3F/WRfsfhv1fdMpTOrpJHwapd/TO
X/6so/phEKZJJQeX1OepAPOcBf9dhQWkF0AZyctUvmil/gUwiw+/K0mlecsE
+LY4d/vYW/X/Gw7TkbYybkfj0L+7euqt
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{518.6666666666658, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.61752016050531*^9}]
}, {2}]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Long-range correlated sequences", "Subsection",
 CellChangeTimes->{{3.617518311688856*^9, 3.6175183192021227`*^9}, {
  3.617527855379776*^9, 3.6175278561555443`*^9}}],

Cell[TextData[{
 "When every element in the sequence depends not only on the previous ",
 StyleBox["n",
  FontSlant->"Italic"],
 " elements, but on ",
 StyleBox["all",
  FontSlant->"Italic"],
 " of them, we get in the peculiar situation where the sequence is random, \
but the correlations become long-range. There are of course infinite ways to \
construct such a sequence, so we will concentrate on a \"simple\" way to \
build a random sequence with arbitrary ",
 StyleBox["long",
  FontSlant->"Italic"],
 " correlations. To do so we first rewrite\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["s", "i"], "=", 
    RowBox[{
     RowBox[{"\[Phi]", "\[CenterDot]", 
      SubscriptBox["s", 
       RowBox[{"i", "-", "1"}]]}], "+", "\[Sigma]"}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " as ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"(", 
      RowBox[{"1", "-", 
       RowBox[{"\[Phi]", "\[CenterDot]", "B"}]}], ")"}], 
     SubscriptBox["s", "i"]}], "=", "\[Sigma]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " where ",
 StyleBox["B",
  FontSlant->"Italic"],
 " is the \"back shift operator\" such as ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"B", " ", 
     SubscriptBox["s", "i"]}], "=", 
    SubscriptBox["s", 
     RowBox[{"i", "-", "1"}]]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox["B", "2"], 
     SubscriptBox["s", "i"]}], "=", 
    SubscriptBox["s", 
     RowBox[{"i", "-", "2"}]]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " etc. Formula such as ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"\[Phi]", "\[CenterDot]", "B"}]}], ")"}], "n"], 
     SubscriptBox["s", "i"]}], "=", "\[Sigma]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 ", where ",
 StyleBox["n",
  FontSlant->"Italic"],
 " is a positive integer, generate short-correlated sequences where each \
element depends on the previous ",
 StyleBox["n",
  FontSlant->"Italic"],
 " elements.\nIf, for simplicity, we set \[Phi]=1 and consider the formula ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "B"}], ")"}], "\[Alpha]"], 
     SubscriptBox["s", "i"]}], "=", "\[Sigma]"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " for a generic real \[Alpha] we can understand the meaning of a fractional \
power of ",
 StyleBox["B",
  FontSlant->"Italic"],
 " rewriting it as\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{"1", "-", "B"}], ")"}], "\[Alpha]"], 
     SubscriptBox["s", "i"]}], "=", 
    RowBox[{
     RowBox[{"\[Sigma]", "  ", "\[Rule]", " ", 
      RowBox[{
       SubsuperscriptBox["\[Sum]", 
        RowBox[{"j", "=", "0"}], "i"], 
       RowBox[{
        RowBox[{"(", GridBox[{
           {"\[Alpha]"},
           {"j"}
          }], ")"}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"-", "B"}], ")"}], "j"], 
        SubscriptBox["s", "i"]}]}]}], "=", 
     RowBox[{
      RowBox[{"\[Sigma]", "  ", "\[Rule]", 
       SubscriptBox["s", "i"]}], "=", 
      RowBox[{
       SubsuperscriptBox["\[Sum]", 
        RowBox[{"j", "=", "1"}], "i"], " ", 
       RowBox[{
        RowBox[{"(", GridBox[{
           {"\[Alpha]"},
           {"j"}
          }], ")"}], 
        SuperscriptBox[
         RowBox[{"(", 
          RowBox[{"-", "1"}], ")"}], 
         RowBox[{"j", "+", "1"}]], 
        SubscriptBox["s", 
         RowBox[{"i", "-", "j"}]]}]}]}]}]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 "\nwhere ",
 Cell[BoxData[
  FormBox[
   RowBox[{"(", GridBox[{
      {"\[Alpha]"},
      {"j"}
     }], ")"}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " is the binomial coefficient. Notice that, whenever \[Alpha] is not an \
integer the binomial coefficient is non-zero for all ",
 StyleBox["j",
  FontSlant->"Italic"],
 ". In particular the coefficients ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"(", GridBox[{
       {"\[Alpha]"},
       {"j"}
      }], ")"}], 
    SuperscriptBox[
     RowBox[{"(", 
      RowBox[{"-", "1"}], ")"}], 
     RowBox[{"j", "+", "1"}]]}], TraditionalForm]],
  FormatType->"TraditionalForm"],
 " decay polinomially to zero as a function of ",
 StyleBox["j.",
  FontSlant->"Italic"]
}], "Text",
 CellChangeTimes->{{3.6175277235246773`*^9, 3.617527791567937*^9}, {
  3.6175278971806803`*^9, 3.617527938563395*^9}, {3.617528002965477*^9, 
  3.6175280853470173`*^9}, {3.6175281757549*^9, 3.617528191359899*^9}, {
  3.617528299634444*^9, 3.61752846280053*^9}, {3.617528796490089*^9, 
  3.617529027713628*^9}, {3.617529066450327*^9, 3.617529481079191*^9}, {
  3.617529609775688*^9, 3.617529625530868*^9}, {3.6175297941672087`*^9, 
  3.6175298537973547`*^9}, {3.6175299144614267`*^9, 3.617529968604311*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{
      SuperscriptBox[
       RowBox[{"(", 
        RowBox[{"-", "1"}], ")"}], 
       RowBox[{"i", "+", "1"}]], 
      RowBox[{"Binomial", "[", 
       RowBox[{"0.25", ",", "i"}], "]"}]}], ",", 
     RowBox[{"{", 
      RowBox[{"i", ",", "1", ",", "1000"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", 
  RowBox[{
   RowBox[{"ListLogLogPlot", "[", 
    RowBox[{"s", ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}], ",", 
     RowBox[{"FrameLabel", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"\"\<j\>\"", ",", "\"\<(\!\(\*GridBox[{
{\[Alpha]},
{j}
}]\))(-1\!\(\*SuperscriptBox[\()\), \(j + 1\)]\)\>\""}], "}"}]}], ",", 
     RowBox[{"LabelStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
     RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ListLogLogPlot", "[", 
    RowBox[{"s", ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
     RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"PlotLabel", "\[Rule]", "\"\<\[Alpha]=0.25\>\""}]}], 
  "\[IndentingNewLine]", "]"}]}], "Input"],

Cell[BoxData[
 GraphicsBox[{{{{}, {{}, {}, 
      {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1e3k8VO8Xv0SyZJ/l3rHM3DtabBUViRyFpCIkKlmSFhIVKZVQohJJWkgp
RSRlSWg7WUr1QSVLm0KhTahEC7/n+/v184/X+3Vnnuc857zf73PuzB3RqiBn
P0kJCYnu0RIS//v///96Zv4anmM4cOfr//3fadlpuyqq9askyo++HP4xuc/S
uFSj64alDP6/6wOWTeXHDQWWcmh86MtPKxyytFt6O3hevAJKCnV/yV/6Y6ny
eEFXqb8iui03yt/MjFjOW6OMKX+VcMulWZaF5yRAqXFVR1We8r/1R4Gv4+Sb
HTYqyHW9dqMgQBIOJcCUjDoVXGiy+3qH4Wi4WRDOG2+virtON9zkto2GsJMn
dB+Wq6JT/FQ9qRgpuB46oduRUcPsG83chxrScMAnx5gTrYbadotmcnOlQSPF
pcTwpdq/+McAw6v5HW6ojuG7f90NyB0DNrUZRVd2quO+pACzHdoysEQtUNv3
njrqF0mNmZEgA2li2R5VBQ4mdWzZMeenDESkv1k8yYGDBflBRw1XjIVBp/FP
JA5xsKbaIiykfCzcbBVadtVwsLfoyd9dHFlYKTNjSFuSi0P6R3Zmb5CFFEd+
yXtT7r/8ycLzrvregEAu1tK9H48qy8G+Nb0Kb89w8fDe0aVvVsqBU6bbXP/H
XGTtjzUtvygHmUrnfA1HuKg9XPvItFcOdgxGbFmoz8O0JvmhrOny8GfaG6M2
Nx4u10uyq9smD/ejPQ6MieZhQE3p7YYyeUhulepuyOXhk9LG7y2D8uAmqDvk
+ZSHA+PKov5MV4BF62yflQ3ysPqbksvyTQqg9CjR96cm/199FSDRc+HqCXP4
eOu+Wc/EDgVQ+1qf4+7Hx4tWldX3qHEQcPVS04lYPjaNi1s35DAO9tls3fn9
Ih/HbTaa1RA9DkzVD5iEPeCjQ16Cjd+1cbD7pMt9vQ98NLAwXHKncxzYbrrC
aoylUOWzOreXqwhupysSncZTOHfJnxnStopwZUdW7rO5FJ5/kLlVPkQR9I4Y
R1z2pnDDnMO3FM8qAndIN75jJ4UlvYcn07WK4OPy/fmuExSG3lhsbjqoCBNX
a/2OLqL+8VMJ5K48oIdqKbwiyLv+dIESzGzTkursonBEwmnEO0QJzjE9kxxH
0Tg/Jz9X55QSqAQfvjyTpvGSObNuYqUSbL8r9Ms1olFBrSIs+IMSbOnSbrtg
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
t6yDAw2Vp50VC06z+Iax7ih3pGHceldhyhlyvlH1ZhOcCJ/yDdu2ZbAYnfte
OdmZhj/afCePs2S++NXhN+xC+DN5QbDlOdKfAnXM1rvSsEBplCWTSfxdUzqh
YSnhU9nmW1LnyTxQ/drHwp0Gt48tnzoJXnhHtiRrGQ33RBse1lxgUVm644DS
CnK+c6uX5WaR+dKo8m2YBw0vQ36dOJjN/nu+l4bMdX77N1xkcdOLP8rzvGiY
ovhad1EOi9XXZD5f9iZ8u31il0Euiwtm7ZyvvoqGByfqo8ZdYnGpceGkcF/C
v6hSky8EL5YbdejNahrqRAfO/JdH/ObJnS3Wa2hI+Bxedukyi4azbVovrqXh
NH035kA+iw15Xf8prKdh2eUjUuuvED1p/bUM9qeh2V9nxryrxM/MX5o0BNBg
8y6f1ilgMdu1uXh6IA0Tt6wulCwk+vS2vX58Iw2FM3b8fUPwpD87LYeCaJCn
J/65WcTi96D6Rcs30ZD2+Ez+yWJyPS+pvXwzDctbuJyt11gMt+cN0yE0UFvv
TnYuIf09oSgjPJSc70bDsMF14n9ryh4+30rDo71R0bKlpJ7rd+w03UbD9G3D
5e8I7nu9oOTYdlIv6YiLd8pY7CrYue17OA0v1hkvSC0n/TPKq9JpJw1eeU6Z
ITcIv1JsjufvoiHwrHyBw03Cv/bd3+V20/C+Ozlk4i2yv4LXyzWRNCh81egZ
dZvMf77GCyuiSP6/tGi+JHh518J5mnto0PwwNLr4DvFrm9//he2l4W9xQUY8
sljw8tDrJzE0SPZP/b76Los+JS7b9WJp2KWUN2xewWL6kbSMvXE03JjnhOqV
5P7idZHL6/3EH7OcZ34meG7JxyPTD9LgI922vrKKzBefDnkeiqehXs7AObWa
zFMjH0veHaLhsOHa/uB75Hxix1OzEmnoKrljP+8+8R8rGaUjh2nIKl+zQrOG
xbNfvZS6k2gI1owXfyO4MPxCukUyDT9TvLJqHhC/bGfLjxylYXauclv6Qxbv
vRrv15VCQ0tB3bPNjwg/Hg+dnnWcBp2nNVHz/mOx9VXX2sQTNKRIGXYLakn+
G2Zh+0niB2oGY3sJ/m82XJyeRoPjye9tlXUszvOwFMadIn4iWRR6vJ7sL9oz
8UU6DTcTj1X6P2bRZJbrXb0zNNDOtY8snhC+Kox83JlBzqsXk6D8lMxHVx5c
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
X3u/3yb4/wCtohkf
        "]]}}, {}}, {}}, {{{}, {{}, 
      {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1e3k8VO8Xv0SyZJ/l3rHM3DtabBUViRyFpCIkKlmSFhIVKZVQohJJWkgp
RSRlSWg7WUr1QSVLm0KhTahEC7/n+/v184/X+3Vnnuc857zf73PuzB3RqiBn
P0kJCYnu0RIS//v///96Zv4anmM4cOfr//3fadlpuyqq9askyo++HP4xuc/S
uFSj64alDP6/6wOWTeXHDQWWcmh86MtPKxyytFt6O3hevAJKCnV/yV/6Y6ny
eEFXqb8iui03yt/MjFjOW6OMKX+VcMulWZaF5yRAqXFVR1We8r/1R4Gv4+Sb
HTYqyHW9dqMgQBIOJcCUjDoVXGiy+3qH4Wi4WRDOG2+virtON9zkto2GsJMn
dB+Wq6JT/FQ9qRgpuB46oduRUcPsG83chxrScMAnx5gTrYbadotmcnOlQSPF
pcTwpdq/+McAw6v5HW6ojuG7f90NyB0DNrUZRVd2quO+pACzHdoysEQtUNv3
njrqF0mNmZEgA2li2R5VBQ4mdWzZMeenDESkv1k8yYGDBflBRw1XjIVBp/FP
JA5xsKbaIiykfCzcbBVadtVwsLfoyd9dHFlYKTNjSFuSi0P6R3Zmb5CFFEd+
yXtT7r/8ycLzrvregEAu1tK9H48qy8G+Nb0Kb89w8fDe0aVvVsqBU6bbXP/H
XGTtjzUtvygHmUrnfA1HuKg9XPvItFcOdgxGbFmoz8O0JvmhrOny8GfaG6M2
Nx4u10uyq9smD/ejPQ6MieZhQE3p7YYyeUhulepuyOXhk9LG7y2D8uAmqDvk
+ZSHA+PKov5MV4BF62yflQ3ysPqbksvyTQqg9CjR96cm/199FSDRc+HqCXP4
eOu+Wc/EDgVQ+1qf4+7Hx4tWldX3qHEQcPVS04lYPjaNi1s35DAO9tls3fn9
Ih/HbTaa1RA9DkzVD5iEPeCjQ16Cjd+1cbD7pMt9vQ98NLAwXHKncxzYbrrC
aoylUOWzOreXqwhupysSncZTOHfJnxnStopwZUdW7rO5FJ5/kLlVPkQR9I4Y
R1z2pnDDnMO3FM8qAndIN75jJ4UlvYcn07WK4OPy/fmuExSG3lhsbjqoCBNX
a/2OLqL+8VMJ5K48oIdqKbwiyLv+dIESzGzTkursonBEwmnEO0QJzjE9kxxH
0Tg/Jz9X55QSqAQfvjyTpvGSObNuYqUSbL8r9Ms1olFBrSIs+IMSbOnSbrtg
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
t6yDAw2Vp50VC06z+Iax7ih3pGHceldhyhlyvlH1ZhOcCJ/yDdu2ZbAYnfte
OdmZhj/afCePs2S++NXhN+xC+DN5QbDlOdKfAnXM1rvSsEBplCWTSfxdUzqh
YSnhU9nmW1LnyTxQ/drHwp0Gt48tnzoJXnhHtiRrGQ33RBse1lxgUVm644DS
CnK+c6uX5WaR+dKo8m2YBw0vQ36dOJjN/nu+l4bMdX77N1xkcdOLP8rzvGiY
ovhad1EOi9XXZD5f9iZ8u31il0Euiwtm7ZyvvoqGByfqo8ZdYnGpceGkcF/C
v6hSky8EL5YbdejNahrqRAfO/JdH/ObJnS3Wa2hI+Bxedukyi4azbVovrqXh
NH035kA+iw15Xf8prKdh2eUjUuuvED1p/bUM9qeh2V9nxryrxM/MX5o0BNBg
8y6f1ilgMdu1uXh6IA0Tt6wulCwk+vS2vX58Iw2FM3b8fUPwpD87LYeCaJCn
J/65WcTi96D6Rcs30ZD2+Ez+yWJyPS+pvXwzDctbuJyt11gMt+cN0yE0UFvv
TnYuIf09oSgjPJSc70bDsMF14n9ryh4+30rDo71R0bKlpJ7rd+w03UbD9G3D
5e8I7nu9oOTYdlIv6YiLd8pY7CrYue17OA0v1hkvSC0n/TPKq9JpJw1eeU6Z
ITcIv1JsjufvoiHwrHyBw03Cv/bd3+V20/C+Ozlk4i2yv4LXyzWRNCh81egZ
dZvMf77GCyuiSP6/tGi+JHh518J5mnto0PwwNLr4DvFrm9//he2l4W9xQUY8
sljw8tDrJzE0SPZP/b76Los+JS7b9WJp2KWUN2xewWL6kbSMvXE03JjnhOqV
5P7idZHL6/3EH7OcZ34meG7JxyPTD9LgI922vrKKzBefDnkeiqehXs7AObWa
zFMjH0veHaLhsOHa/uB75Hxix1OzEmnoKrljP+8+8R8rGaUjh2nIKl+zQrOG
xbNfvZS6k2gI1owXfyO4MPxCukUyDT9TvLJqHhC/bGfLjxylYXauclv6Qxbv
vRrv15VCQ0tB3bPNjwg/Hg+dnnWcBp2nNVHz/mOx9VXX2sQTNKRIGXYLakn+
G2Zh+0niB2oGY3sJ/m82XJyeRoPjye9tlXUszvOwFMadIn4iWRR6vJ7sL9oz
8UU6DTcTj1X6P2bRZJbrXb0zNNDOtY8snhC+Kox83JlBzqsXk6D8lMxHVx5c
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
X3u/3yb4/wCtohkf
        "]]}, {}}, {}}, {}}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesOrigin->{0, -10.224113122208271`},
  CoordinatesToolOptions:>{"DisplayFunction" -> ({
      Exp[
       Part[#, 1]], 
      Exp[
       Part[#, 2]]}& ), "CopiedValueFunction" -> ({
      Exp[
       Part[#, 1]], 
      Exp[
       Part[#, 2]]}& )},
  Frame->True,
  FrameLabel->{
    FormBox["\"j\"", TraditionalForm], 
    FormBox[
    "\"(\\!\\(\\*GridBox[{\\n  {\[Alpha]},\\n  {j}\\n \
}]\\))(-1\\!\\(\\*SuperscriptBox[\\()\\), \\(j + 1\\)]\\)\"", 
     TraditionalForm]},
  FrameTicks->{{{{-9.210340371976182, 
       FormBox[
        TemplateBox[{"\[Times]", "\"\[Times]\"", "1", 
          TemplateBox[{"10", 
            RowBox[{"-", "4"}]}, "Superscript", SyntaxForm -> 
           SuperscriptBox]}, "RowWithSeparators"], 
        TraditionalForm]}, {-7.600902459542082, 
       FormBox[
        TemplateBox[{"\[Times]", "\"\[Times]\"", "5", 
          TemplateBox[{"10", 
            RowBox[{"-", "4"}]}, "Superscript", SyntaxForm -> 
           SuperscriptBox]}, "RowWithSeparators"], 
        TraditionalForm]}, {-6.907755278982137, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.001\"", 0.001, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-5.298317366548036, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.005\"", 0.005, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-4.605170185988092, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.010\"", 0.01, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-2.995732273553991, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.050\"", 0.05, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-2.302585092994046, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.100\"", 0.1, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-0.6931471805599453, 
       FormBox[
        TagBox[
         InterpretationBox["\"0.500\"", 0.5, AutoDelete -> True], 
         NumberForm[#, {
           DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
        TraditionalForm]}, {-8.517193191416238, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-8.111728083308073, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.824046010856292, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.418580902748128, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.264430222920869, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.1308988302963465`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.013115794639964, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-6.214608098422191, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.809142990314028, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.521460917862246, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.115995809754082, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.961845129926823, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.8283137373023015`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.710530701645918, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.912023005428146, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.506557897319982, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.2188758248682006`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.8134107167600364`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.6592600369327783`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.5257286443082556`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.4079456086518722`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-1.6094379124341003`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-1.203972804325936, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-0.916290731874155, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}}, {{-9.210340371976182, 
       FormBox["\"\"", TraditionalForm]}, {-7.600902459542082, 
       FormBox["\"\"", TraditionalForm]}, {-6.907755278982137, 
       FormBox["\"\"", TraditionalForm]}, {-5.298317366548036, 
       FormBox["\"\"", TraditionalForm]}, {-4.605170185988092, 
       FormBox["\"\"", TraditionalForm]}, {-2.995732273553991, 
       FormBox["\"\"", TraditionalForm]}, {-2.302585092994046, 
       FormBox["\"\"", TraditionalForm]}, {-0.6931471805599453, 
       FormBox["\"\"", TraditionalForm]}, {-8.517193191416238, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-8.111728083308073, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.824046010856292, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.418580902748128, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.264430222920869, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.1308988302963465`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-7.013115794639964, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-6.214608098422191, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.809142990314028, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.521460917862246, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-5.115995809754082, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.961845129926823, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.8283137373023015`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-4.710530701645918, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.912023005428146, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.506557897319982, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-3.2188758248682006`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.8134107167600364`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.6592600369327783`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.5257286443082556`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-2.4079456086518722`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-1.6094379124341003`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-1.203972804325936, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {-0.916290731874155, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}}}, {{{0., 
       FormBox["1", TraditionalForm]}, {1.6094379124341003`, 
       FormBox["5", TraditionalForm]}, {2.302585092994046, 
       FormBox["10", TraditionalForm]}, {3.912023005428146, 
       FormBox["50", TraditionalForm]}, {4.605170185988092, 
       FormBox["100", TraditionalForm]}, {6.214608098422191, 
       FormBox["500", TraditionalForm]}, {6.907755278982137, 
       FormBox["1000", TraditionalForm]}, {8.517193191416238, 
       FormBox["5000", TraditionalForm]}, {0.6931471805599453, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.0986122886681098`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.3862943611198906`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.791759469228055, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.9459101490553132`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.0794415416798357`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.1972245773362196`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.995732273553991, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {3.4011973816621555`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {3.6888794541139363`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.0943445622221, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.248495242049359, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.382026634673881, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.499809670330265, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.298317366548036, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.703782474656201, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.991464547107982, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.396929655216146, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.551080335043404, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.684611727667927, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.802394763324311, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {7.600902459542082, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {8.006367567650246, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {8.294049640102028, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}}, {{0., 
       FormBox["\"\"", TraditionalForm]}, {1.6094379124341003`, 
       FormBox["\"\"", TraditionalForm]}, {2.302585092994046, 
       FormBox["\"\"", TraditionalForm]}, {3.912023005428146, 
       FormBox["\"\"", TraditionalForm]}, {4.605170185988092, 
       FormBox["\"\"", TraditionalForm]}, {6.214608098422191, 
       FormBox["\"\"", TraditionalForm]}, {6.907755278982137, 
       FormBox["\"\"", TraditionalForm]}, {8.517193191416238, 
       FormBox["\"\"", TraditionalForm]}, {0.6931471805599453, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.0986122886681098`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.3862943611198906`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.791759469228055, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {1.9459101490553132`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.0794415416798357`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.1972245773362196`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {2.995732273553991, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {3.4011973816621555`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {3.6888794541139363`, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.0943445622221, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.248495242049359, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.382026634673881, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {4.499809670330265, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.298317366548036, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.703782474656201, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {5.991464547107982, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.396929655216146, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.551080335043404, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.684611727667927, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {6.802394763324311, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {7.600902459542082, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {8.006367567650246, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}, {8.294049640102028, 
       FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
        Thickness[0.001]}}}}},
  GridLines->{None, None},
  LabelStyle->{Medium, Bold},
  Method->{},
  PlotLabel->FormBox["\"\[Alpha]=0.25\"", TraditionalForm],
  PlotRange->{{
    0, 6.907755278982137}, {-10.224113122208271`, -1.3862943611198904`}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0.13815510557964275`, 0.13815510557964275`}, {
   0.1767563752217676, 0.1767563752217676}},
  Ticks->{{{0., 
      FormBox["1", TraditionalForm]}, {1.6094379124341003`, 
      FormBox["5", TraditionalForm]}, {2.302585092994046, 
      FormBox["10", TraditionalForm]}, {3.912023005428146, 
      FormBox["50", TraditionalForm]}, {4.605170185988092, 
      FormBox["100", TraditionalForm]}, {6.214608098422191, 
      FormBox["500", TraditionalForm]}, {6.907755278982137, 
      FormBox["1000", TraditionalForm]}, {8.517193191416238, 
      FormBox["5000", TraditionalForm]}, {0.6931471805599453, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {1.0986122886681098`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {1.3862943611198906`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {1.791759469228055, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {1.9459101490553132`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {2.0794415416798357`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {2.1972245773362196`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {2.995732273553991, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {3.4011973816621555`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {3.6888794541139363`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {4.0943445622221, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {4.248495242049359, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {4.382026634673881, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {4.499809670330265, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {5.298317366548036, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {5.703782474656201, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {5.991464547107982, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {6.396929655216146, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {6.551080335043404, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {6.684611727667927, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {6.802394763324311, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {7.600902459542082, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {8.006367567650246, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {8.294049640102028, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}}, {{-9.210340371976182, 
      FormBox[
       TemplateBox[{"\[Times]", "\"\[Times]\"", "1", 
         TemplateBox[{"10", 
           RowBox[{"-", "4"}]}, "Superscript", SyntaxForm -> SuperscriptBox]},
         "RowWithSeparators"], TraditionalForm]}, {-7.600902459542082, 
      FormBox[
       TemplateBox[{"\[Times]", "\"\[Times]\"", "5", 
         TemplateBox[{"10", 
           RowBox[{"-", "4"}]}, "Superscript", SyntaxForm -> SuperscriptBox]},
         "RowWithSeparators"], TraditionalForm]}, {-6.907755278982137, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.001\"", 0.001, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-5.298317366548036, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.005\"", 0.005, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-4.605170185988092, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.010\"", 0.01, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-2.995732273553991, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.050\"", 0.05, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-2.302585092994046, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.100\"", 0.1, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-0.6931471805599453, 
      FormBox[
       TagBox[
        InterpretationBox["\"0.500\"", 0.5, AutoDelete -> True], 
        NumberForm[#, {
          DirectedInfinity[1], 3}, NumberPadding -> {"", "0"}]& ], 
       TraditionalForm]}, {-8.517193191416238, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-8.111728083308073, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-7.824046010856292, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-7.418580902748128, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-7.264430222920869, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-7.1308988302963465`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-7.013115794639964, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-6.214608098422191, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-5.809142990314028, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-5.521460917862246, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-5.115995809754082, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-4.961845129926823, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-4.8283137373023015`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-4.710530701645918, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-3.912023005428146, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-3.506557897319982, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-3.2188758248682006`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-2.8134107167600364`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-2.6592600369327783`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-2.5257286443082556`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-2.4079456086518722`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-1.6094379124341003`, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-1.203972804325936, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}, {-0.916290731874155, 
      FormBox["\"\"", TraditionalForm], {0.00375, 0.}, {
       Thickness[0.001]}}}}]], "Output",
 CellChangeTimes->{3.617530135036298*^9}]
}, Open  ]],

Cell["\<\
If we look at a sequence generated with this rule it might not look very \
\"correlated\" and the correlations appear to decay very rapidly.\
\>", "Text",
 CellChangeTimes->{{3.617530243632586*^9, 3.61753029711207*^9}, 
   3.617530331304988*^9, 3.617530518283153*^9, {3.6175306839265547`*^9, 
   3.617530703856585*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "3"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Alpha]", "=", "0.25"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Sigma]", "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"RandomFunction", "[", 
      RowBox[{
       RowBox[{"FARIMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[Alpha]", ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "dim"}], "}"}]}], "]"}], "[", "\"\<States\>\"", 
     "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"CorrelationFunction", "[", 
      RowBox[{
       RowBox[{"FARIMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[Alpha]", ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", "h"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"h", ",", "0", ",", "dim"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"s", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{
        RowBox[{"c", "[", 
         RowBox[{"[", 
          RowBox[{"1", ";;", "100"}], "]"}], "]"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", " ", 
      RowBox[{"PlotRange", "\[Rule]", 
       RowBox[{"{", 
        RowBox[{"0", ",", "1"}], "}"}]}]}], "\[IndentingNewLine]", "]"}]}], 
   "\[IndentingNewLine]", "}"}], "]"}]}], "Input",
 CellChangeTimes->{{3.617530626686352*^9, 3.6175306321279573`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lA0w1HkYx1fhzOVMOY2QrmTy0pW3vJ3FV16Sl+yuZTGEliHqzpjuMOgW
aY6E1ltXTUbcqeNwjEpu8vdyutAKGfTi/c5Zl/fTKefe9tmd2dn57uf5PM/v
t//fb/ed+owXuYXFYkX8+/7vU/ZadHQ+bB3Of7/Nkb5A3c9REoPgLsoqOP/Y
rT+us7tFlreD51T8NMysj7gGxJJ7Oak+y8R3wUD9polV9RDl3Zjb88WmHbuT
6vcipSHkzMIWeb0eNsot86p5Sows66MvWUfhXL6U+AEkts7t2m9UQ9kQ6Ypp
T6rP1lM2RpE4a+AR5wX1/xipjZXszdFp4ofR3JRvHW71hrIpVNMNnklC31E2
Q8aQQ89a+Tj55liPkWaJr6wSt0BNXs7usQgWZPkIooTt8+e0hqneEqbKU47K
mhuUrTC6ss3g9Idybg3bO9zywh3t1M8GS6LAQ3fDeijb4pae+cao8irVf4IE
15Lmne+9Im6HYk9W4UHeO+JsVHhvjdL6so24PVqLwZjpy/s5QDivWfxEMEL1
jmDEqjGcWvn+AJUCa9732a2yehGw6FJiqtS6QNwJeY26X9ckvCTuBC+d2a5B
6bfEj2LE7kzR8A16/qKjkKbEva04/ydxZ4z9mHShQmWcfGdsGmhLsjflz9sF
btOVa5uZr4m7IE53a9aKjph8V5hHFWoLO+apvys4Hp8L2auXyXfDZK0wVtpO
50PkBvukackDVZrHOgZBoHVseNYs+cew0n9/NfLvSeLuyDXtEbNPT5DvDnXr
21p94gmafxwtX+UUGE4PED8ObfNDVaOpNcQ9wBEHqow+qiPuAR6/UqUnQn4/
PLHcvciKXm+n+Z6w5Q7pfafTQdwLQdcLkpW65PO9IHkcmPGwcYq4Nzov5DU5
Rg4T98Y3KfyEtQD5eT0B0xK/20KTMup/AusuHdql4/Lz7YMPdFtez7H/IN8H
D1zsrocZ/Urr5yDxo2C28ateGQcHIXsXMrZ7LlE9B89G5gfrtqkx/2eGA7X+
G6dGp6Tkc6Ft9kPp8t0Z8rm4WPX8jVfBCPlcRGgkeP2eSfMYLiTsl01lwjXy
eejNtknOYpZlGTxUh84U2j/tJJ8HfubExexOOq8MD2mXfEKKriyR74v85uG2
I7xN8n2R2PGi5mpzM/m+cFd4Ht8spfPD+EK92kBoGDZHvw8fZeG3mhovSWj9
fFjsNLr3UxzNE/HhoZE8ezJ3jHw+ykudohV65efbD9fGu38LFUzSfD+cbCio
ityxSL4f3hrnL5hx6f4zfojfE3iwbWCafH9YRtT/laY4Q74/Po2NSU65Sv1E
/ihKarPIDaL9Mv6Y1r+mmHf5IfkCrLqHKPc2UX8IYFd71rYteI58Adwzg+rH
neh5MgKYVCf+EqtG62MFYHCfWFPRgfaLAOSn3+FVNdD/kygAKVOseFRRPyYA
xfk+N+/X031lBWL/QJLNxei1ln8AJan8Hw==
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lA0w1HkYx1fhzOVMOY2QrmTy0pW3vJ3FV16Sl+yuZTGEliHqzpjuMOgW
aY6E1ltXTUbcqeNwjEpu8vdyutAKGfTi/c5Zl/fTKefe9tmd2dn57uf5PM/v
t//fb/ed+owXuYXFYkX8+/7vU/ZadHQ+bB3Of7/Nkb5A3c9REoPgLsoqOP/Y
rT+us7tFlreD51T8NMysj7gGxJJ7Oak+y8R3wUD9polV9RDl3Zjb88WmHbuT
6vcipSHkzMIWeb0eNsot86p5Sows66MvWUfhXL6U+AEkts7t2m9UQ9kQ6Ypp
T6rP1lM2RpE4a+AR5wX1/xipjZXszdFp4ofR3JRvHW71hrIpVNMNnklC31E2
Q8aQQ89a+Tj55liPkWaJr6wSt0BNXs7usQgWZPkIooTt8+e0hqneEqbKU47K
mhuUrTC6ss3g9Idybg3bO9zywh3t1M8GS6LAQ3fDeijb4pae+cao8irVf4IE
15Lmne+9Im6HYk9W4UHeO+JsVHhvjdL6so24PVqLwZjpy/s5QDivWfxEMEL1
jmDEqjGcWvn+AJUCa9732a2yehGw6FJiqtS6QNwJeY26X9ckvCTuBC+d2a5B
6bfEj2LE7kzR8A16/qKjkKbEva04/ydxZ4z9mHShQmWcfGdsGmhLsjflz9sF
btOVa5uZr4m7IE53a9aKjph8V5hHFWoLO+apvys4Hp8L2auXyXfDZK0wVtpO
50PkBvukackDVZrHOgZBoHVseNYs+cew0n9/NfLvSeLuyDXtEbNPT5DvDnXr
21p94gmafxwtX+UUGE4PED8ObfNDVaOpNcQ9wBEHqow+qiPuAR6/UqUnQn4/
PLHcvciKXm+n+Z6w5Q7pfafTQdwLQdcLkpW65PO9IHkcmPGwcYq4Nzov5DU5
Rg4T98Y3KfyEtQD5eT0B0xK/20KTMup/AusuHdql4/Lz7YMPdFtez7H/IN8H
D1zsrocZ/Urr5yDxo2C28ateGQcHIXsXMrZ7LlE9B89G5gfrtqkx/2eGA7X+
G6dGp6Tkc6Ft9kPp8t0Z8rm4WPX8jVfBCPlcRGgkeP2eSfMYLiTsl01lwjXy
eejNtknOYpZlGTxUh84U2j/tJJ8HfubExexOOq8MD2mXfEKKriyR74v85uG2
I7xN8n2R2PGi5mpzM/m+cFd4Ht8spfPD+EK92kBoGDZHvw8fZeG3mhovSWj9
fFjsNLr3UxzNE/HhoZE8ezJ3jHw+ykudohV65efbD9fGu38LFUzSfD+cbCio
ityxSL4f3hrnL5hx6f4zfojfE3iwbWCafH9YRtT/laY4Q74/Po2NSU65Sv1E
/ihKarPIDaL9Mv6Y1r+mmHf5IfkCrLqHKPc2UX8IYFd71rYteI58Adwzg+rH
neh5MgKYVCf+EqtG62MFYHCfWFPRgfaLAOSn3+FVNdD/kygAKVOseFRRPyYA
xfk+N+/X031lBWL/QJLNxei1ln8AJan8Hw==
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJxV0XlQ1GUcx/GfQIhHCEKNcsSSDMOAGayAiMB+OFpArt1lLwQV4xgjRwUJ
Jct+jGJriFZIrBzNoHEstIQCLhQ4y8g2HphDiEWDB1PKDI0cEaKLYVTf54+e
mWeeec17Pn897m/vk2VZcByXuXj/ef87U6L/vxwU/54hsg1qxgq/HCv8gWyH
op6MnPTJq2RHLMtVHomoNpHX4EfryfpxxRWyC7Jzwvw/bOglCzB7ZCD+ktpI
fh0zlS4uBeWXyR5Y7ZoptrvTTfbEGkn70o9SvyN7QWMQf2p85VuyN7w7Ilsr
nnWS1+NRcZfN3QUDeQOi6jNOf+DG7IvP9gzlDyovkf2QGjRTJ67tIAsxLAyZ
np9vJ2/EuaDjAl0msz8WHI05ucNt5AAYUwOL+9XMgRD7NEjyRy+SN2HDtRIv
VR5zEMwx+qLS5cybccZfMCXVXSAHY2OMzYw5gXkL+sVahydzreQQBJy9b9VX
zxyKxp4wzWwKcxiW6FeOe9kzi1BVkDK+SvsNGbi7c1Rz0pHMA7szPXtEFS3U
w7F05KlzqxuZD8cxz8qB/Xo99Qg8dpIs/iKZj8Brpb47s376mnok8j2uvTyd
R+YjMZt7ouz91axHwd5Xa2nsaKYeBbPATVScRubewnSFn7TMmvVF+0ofGNqa
qIuhioi+2JdB5sW4N3hWdPpV1qOhNKrkUzd01KMxeF3ZfeUomYvBXHT8s7FQ
1mPg/nT3kjBzI/VY7DiqeEnXSeZjoR/ShtgWsr4VafZfGORbWN+Kqui9gVkv
GqjHodfgY+VtIvNx8By5MHTqJOvxeLfrRTOvYD0e6xJ3dT12Yz0B7U7Bsabf
66knIPaha9NcJ5lLRPmeJ2sLPmY9EeqJ521CFetJCD6gSBd4sZ6E9EduJqG5
jroEKvwctOMmGRIIq37tqKgl8xL8Yva5dbuAbJTgjHVr3YoEtpci64+Je0IP
tpfi/CHn6vDnX9Feiu32lnlvDpGNUtyo0u76s4XMyaB9z2FAc4IMGS6Xlhc/
zGR7GXIz4mssw9lehkpni09GXNk+GcsmHFfmzJ+nfTLa3PvfqB8m88n4rdlC
VNJJNiajMVYw4KAlc3Lc0W5rCz7E9nKMyIImzWq2lyNJKTUlBbO9HKd04iZ/
F7ZXYMJuIrJu4RztFbi5SZ9dM0rmFQj8nnNYayIbFZi2XX/AUUfmlNgWZztc
Usr2StRUO3UfzmN7JerE+w0PVGyvhOctO40hlO1VuD3it+KvdWyvguv9xpCW
5WyvQlrr3oCr07W0V6FIs9k7ZpjMqfFOp0+OTy8Zagz0lW/fpyPzahSXXT9m
/znbqxF10OrgqsNsnwLXhZTR7Mxa0d9sJ8qU
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJxV0XlQ1GUcx/GfQIhHCEKNcsSSDMOAGayAiMB+OFpArt1lLwQV4xgjRwUJ
Jct+jGJriFZIrBzNoHEstIQCLhQ4y8g2HphDiEWDB1PKDI0cEaKLYVTf54+e
mWeeec17Pn897m/vk2VZcByXuXj/ef87U6L/vxwU/54hsg1qxgq/HCv8gWyH
op6MnPTJq2RHLMtVHomoNpHX4EfryfpxxRWyC7Jzwvw/bOglCzB7ZCD+ktpI
fh0zlS4uBeWXyR5Y7ZoptrvTTfbEGkn70o9SvyN7QWMQf2p85VuyN7w7Ilsr
nnWS1+NRcZfN3QUDeQOi6jNOf+DG7IvP9gzlDyovkf2QGjRTJ67tIAsxLAyZ
np9vJ2/EuaDjAl0msz8WHI05ucNt5AAYUwOL+9XMgRD7NEjyRy+SN2HDtRIv
VR5zEMwx+qLS5cybccZfMCXVXSAHY2OMzYw5gXkL+sVahydzreQQBJy9b9VX
zxyKxp4wzWwKcxiW6FeOe9kzi1BVkDK+SvsNGbi7c1Rz0pHMA7szPXtEFS3U
w7F05KlzqxuZD8cxz8qB/Xo99Qg8dpIs/iKZj8Brpb47s376mnok8j2uvTyd
R+YjMZt7ouz91axHwd5Xa2nsaKYeBbPATVScRubewnSFn7TMmvVF+0ofGNqa
qIuhioi+2JdB5sW4N3hWdPpV1qOhNKrkUzd01KMxeF3ZfeUomYvBXHT8s7FQ
1mPg/nT3kjBzI/VY7DiqeEnXSeZjoR/ShtgWsr4VafZfGORbWN+Kqui9gVkv
GqjHodfgY+VtIvNx8By5MHTqJOvxeLfrRTOvYD0e6xJ3dT12Yz0B7U7Bsabf
66knIPaha9NcJ5lLRPmeJ2sLPmY9EeqJ521CFetJCD6gSBd4sZ6E9EduJqG5
jroEKvwctOMmGRIIq37tqKgl8xL8Yva5dbuAbJTgjHVr3YoEtpci64+Je0IP
tpfi/CHn6vDnX9Feiu32lnlvDpGNUtyo0u76s4XMyaB9z2FAc4IMGS6Xlhc/
zGR7GXIz4mssw9lehkpni09GXNk+GcsmHFfmzJ+nfTLa3PvfqB8m88n4rdlC
VNJJNiajMVYw4KAlc3Lc0W5rCz7E9nKMyIImzWq2lyNJKTUlBbO9HKd04iZ/
F7ZXYMJuIrJu4RztFbi5SZ9dM0rmFQj8nnNYayIbFZi2XX/AUUfmlNgWZztc
Usr2StRUO3UfzmN7JerE+w0PVGyvhOctO40hlO1VuD3it+KvdWyvguv9xpCW
5WyvQlrr3oCr07W0V6FIs9k7ZpjMqfFOp0+OTy8Zagz0lW/fpyPzahSXXT9m
/znbqxF10OrgqsNsnwLXhZTR7Mxa0d9sJ8qU
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.033969130524379866`},
      Frame->True,
      FrameLabel->{
        FormBox["\"h\"", TraditionalForm], 
        FormBox["\"C(h)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotRange->{0, 1},
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{518.6666666666667, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{3.617530498452413*^9, 3.617530633250359*^9}]
}, {2}]],

Cell[TextData[{
 "If we compare side by side a sequence with short range correlations and one \
that is supposed to have ",
 StyleBox["long-range",
  FontSlant->"Italic"],
 " ones, we might even be tempted to assume that actually the first one is \
more correlated than the first one."
}], "Text",
 CellChangeTimes->{{3.6175305940197268`*^9, 3.617530608701017*^9}, {
  3.6175307126784687`*^9, 3.617530795317296*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Alpha]", "=", "0.25"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Phi]", "=", "0.5"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Sigma]", "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s1", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"RandomFunction", "[", 
      RowBox[{
       RowBox[{"FARIMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[Alpha]", ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "dim"}], "}"}]}], "]"}], "[", "\"\<States\>\"", 
     "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"s2", "=", 
   RowBox[{
    RowBox[{
     RowBox[{"RandomFunction", "[", 
      RowBox[{
       RowBox[{"ARMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "\[Phi]", "}"}], ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", 
       RowBox[{"{", 
        RowBox[{"0", ",", "dim"}], "}"}]}], "]"}], "[", "\"\<States\>\"", 
     "]"}], "[", 
    RowBox[{"[", "1", "]"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"GraphicsRow", "[", 
  RowBox[{"{", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Show", "[", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{"s2", ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"-", "1"}], ",", "1"}], "}"}]}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{"s2", ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}]}], "]"}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", "\"\<Short-range. \[Phi]=0.5\>\""}]}], 
     "\[IndentingNewLine]", "]"}], "\[IndentingNewLine]", ",", 
    "\[IndentingNewLine]", 
    RowBox[{"Show", "[", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"ListPlot", "[", 
       RowBox[{"s1", ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"FrameLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
          "\"\<i\>\"", ",", "\"\<\!\(\*SubscriptBox[\(s\), \(i\)]\)\>\""}], 
          "}"}]}], ",", 
        RowBox[{"LabelStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Medium", ",", "Bold"}], "}"}]}]}], "]"}], ",", 
      "\[IndentingNewLine]", 
      RowBox[{"ListPlot", "[", 
       RowBox[{"s1", ",", 
        RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
        RowBox[{"PlotStyle", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", 
           RowBox[{"PointSize", "[", "0.02", "]"}]}], "}"}]}], ",", 
        RowBox[{"Frame", "\[Rule]", "True"}], ",", 
        RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}], ",", 
      RowBox[{"PlotLabel", "\[Rule]", "\"\<Long-range. \[Alpha]=0.25\>\""}]}],
      "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", "}"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.617531143169952*^9, 3.61753116779068*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lAtME1YUhmuR4QOwvBwD3Hhsg6Hi5I04+EV5lHdLH4iKbrGGGYjgwGW4
sRJQu4HEIQ4nihgQuyxgRHDqZKvlYVBwlaEWMDBQCih2vCml4Lb0tEnTfP3z
3/Pfc8+9Tp8d4oqYDAZD9N/3/1/9ZzzYdeNCgDhr/A/6A9Enfju1Or8jWI8r
oOjz6LA3GydmQVLd6PXaWUVsjVXN99vE01PEtjhrZvrG2PQWsQNiI/0HHrY0
EDsi6ckR1ue354mdsV194Hxz8yTx+8g9pc7326Mh/hDvstjH09XPid2wW6u7
wHsyRXnd4X7h1lr/hmHSN8CtqvoH1i9aYg8cPqFZeXflGPHH6JcWDbesY0DP
m2Gf35QRUsMk9kS4jVG1wMOQxwvJ90+aFScb9ueN9oMufjt4s8Q+cMvrcxhd
1U95fDExdi6jg60k9oMukV/veqyF2B+pD/ZmV389ShyAgz5LObu7/ibegn0W
ul9rrilo/UAsM5ErTxUbzmcrJiUCtZwxQPwJ7D595/zPqhniILyxr3KxzVIQ
B8PxwZLiG4duYiDyp6GTZ17M61kMXK+o8kz76jXp29DzEWcoIGlIX1+8DS8G
ArhrW0coTwjqd6Yodepp0kNQM2ORtHfE0N/tSBRqdt21Mfi3Y3PQS88Tl6Zp
/R1oT03+06rlMek7sGLNvkf7U/vJH4r9e5ZJPb1VlC8UWYXn7Sy+XSR/GODd
ZiFbfYP0MOyrmQusGFkgfzgy7xbubpU8Ij0cwWPu7e69g6RHoMuulnPGlvKK
I1BSMVgxZzRI67ORoyzJs5o20s+DmA23+VLrppg28kfixV9TFaVtE+SPRJ2k
2D+p27D/KJhrmT6bLtH9EUdB+burx2jzDOnRqDs6cLsgd5H0aFxnZl/hs431
9RgxcExrPOk0bvDHIK1psnOqzzDfsWDprHYN3iMWx+J5u7Rx7Kph3uNwROa8
1LD8CelxKNl1OfCeVkp6PB5cbDhaK6e8iId6jNV5paaN+hUPXfnsufdaO/Us
i0d2VoFu/egC9YcDh/JDy24+7CY/B+nWrZWVJhrycyAPTcvbdHOC/BwYj1aV
WaRNkp+LIqEouUhC9wFcWLZe6DkWR/XEXNiUp2RIt8rJz0Vm3fdv1a9rp/wJ
KHu7THBVRfcXCehIinNNX284jwQMqvpj8kU0/7IEXGRe82YrDP3hoahCUugS
NEf5eYj2Xbr92KaZ/DxknC7X9HxA8yTjoatrtjtTzqTz4cM3YuOznEV6D8DH
iFOUwEirJj8fQcWdL5/OvKL6fJgzerVKkalM7xdAU+mlEXka6xkCSL+4Ubqm
l/orFmA6tyk8QEX3UyaA85ZhrcqR1mcI8d2rStMoJ3ovIIT0jqV0zzZ6T8RC
fFl7P2y54in5hbAMlQ1s+PEf6n8ipLk29mPN9L4iEYePd3NqlK8ofyLanjWY
nF3qov0nIoTTK7ls/pLq78SGgjdBdw7QPGMnSvj5pytTZoL/BWaxBpo=
          
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lAtME1YUhmuR4QOwvBwD3Hhsg6Hi5I04+EV5lHdLH4iKbrGGGYjgwGW4
sRJQu4HEIQ4nihgQuyxgRHDqZKvlYVBwlaEWMDBQCih2vCml4Lb0tEnTfP3z
3/Pfc8+9Tp8d4oqYDAZD9N/3/1/9ZzzYdeNCgDhr/A/6A9Enfju1Or8jWI8r
oOjz6LA3GydmQVLd6PXaWUVsjVXN99vE01PEtjhrZvrG2PQWsQNiI/0HHrY0
EDsi6ckR1ue354mdsV194Hxz8yTx+8g9pc7326Mh/hDvstjH09XPid2wW6u7
wHsyRXnd4X7h1lr/hmHSN8CtqvoH1i9aYg8cPqFZeXflGPHH6JcWDbesY0DP
m2Gf35QRUsMk9kS4jVG1wMOQxwvJ90+aFScb9ueN9oMufjt4s8Q+cMvrcxhd
1U95fDExdi6jg60k9oMukV/veqyF2B+pD/ZmV389ShyAgz5LObu7/ibegn0W
ul9rrilo/UAsM5ErTxUbzmcrJiUCtZwxQPwJ7D595/zPqhniILyxr3KxzVIQ
B8PxwZLiG4duYiDyp6GTZ17M61kMXK+o8kz76jXp29DzEWcoIGlIX1+8DS8G
ArhrW0coTwjqd6Yodepp0kNQM2ORtHfE0N/tSBRqdt21Mfi3Y3PQS88Tl6Zp
/R1oT03+06rlMek7sGLNvkf7U/vJH4r9e5ZJPb1VlC8UWYXn7Sy+XSR/GODd
ZiFbfYP0MOyrmQusGFkgfzgy7xbubpU8Ij0cwWPu7e69g6RHoMuulnPGlvKK
I1BSMVgxZzRI67ORoyzJs5o20s+DmA23+VLrppg28kfixV9TFaVtE+SPRJ2k
2D+p27D/KJhrmT6bLtH9EUdB+burx2jzDOnRqDs6cLsgd5H0aFxnZl/hs431
9RgxcExrPOk0bvDHIK1psnOqzzDfsWDprHYN3iMWx+J5u7Rx7Kph3uNwROa8
1LD8CelxKNl1OfCeVkp6PB5cbDhaK6e8iId6jNV5paaN+hUPXfnsufdaO/Us
i0d2VoFu/egC9YcDh/JDy24+7CY/B+nWrZWVJhrycyAPTcvbdHOC/BwYj1aV
WaRNkp+LIqEouUhC9wFcWLZe6DkWR/XEXNiUp2RIt8rJz0Vm3fdv1a9rp/wJ
KHu7THBVRfcXCehIinNNX284jwQMqvpj8kU0/7IEXGRe82YrDP3hoahCUugS
NEf5eYj2Xbr92KaZ/DxknC7X9HxA8yTjoatrtjtTzqTz4cM3YuOznEV6D8DH
iFOUwEirJj8fQcWdL5/OvKL6fJgzerVKkalM7xdAU+mlEXka6xkCSL+4Ubqm
l/orFmA6tyk8QEX3UyaA85ZhrcqR1mcI8d2rStMoJ3ovIIT0jqV0zzZ6T8RC
fFl7P2y54in5hbAMlQ1s+PEf6n8ipLk29mPN9L4iEYePd3NqlK8ofyLanjWY
nF3qov0nIoTTK7ls/pLq78SGgjdBdw7QPGMnSvj5pytTZoL/BWaxBpo=
          "]]}, {}}},
      
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotLabel->FormBox["\"Short-range. \[Phi]=0.5\"", TraditionalForm],
      PlotRangeClipping->True], {192., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}], InsetBox[
     GraphicsBox[{{{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], PointBox[CompressedData["
1:eJw1lAlQVVUYx6+ICpnEGx7ogAQ8iFQUieWJbO/PzoPL8lgfiyIMBGRkJCo5
IhdHSAcbQIOQxCVZrWhAwZyU3qSIUSFbLCZryKrslMhiNe97d+bOnf/9ff/v
nPOd7xyD6EP+sUoMw8T+9/7/lT/Tohb9tUINdlxEP3Cp6k+2WHuRtApirmvl
nzo38ZNcq+OtZ8LC/LBO0nwc0eu0d+3op/gtEKxG77Evf0F6K0zZg0Y21wYp
Xh9TExG2rRYKLcDhW4ZPXFTHSBuh751fjLOy58lvDGNxxeT3/XPEt8GW55x5
SvqA+A7YW5hbJmoo+E6cmD2j3fXgFXFTLBfEdm0uf0jcDAdKm2WPfZQg1+9h
JvxiR+9+hrQ5Plw7WiL9bIj8Fqhq6H6U2j9K2hIJrrEWavmdpK2Qs7739b3Z
bsovRM9vrbe6TRqI78FHmjeVNp0fI20NEy+HL1jxDOm9qM/m8b7OmiK/DfR5
Y3utwxTcFh1N3WOMcIm4HRqjokMaN/aTtsfOXMPXlg8HKN4B+9hNtWpXq4iL
wFb2bnZJryQORB621K3gNcs5B4Rn7PZOM39K8Y44n8g//jJphbgj2uP5xqYf
PyO/E2pS7vedKs6Qa84JA5zPwcgNivk6QyreohllM0fcGWts7/MtVgaJu6Cd
6blU9GqNvN6cC/qSqsPVPf+h8V1x766ux1/+XTS+K/Q6RdM5ZxX95oarcZm5
WiNNxN1gvcp35rJVZHLuDtmIk7qHzzhxd9SZW0Uc+mOS/B74WTC23XCR+oXz
wG3JkLle1zBxMRzfrWcjlSmeEyPi9vusRckqcU+cucOu7Ep8SdwTpsn1Ifza
NuJeeO6ao/3V7DxxLzSrqXcsf/eE1s9iZC4zJnUrrZdjEZZiyk7bKPrDG0ft
wrO1zZqpft6IujxYUnSS6sH4wKCwcVH8AfUb54Oh6889Kn1aifsih7EbsA7g
yO+LyxW/pg6KOyi/HwLSK65JS6nf4YeqDPdMppb6h/ODaphVXu7jFnk+mR/Y
HvNGYXE75ZfgtPKNYYNz38rjIQEvueBGTdgIzUcCh7qi5Qu9dF/IJOg2lnxj
xmNof/xxIKexzqSONPzR5dEfKnBV7Lc/DIzeCFVWWSC/P+J9dbdJA+/S/AMQ
Ey+UqhyplHMEQHn+87QfNyySPwDbV9KqU9b9Tf4APLL7pE8ndojmH4iTPSp3
3j5L+4NANJk+FYTZKOodCOeEhAu6OnQeZYEITtQsjt4/Sv4gWF5UzzuxROMh
CKqThYM1Kop+D0LbeDd3LJHuC1kQ5vXT1rVcUdyfwSjTsJQUNMyQPxizZTNW
EXkUzwXDt2NJp71+kvzB0HarGKkD9TMTAvGbL9bHlM1S/UNwRUm5bSFOcZ5D
oLX70+pjSVPkD8HxiqGJ0mTKx0jB3yfKGL5J/QAp2oLci4Tqv9P4UgjbG45u
FNB5lkkhihstqRNQfZhQ5Ad27kr/coH8oRj5ITNrR/mA6F/mwu+4
          "]]}, {}}, {{}, 
        {RGBColor[0, 0, 1], PointSize[0.02], LineBox[CompressedData["
1:eJw1lAlQVVUYx6+ICpnEGx7ogAQ8iFQUieWJbO/PzoPL8lgfiyIMBGRkJCo5
IhdHSAcbQIOQxCVZrWhAwZyU3qSIUSFbLCZryKrslMhiNe97d+bOnf/9ff/v
nPOd7xyD6EP+sUoMw8T+9/7/lT/Tohb9tUINdlxEP3Cp6k+2WHuRtApirmvl
nzo38ZNcq+OtZ8LC/LBO0nwc0eu0d+3op/gtEKxG77Evf0F6K0zZg0Y21wYp
Xh9TExG2rRYKLcDhW4ZPXFTHSBuh751fjLOy58lvDGNxxeT3/XPEt8GW55x5
SvqA+A7YW5hbJmoo+E6cmD2j3fXgFXFTLBfEdm0uf0jcDAdKm2WPfZQg1+9h
JvxiR+9+hrQ5Plw7WiL9bIj8Fqhq6H6U2j9K2hIJrrEWavmdpK2Qs7739b3Z
bsovRM9vrbe6TRqI78FHmjeVNp0fI20NEy+HL1jxDOm9qM/m8b7OmiK/DfR5
Y3utwxTcFh1N3WOMcIm4HRqjokMaN/aTtsfOXMPXlg8HKN4B+9hNtWpXq4iL
wFb2bnZJryQORB621K3gNcs5B4Rn7PZOM39K8Y44n8g//jJphbgj2uP5xqYf
PyO/E2pS7vedKs6Qa84JA5zPwcgNivk6QyreohllM0fcGWts7/MtVgaJu6Cd
6blU9GqNvN6cC/qSqsPVPf+h8V1x766ux1/+XTS+K/Q6RdM5ZxX95oarcZm5
WiNNxN1gvcp35rJVZHLuDtmIk7qHzzhxd9SZW0Uc+mOS/B74WTC23XCR+oXz
wG3JkLle1zBxMRzfrWcjlSmeEyPi9vusRckqcU+cucOu7Ep8SdwTpsn1Ifza
NuJeeO6ao/3V7DxxLzSrqXcsf/eE1s9iZC4zJnUrrZdjEZZiyk7bKPrDG0ft
wrO1zZqpft6IujxYUnSS6sH4wKCwcVH8AfUb54Oh6889Kn1aifsih7EbsA7g
yO+LyxW/pg6KOyi/HwLSK65JS6nf4YeqDPdMppb6h/ODaphVXu7jFnk+mR/Y
HvNGYXE75ZfgtPKNYYNz38rjIQEvueBGTdgIzUcCh7qi5Qu9dF/IJOg2lnxj
xmNof/xxIKexzqSONPzR5dEfKnBV7Lc/DIzeCFVWWSC/P+J9dbdJA+/S/AMQ
Ey+UqhyplHMEQHn+87QfNyySPwDbV9KqU9b9Tf4APLL7pE8ndojmH4iTPSp3
3j5L+4NANJk+FYTZKOodCOeEhAu6OnQeZYEITtQsjt4/Sv4gWF5UzzuxROMh
CKqThYM1Kop+D0LbeDd3LJHuC1kQ5vXT1rVcUdyfwSjTsJQUNMyQPxizZTNW
EXkUzwXDt2NJp71+kvzB0HarGKkD9TMTAvGbL9bHlM1S/UNwRUm5bSFOcZ5D
oLX70+pjSVPkD8HxiqGJ0mTKx0jB3yfKGL5J/QAp2oLci4Tqv9P4UgjbG45u
FNB5lkkhihstqRNQfZhQ5Ad27kr/coH8oRj5ITNrR/mA6F/mwu+4
          "]]}, {}}},
      AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
      Axes->True,
      AxesOrigin->{1., 0.},
      Frame->True,
      FrameLabel->{
        FormBox["\"i\"", TraditionalForm], 
        FormBox[
        "\"\\!\\(\\*SubscriptBox[\\(s\\), \\(i\\)]\\)\"", TraditionalForm]},
      LabelStyle->{Medium, Bold},
      Method->{},
      PlotLabel->FormBox["\"Long-range. \[Alpha]=0.25\"", TraditionalForm],
      PlotRangeClipping->True], {576., -116.80842387373012`}, 
     ImageScaled[{0.5, 0.5}], {360., 222.49223594996212`}]}, {}},
  ContentSelectable->True,
  ImageSize->{515.9999999999995, Automatic},
  PlotRangePadding->{6, 5}]], "Output",
 CellChangeTimes->{
  3.617530998100995*^9, {3.6175311498359947`*^9, 3.617531168664056*^9}}]
}, {2}]],

Cell["\<\
It is actually more instructive to compare how the correlations decay in the \
two cases.\
\>", "Text",
 CellChangeTimes->{{3.6175317763837767`*^9, 3.617531821849359*^9}}],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"dim", "=", 
   SuperscriptBox["10", "2"]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Alpha]", "=", "0.25"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Phi]", "=", "0.5"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"\[Sigma]", "=", "1"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c1", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"CorrelationFunction", "[", 
      RowBox[{
       RowBox[{"FARIMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "}"}], ",", "\[Alpha]", ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", "h"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"h", ",", "0", ",", "dim"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"c2", "=", 
   RowBox[{"Table", "[", 
    RowBox[{
     RowBox[{"CorrelationFunction", "[", 
      RowBox[{
       RowBox[{"ARMAProcess", "[", 
        RowBox[{
         RowBox[{"{", "\[Phi]", "}"}], ",", 
         RowBox[{"{", "}"}], ",", "\[Sigma]"}], "]"}], ",", "h"}], "]"}], ",", 
     RowBox[{"{", 
      RowBox[{"h", ",", "0", ",", "dim"}], "}"}]}], "]"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"ListPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"c2", ",", "c1"}], "}"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"Red", ",", "Thick"}], "}"}], ",", 
      RowBox[{"{", "Blue", "}"}]}], "}"}]}], ",", 
   RowBox[{"Frame", "\[Rule]", "True"}], ",", 
   RowBox[{"FrameLabel", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"\"\<h\>\"", ",", "\"\<C(h)\>\""}], "}"}]}], ",", 
   RowBox[{"LabelStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"Medium", ",", "Bold"}], "}"}]}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{"0", ",", "1"}], "}"}]}], ",", 
   RowBox[{"PlotLegends", "\[Rule]", 
    RowBox[{"Placed", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
       "\"\<Short range. \[Phi]=0.5\>\"", ",", 
        "\"\<Long range. \[Alpha]=0.25\>\""}], "}"}], ",", "Above"}], "]"}]}],
    ",", 
   RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]}], "Input"],

Cell[BoxData[
 TemplateBox[{GraphicsBox[{{{}, {
       RGBColor[1, 0, 0], 
       Thickness[Large], 
       LineBox[CompressedData["
1:eJxVy7tNxEAUheEREaEDAgICgxBCCCHzZmF3Gd5vMG/ILKSNcQlTgktwCS5h
SnAJLsElALr/CbA0uvr0+8x/fT9Nppxzk9/3d+3rD/9f5+10eBq3OMERz+AG
z+Iaz+EKpzjgBVziRVzgJZzjZezxCs7wKk7xGk5whh1ex/3Y7gbu8CZu8RaO
eBs3eAfXeBdXeA8HPMAl3scFPsA5HmKPRzjDY5ziQ5xgj505yP3I7hHuzEFu
6cc40uWGfoJrulzRT3GgyyX9DBd0OaefY0+XM/oFTulyQr/Eji73Q7tXuDMH
uaVf40iXG/oNrulyRb/FgS6X9Dtc0OWcfo89Xc7oDzilywk9x87s5f7A/pc7
c5Rbs3vE0ezlhr1cs5cr9k84sJdL9nLBXs7ZP2PPXs7Yyyl7OWH/gh17ud+3
vdyZo9ya3SuOZi837OWavVyxf8OBvVyylwv2cs7+HXv2csZeTtnLCfsP7NjL
/cD2cmeOcmt2nziavdwMfgABE5Vh
        "]], {
        RGBColor[0, 0, 1], 
        LineBox[CompressedData["
1:eJxV0XlQ1GUcx/GfQIhHCIKNcsSSDMOAGayAiMB+OFpArt1lLwQV4xgjRwUJ
Jcp+jlJriFZIrBzNoHEstIQCLhQ4y8g2HphDiEWDB1PKDI0cEaKLYVTf54+e
mWeeec1n3n897m/tl2VZcByXtXj/ef87U6L/vxwU/54hsg1qxgq/HCv8gWyH
oz0ZOemTV8mOWJarPBJRbSKvxY/Wk/XjiitkF2TnhPl/0NBLFmD2yED8JbWR
/BpmKl1cCsovkz2w2jVTbHenm+yJtZL2pR+mfkf2gsYg/tS45luyN7w7Ilsr
nnWSN+BRcZfN3QUDeSOi6jNOv+/G7IvP9g7lDyovkf2QGjRTJ67tIAsxLAyZ
np9vJ2/CuaCPBLpMZn8sOBpzcofbyAEwpgYW96uZAyH2aZDkj14kb8bGayVe
qjzmIJhj9EdLlzNvwRl/wZRUd4EcjE0xNjPmBOat6BdrHZ7MtZJDEHD2vlVf
PXMoGnvCNLMpzGFYol857mXPLEJVQcr4Ku03ZODurlHNSUcyD+zJ9OwRVbTQ
Ho6lI0+dW93IfDiOe1YOHNDraY/AYyfJ4i+S+Qi8Wuq7K+unr2mPRL7HtZen
88h8JGZzT5S9t5rtUbD31VoaO5ppj4JZ4CYqTiNzb2K6wk9aZs32RftKHxja
mmgXQxURfbEvg8yLcW/wrOj0K2yPhtKokk/d0NEejcHryu4rx8hcDOai45+N
hbI9Bu5P9ywJMzfSHoudxxQv6TrJfCz0Q9oQ20K2b0Oa/RcG+Va2b0NV9L7A
rBcNtMeh1+Bj5W0i83HwHLkwdOok2+PxTteLZl7B9nisT9zd9diN7QlodwqO
Nf1eT3sCYh+6Ns11krlElO99sq7gY7YnQj3xvE2oYnsSgg8q0gVebE9C+iM3
k9BcR7sEKvwctPMmGRIIq37tqKgl8xL8Yva5dbuAbJTgjHVr3YoE1kuR9cfE
PaEH66U4f9i5Ovz5V9RLscPeMu+NIbJRihtV2t1/tpA5GbTvOgxoTpAhw+XS
8uKHmayXITcjvsYynPUyVDpbfDLiyvpkLJtwXJkzf576ZLS5979eP0zmk/Fb
s4WopJNsTEZjrGDAQUvm5Lij3d4WfJj1cozIgibNatbLkaSUmpKCWS/HKZ24
yd+F9QpM2E1E1i2co16Bm5v12TWjZF6BwO85h3UmslGBadsNBx11ZE6J7XG2
wyWlrFeiptqpuyiP9UrUiQ8YHqhYr4TnLTuNIZT1Ktwe8Vvx13rWq+B6vzGk
ZTnrVUhr3RdwdbqWehWOarZ4xwyTOTXe7vTJ8eklQ42BvvId+3VkXo3isuvH
7T9nvRpRh6wOrSpifQpcF1JGszNZn4KQot7iNYm1or8BNBfOrg==
         "]]}}, {}}, {}},
     AspectRatio -> NCache[GoldenRatio^(-1), 0.6180339887498948], Axes -> 
    True, AxesOrigin -> {1., 7.888609052210118*^-31}, Frame -> True, 
    FrameLabel -> {
      FormBox["\"h\"", TraditionalForm], 
      FormBox["\"C(h)\"", TraditionalForm]}, LabelStyle -> {Medium, Bold}, 
    Method -> {}, PlotRangeClipping -> True],
   TemplateBox[{
    "\"Short range. \[Phi]=0.5\"", "\"Long range. \[Alpha]=0.25\""}, 
    "PointLegend", DisplayFunction -> (StyleBox[
      StyleBox[
       PaneBox[
        TagBox[
         GridBox[{{
            TagBox[
             GridBox[{{
                GraphicsBox[{{}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[1, 0, 0], 
                    Thickness[Large]], {
                    Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[1, 0, 0], 
                    Thickness[Large]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                 ImageSize -> {10, 10}, PlotRangePadding -> None, 
                 ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #, 
                GraphicsBox[{{}, {
                   Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0, 0, 1]], {
                    Directive[
                    EdgeForm[{
                    Opacity[0.3], 
                    GrayLevel[0]}], 
                    RGBColor[0, 0, 1]], 
                    PointBox[
                    NCache[{
                    Scaled[{
                    Rational[1, 2], 
                    Rational[1, 2]}]}, {
                    Scaled[{0.5, 0.5}]}]]}}}, AspectRatio -> Full, 
                 ImageSize -> {10, 10}, PlotRangePadding -> None, 
                 ImagePadding -> 1, 
                 BaselinePosition -> (Scaled[0.1] -> Baseline)], #2}}, 
              GridBoxAlignment -> {
               "Columns" -> {Center, Left}, "Rows" -> {{Baseline}}}, 
              AutoDelete -> False, 
              GridBoxDividers -> {
               "Columns" -> {{False}}, "Rows" -> {{False}}}, 
              GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
              GridBoxSpacings -> {"Columns" -> {{0.8, 0.5}}}], "Grid"]}}, 
          GridBoxAlignment -> {"Columns" -> {{Left}}, "Rows" -> {{Top}}}, 
          AutoDelete -> False, 
          GridBoxDividers -> {"Columns" -> {{None}}, "Rows" -> {{None}}}, 
          GridBoxItemSize -> {"Columns" -> {{All}}, "Rows" -> {{All}}}, 
          GridBoxSpacings -> {"Columns" -> {{0}}, "Rows" -> {{1}}}], "Grid"], 
        Alignment -> Left, AppearanceElements -> None, 
        ImageMargins -> {{5, 5}, {5, 5}}, ImageSizeAction -> "ResizeToFit"], 
       LineIndent -> 0, StripOnInput -> False], {FontFamily -> "Times"}, 
      Background -> Automatic, StripOnInput -> False]& ), Editable -> True, 
    InterpretationFunction :> (RowBox[{"PointLegend", "[", 
       RowBox[{
         RowBox[{"{", 
           RowBox[{
             RowBox[{"Directive", "[", 
               RowBox[{
                 RowBox[{"RGBColor", "[", 
                   RowBox[{"1", ",", "0", ",", "0"}], "]"}], ",", 
                 RowBox[{"Thickness", "[", "Large", "]"}]}], "]"}], ",", 
             RowBox[{"Directive", "[", 
               RowBox[{"RGBColor", "[", 
                 RowBox[{"0", ",", "0", ",", "1"}], "]"}], "]"}]}], "}"}], 
         ",", 
         RowBox[{"{", 
           RowBox[{#, ",", #2}], "}"}], ",", 
         RowBox[{"{", 
           RowBox[{
             RowBox[{"LegendLayout", "\[Rule]", "\"Row\""}], ",", 
             RowBox[{"LegendMarkers", "\[Rule]", "False"}]}], "}"}]}], 
       "]"}]& )]},
  "Legended",
  DisplayFunction->(GridBox[{{
      ItemBox[#2, DefaultBaseStyle -> "LabeledLabel"]}, {
      TagBox[
       ItemBox[
        PaneBox[
         TagBox[#, "SkipImageSizeLevel"], Alignment -> {Center, Baseline}, 
         BaselinePosition -> Baseline], DefaultBaseStyle -> "Labeled"], 
       "SkipImageSizeLevel"]}}, 
    GridBoxAlignment -> {"Columns" -> {{Center}}, "Rows" -> {{Center}}}, 
    AutoDelete -> False, GridBoxItemSize -> Automatic, 
    BaselinePosition -> {2, 1}]& ),
  Editable->True,
  InterpretationFunction->(RowBox[{"Legended", "[", 
     RowBox[{#, ",", 
       RowBox[{"Placed", "[", 
         RowBox[{#2, ",", "Above"}], "]"}]}], "]"}]& )]], "Output",
 CellChangeTimes->{3.6175317680168962`*^9}]
}, {2}]],

Cell[TextData[{
 "Both decay very fast for small ",
 StyleBox["h",
  FontSlant->"Italic"],
 ", but while one (red curve) decays exponentially to zero, the other one \
(blue curve) decay only polinomially. As a result the correlations are still \
non negligible for very large values of ",
 StyleBox["h",
  FontSlant->"Italic"],
 "."
}], "Text",
 CellChangeTimes->{{3.617531839914222*^9, 3.617531937328631*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Conclusions", "Subsection",
 CellChangeTimes->{{3.521456888541393*^9, 3.521456898829589*^9}}],

Cell["\<\
We have given a brief summary of the main ways a \"random\" sequence can \
incorporate correlations while still retaining its \"randomness\".\
\>", "Text",
 CellChangeTimes->{{3.521456921679896*^9, 3.521457137208935*^9}, {
  3.616836499432255*^9, 3.61683650079182*^9}, {3.617531963297192*^9, 
  3.617532003977748*^9}, {3.617532053253186*^9, 3.6175320869806023`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["References", "Section",
 CellChangeTimes->{{3.52204658710558*^9, 3.522046596542175*^9}}],

Cell["\<\
[1] https://onlinecourses.science.psu.edu/stat510/node/41
[2] http://mathworld.wolfram.com/LogisticMap.html\
\>", "Text",
 CellChangeTimes->{{3.522046617284922*^9, 3.522046676587974*^9}, 
   3.522046720004198*^9, {3.522046801040373*^9, 3.522046849732385*^9}, {
   3.522046910664647*^9, 3.522046951291877*^9}, {3.522047111479553*^9, 
   3.522047173699748*^9}, {3.523335628717241*^9, 3.523335629148988*^9}, {
   3.616836507361074*^9, 3.616836508662624*^9}, 3.617010012602799*^9, {
   3.617520636006366*^9, 3.6175206378711843`*^9}}]
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
WindowSize->{954, 1002},
WindowMargins->{{Automatic, -2}, {Automatic, -1064}},
Magnification:>FEPrivate`If[
  FEPrivate`Equal[FEPrivate`$VersionNumber, 6.], 1.5, 1.5 Inherited],
FrontEndVersion->"9.0 for Linux x86 (64-bit) (November 20, 2012)",
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
Cell[1257, 32, 189, 2, 222, "Title"],
Cell[1449, 36, 642, 13, 210, "Text"],
Cell[CellGroupData[{
Cell[2116, 53, 222, 3, 67, "Subsection"],
Cell[2341, 58, 7588, 181, 1117, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9966, 244, 159, 2, 67, "Subsection"],
Cell[10128, 248, 550, 13, 76, "Text"],
Cell[CellGroupData[{
Cell[10703, 265, 3594, 97, 3262, "Input"],
Cell[14300, 364, 5983, 113, 278, "Output"]
}, {2}]],
Cell[20295, 480, 563, 9, 164, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[20895, 494, 107, 1, 67, "Subsection"],
Cell[21005, 497, 704, 19, 164, "Text"],
Cell[CellGroupData[{
Cell[21734, 520, 4022, 108, 2566, "Input"],
Cell[25759, 630, 3162, 66, 277, "Output"]
}, {2}]],
Cell[28933, 699, 617, 11, 164, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[29587, 715, 113, 1, 67, "Subsection"],
Cell[29703, 718, 1025, 19, 371, "Text"],
Cell[CellGroupData[{
Cell[30753, 741, 3917, 107, 1138, "Input"],
Cell[34673, 850, 3221, 68, 277, "Output"]
}, {2}]],
Cell[37906, 921, 440, 14, 105, "Text"],
Cell[CellGroupData[{
Cell[38371, 939, 1479, 39, 937, "Input"],
Cell[39853, 980, 59475, 985, 359, 17735, 299, "CachedBoxData", "BoxData", \
"Output"]
}, {2}]],
Cell[99340, 1968, 833, 14, 223, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[100210, 1987, 128, 3, 67, "Subsection"],
Cell[100341, 1992, 8581, 264, 1151, "Text"],
Cell[CellGroupData[{
Cell[108947, 2260, 4108, 111, 773, "Input"],
Cell[113058, 2373, 7416, 136, 278, "Output"]
}, {2}]],
Cell[120486, 2512, 1210, 24, 275, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[121733, 2541, 167, 2, 67, "Subsection"],
Cell[121903, 2545, 3699, 86, 731, "Text"],
Cell[CellGroupData[{
Cell[125627, 2635, 4555, 125, 904, "Input"],
Cell[130185, 2762, 7410, 136, 277, "Output"]
}, {2}]]
}, Open  ]],
Cell[CellGroupData[{
Cell[137641, 2904, 172, 2, 67, "Subsection"],
Cell[137816, 2908, 4997, 163, 567, "Text"],
Cell[CellGroupData[{
Cell[142838, 3075, 1741, 50, 388, "Input"],
Cell[144582, 3127, 63140, 1116, 384, "Output"]
}, Open  ]],
Cell[207737, 4246, 329, 6, 76, "Text"],
Cell[CellGroupData[{
Cell[208091, 4256, 4305, 114, 773, "Input"],
Cell[212399, 4372, 7353, 135, 277, "Output"]
}, {2}]],
Cell[219764, 4510, 416, 9, 105, "Text"],
Cell[CellGroupData[{
Cell[220205, 4523, 4121, 107, 802, "Input"],
Cell[224329, 4632, 7869, 144, 301, "Output"]
}, {2}]],
Cell[232210, 4779, 181, 4, 76, "Text"],
Cell[CellGroupData[{
Cell[232416, 4787, 2214, 65, 454, "Input"],
Cell[234633, 4854, 6945, 151, 457, "Output"]
}, {2}]],
Cell[241590, 5008, 410, 11, 105, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[242037, 5024, 99, 1, 67, "Subsection"],
Cell[242139, 5027, 376, 6, 76, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[242552, 5038, 94, 1, 121, "Section"],
Cell[242649, 5041, 539, 9, 76, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[243225, 5055, 93, 1, 121, "Section"],
Cell[243321, 5058, 2081, 32, 872, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature Tx0okhdPPCPWXA1myPwJR5#Q *)
