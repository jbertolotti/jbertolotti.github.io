(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 8.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       150,          7]
NotebookDataLength[     62599,       1508]
NotebookOptionsPosition[     60193,       1424]
NotebookOutlinePosition[     60630,       1441]
CellTagsIndexPosition[     60587,       1438]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["\<\
Tutorial : Random walks and diffusion\
\>", "Title",
 CellChangeTimes->{{3.521261098790794*^9, 3.521261124273987*^9}, 
   3.6168360870896883`*^9}],

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

Cell["A bit of History", "Subsection",
 CellChangeTimes->{{3.521269916364412*^9, 3.521269927472148*^9}}],

Cell["\<\
The history of diffusion dates back to the second half of the 18th century \
when the Dutch biologist Jan Ingenhousz observed that coal dust on the \
surface of alcohol was not still as expected, but each particle was subject \
to a random motion [1]. This strange phenomenon was not further investigated \
and it was soon forgot just to be independently rediscovered by Robert Brown, \
a Scottish botanist, in 1827 [2].
Brown observed under the microscope that minute pollen particles in still \
water moved irregularly without any apparent external force applied. At the \
beginning this was related to the fact that pollen is alive but subsequent \
experiments with inorganic matter allowed to rule out any life-force effect.\
\>", "Text",
 CellChangeTimes->{{3.521267972503865*^9, 3.521268033155434*^9}, {
   3.521268065651704*^9, 3.521268068491489*^9}, {3.521268259207407*^9, 
   3.521268456091832*^9}, {3.521268514539907*^9, 3.521268595630082*^9}, {
   3.521268628355641*^9, 3.521268663659601*^9}, {3.521268698243854*^9, 
   3.521268822051696*^9}, {3.521268852756221*^9, 3.521268880651625*^9}, {
   3.521268911220005*^9, 3.521268914161389*^9}, 3.521458483915456*^9, {
   3.522046574902216*^9, 3.522046577004954*^9}, {3.522046738205145*^9, 
   3.522046738893021*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Graphics", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{"Black", ",", 
       RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
       RowBox[{"Point", "[", 
        RowBox[{"randomwalk", "[", 
         RowBox[{"[", "t", "]"}], "]"}], " ", "]"}]}], "}"}], " ", ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "max"}], ",", "max"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "max"}], ",", "max"}], "}"}]}], "}"}]}], ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Irregular motion of a particle in an otherwise still \
medium.\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", "1", ",", "1000", ",", "1"}], "}"}], ",", " ", 
   RowBox[{"DisplayAllSteps", "\[Rule]", "True"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "15"}], ",", " ", 
   RowBox[{"Initialization", "\[RuleDelayed]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"randomwalk", "=", 
       RowBox[{"Accumulate", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}], ",", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}]}], "}"}], ",", 
          RowBox[{"{", "1000", "}"}]}], "]"}], " ", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"max", "=", 
       RowBox[{"Max", "@", 
        RowBox[{"Abs", "[", "randomwalk", "]"}]}]}], ";"}], ")"}]}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521262509429128*^9, 3.521262514421098*^9}, {
  3.52126256350249*^9, 3.521262767072581*^9}, {3.521262856928395*^9, 
  3.521262889091798*^9}, {3.521262919504076*^9, 3.521262934351162*^9}, {
  3.521266179103432*^9, 3.521266221634619*^9}, {3.521268926774373*^9, 
  3.521268970114823*^9}, {3.521269548618527*^9, 3.521269551505288*^9}, {
  3.521441053108225*^9, 3.521441120929051*^9}, {3.521441191060004*^9, 
  3.521441198481231*^9}, {3.521441466397302*^9, 3.521441472070022*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`t$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 1, 1000, 1}}, Typeset`size$$ = {
    540., {276., 287.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$621$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`t$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$621$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Graphics[{Black, 
         PointSize[0.02], 
         Point[
          Part[$CellContext`randomwalk, $CellContext`t$$]]}, 
        PlotRange -> {{-$CellContext`max, $CellContext`max}, \
{-$CellContext`max, $CellContext`max}}, PlotLabel -> 
        "Irregular motion of a particle in an otherwise still medium."], 
      "Specifications" :> {{$CellContext`t$$, 1, 1000, 1, DisplayAllSteps -> 
         True, AnimationRate -> 15, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {329., 337.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`randomwalk = Accumulate[
         Table[{
           RandomReal[{-1, 1}], 
           RandomReal[{-1, 1}]}, {1000}]]; $CellContext`max = Max[
         Abs[$CellContext`randomwalk]]; Null); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.521262451165257*^9, {3.521262596092033*^9, 3.521262625764056*^9}, {
   3.521262664142573*^9, 3.521262675982692*^9}, {3.521262742179115*^9, 
   3.521262767718111*^9}, {3.521262873626879*^9, 3.521262889749668*^9}, 
   3.521262936007623*^9, {3.521266193669227*^9, 3.521266222676079*^9}, 
   3.521267625783361*^9, 3.521268972421959*^9, 3.521269555442798*^9, 
   3.521354727644217*^9, {3.521441079758031*^9, 3.521441103328637*^9}, 
   3.52144119907595*^9, 3.521441480915578*^9, 3.521460328760633*^9}]
}, {2}]],

Cell[TextData[{
 "Also Brown' s observation remained without an explanation but, contrary to \
Ingenhousz's one, was not forgotten and formed the basis for the celebrated \
1905 paper from Albert Einstein [3]. In this paper Einstein showed that the \
Brownian motion (as it is known today) is perfectly well explained if we \
accept that the matter is not continuous but made of discrete atoms (at the \
time the existence of atoms was still debated). In fact, even if the fluid \
appear to be macroscopically still, the atoms composing it are in thermal \
agitation and can \"hit\" a nearby object.\nPollens or coal dust particles \
are light enough that the tiny force applied by a water molecule hitting them \
can produce a measurable acceleration and displace the particle itself. Since \
the particle is subject to many uncorrelated collision with the molecules of \
the fluid the result will be an erratic and apparently unpredictable \
movement.\n\n",
 StyleBox["Question:",
  FontWeight->"Bold"],
 " How light should a particle be in order to feel the hits from water \
molecules and thus perform a Brownian motion?"
}], "Text",
 CellGroupingRules->"NormalGrouping",
 CellChangeTimes->{{3.521269010154946*^9, 3.521269056883702*^9}, {
  3.521269110908338*^9, 3.521269139771698*^9}, {3.521269185618387*^9, 
  3.521269289182384*^9}, {3.521269346998758*^9, 3.521269470403793*^9}, {
  3.521269504140279*^9, 3.521269506508081*^9}, {3.521269571206793*^9, 
  3.521269603147466*^9}, {3.521269634132193*^9, 3.52126963788832*^9}, {
  3.521269681685075*^9, 3.521269792244152*^9}, {3.521269838596249*^9, 
  3.521269910147954*^9}, {3.521458495231696*^9, 3.52145850176769*^9}, {
  3.522046895249732*^9, 3.522046900246732*^9}, {3.522047935234646*^9, 
  3.522048019564282*^9}, {3.523335617131744*^9, 3.523335617564907*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Brownian motion and diffusion", "Subsection",
 CellChangeTimes->{{3.5212701087518*^9, 3.521270126500183*^9}}],

Cell["\<\
The stochastic nature of Brownian motion makes it impervious to analyses \
based on deterministic approaches like the study of the equations of motions. \
Yet, if we look at one of such random walks, we notice that there are various \
 qualitative properties that can allow us to make some predictions on the \
evolution of the system.\
\>", "Text",
 CellChangeTimes->{{3.521441938069376*^9, 3.521442204342064*^9}, 
   3.521458503317546*^9}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Gray", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"randomwalk", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "t"}], "]"}], "]"}], " ", "]"}]}], "}"}], " ", 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Red", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"randomwalk", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "]"}]}], " ", "}"}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Black", ",", 
        RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"randomwalk", "[", 
          RowBox[{"[", "t", "]"}], "]"}], " ", "]"}]}], "}"}], " ", "]"}], 
     ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "max"}], ",", "max"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "max"}], ",", "max"}], "}"}]}], "}"}]}], ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Path of a Brownian motion.\\nThe red dot represent the starting \
point.\>\""}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", "1", ",", "10000", ",", "1"}], "}"}], ",", " ", 
   RowBox[{"DisplayAllSteps", "\[Rule]", "True"}], ",", 
   RowBox[{"AnimationRate", "\[Rule]", "15"}], ",", " ", 
   RowBox[{"Initialization", "\[RuleDelayed]", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"randomwalk", "=", 
       RowBox[{"Accumulate", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
          RowBox[{"{", 
           RowBox[{
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}], ",", 
            RowBox[{"RandomReal", "[", 
             RowBox[{"{", 
              RowBox[{
               RowBox[{"-", "1"}], ",", "1"}], "}"}], "]"}]}], "}"}], ",", 
          RowBox[{"{", "10000", "}"}]}], "]"}], " ", "]"}]}], " ", ";", 
      "\[IndentingNewLine]", 
      RowBox[{"max", "=", 
       RowBox[{"Max", "@", 
        RowBox[{"Abs", "[", "randomwalk", "]"}]}]}], ";"}], ")"}]}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521262825532676*^9, 3.521262830068761*^9}, {
   3.521262953309657*^9, 3.52126296605319*^9}, {3.521263006078124*^9, 
   3.521263011750359*^9}, {3.521263051207184*^9, 3.52126308369617*^9}, {
   3.521263133832423*^9, 3.521263220655199*^9}, {3.521263258505732*^9, 
   3.521263276478033*^9}, {3.521263317126696*^9, 3.521263382325247*^9}, {
   3.521266207516248*^9, 3.52126621153883*^9}, {3.521267514803496*^9, 
   3.52126760610559*^9}, {3.521267647057617*^9, 3.521267654483827*^9}, {
   3.521269959427329*^9, 3.52127000443183*^9}, {3.521270037597406*^9, 
   3.521270073582183*^9}, 3.521270654176981*^9, {3.521441310632815*^9, 
   3.521441332641918*^9}, 3.521441509365108*^9, {3.521460447687732*^9, 
   3.521460454486067*^9}, 3.522046086016272*^9, {3.522047011082588*^9, 
   3.522047013361163*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`t$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 1, 10000, 1}}, Typeset`size$$ = {
    540., {289., 301.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`t$1222$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`t$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$1222$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[{Gray, 
          Line[
           Part[$CellContext`randomwalk, 
            Span[1, $CellContext`t$$]]]}], 
        Graphics[{Red, 
          PointSize[0.01], 
          Point[
           Part[$CellContext`randomwalk, 1]]}], 
        Graphics[{Black, 
          PointSize[0.01], 
          Point[
           Part[$CellContext`randomwalk, $CellContext`t$$]]}], 
        PlotRange -> {{-$CellContext`max, $CellContext`max}, \
{-$CellContext`max, $CellContext`max}}, PlotLabel -> 
        "Path of a Brownian motion.\nThe red dot represent the staring \
point."], 
      "Specifications" :> {{$CellContext`t$$, 1, 10000, 1, DisplayAllSteps -> 
         True, AnimationRate -> 15, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {342., 350.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`randomwalk = Accumulate[
         Table[{
           RandomReal[{-1, 1}], 
           RandomReal[{-1, 1}]}, {10000}]]; $CellContext`max = Max[
         Abs[$CellContext`randomwalk]]; Null); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.521262832066841*^9, 3.521262966398271*^9, {3.521263058487422*^9, 
   3.521263067899827*^9}, 3.521263162017558*^9, {3.521263200807043*^9, 
   3.521263221388481*^9}, 3.521263268277409*^9, {3.521263320750542*^9, 
   3.5212633424591*^9}, 3.521263385445201*^9, 3.521266212959282*^9, {
   3.521267630165812*^9, 3.521267656161407*^9}, 3.52127000589966*^9, {
   3.521270049194154*^9, 3.521270075717987*^9}, 3.521270655531965*^9, 
   3.521356209284362*^9, 3.521441334895059*^9, 3.52145818800677*^9, 
   3.521460333983167*^9, {3.521460455562427*^9, 3.521460459705626*^9}}]
}, {2}]],

Cell[TextData[{
 "First we notice that, since making a step away from the origin is just as \
likely as making a step toward it, the walker has the tendency to be in the \
neighborhood of the place where it started. Waiting for a bit longer we can \
also see that the walker actually explores also places far away from the \
origin but it is very slow in doing so. Lastly, if we wait for a long time, \
it becomes evident that the areas explored by the walker are usually densely \
sampled. That is: the walker is likely to pass again very close to any place \
it visited previously.\n\n",
 StyleBox["Questions:",
  FontWeight->"Bold"],
 " Given an infinite amount of time, how likely is it that a particle \
performing a Brownian motion in 2D will pass again on exactly the same point \
where it started? And in 3D?"
}], "Text",
 CellChangeTimes->{{3.521442227566848*^9, 3.521442441844788*^9}, {
  3.521442516588744*^9, 3.521442623182425*^9}, {3.521458511336438*^9, 
  3.52145852125616*^9}, {3.522048040502988*^9, 3.522048150300041*^9}}],

Cell[TextData[{
 "An important step in the understanding of random walks was made when Karl \
Pearson wrote a letter to Nature asking the following question: \"",
 StyleBox["A man starts from a point O and walks l yards in a straight line; \
he then turns through any angle whatever and walks another l yards in a \
second straight line. He repeat this process n times. I require the \
probability that after these n stretches he is at a distance between t and r+\
\[Delta]r from his starting point, O.",
  FontSlant->"Italic"],
 "\" [4]",
 StyleBox["\n", "Program"],
 "Pearson was interested in these kind of processes to create a model for \
migrations (think about insects swarming when they search for a new place \
where to live) but discovered soon that this problem is far from trivial. For \
n=1 the solution to his question is simply a uniform distribution on the \
circle of radius l. For n>1 the problem can be attached by brute force \
noticing that ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["P", 
      RowBox[{"n", "=", "1"}]], "(", "r", ")"}], "\[Proportional]", 
    RowBox[{"\[Delta]", "(", 
     RowBox[{"r", "-", "l"}], ")"}]}], TraditionalForm]]],
 " and thus its (2D) Fourier transform is ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"F", "[", 
      SubscriptBox["P", 
       RowBox[{"n", "=", "1"}]], "]"}], 
     RowBox[{"(", "k", ")"}]}], "\[Proportional]", 
    RowBox[{
     SubscriptBox["J", "0"], "(", 
     RowBox[{"l", " ", "k"}], ")"}]}], TraditionalForm]]],
 " where ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["J", "0"], TraditionalForm]]],
 " is a Bessel function of the first kind; as a result ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["P", "n"], "(", "r", ")"}], "\[Proportional]", 
    RowBox[{
     SuperscriptBox["F", 
      RowBox[{"-", "1"}]], "[", 
     SuperscriptBox[
      RowBox[{"(", 
       RowBox[{
        SubscriptBox["J", "0"], "(", 
        RowBox[{"l", " ", "k"}], ")"}], " ", ")"}], "n"], "]"}]}], 
   TraditionalForm]]],
 ". While this formally solve the problem, performing this inverse Fourier \
transform is difficult (due to the highly oscillatory nature of the \
integrand) and, up to today, it is known only how to write the solution in \
terms of an infinite summation."
}], "Text",
 CellChangeTimes->{{3.521270485644868*^9, 3.521270615499941*^9}, 
   3.521270689068385*^9, {3.521279025655265*^9, 3.521279237013767*^9}, {
   3.521279514128289*^9, 3.521279515501692*^9}, {3.521279563486698*^9, 
   3.521279607725861*^9}, {3.52128442988733*^9, 3.521284459230838*^9}, {
   3.521284630240026*^9, 3.521284664661682*^9}, {3.521284702806574*^9, 
   3.521284768343747*^9}, {3.521284821974598*^9, 3.521284912038851*^9}, {
   3.521285135679156*^9, 3.521285279742636*^9}, 3.521285321423379*^9, {
   3.521355253688007*^9, 3.521355313707578*^9}, {3.521355348118799*^9, 
   3.521355368022073*^9}, 3.521356423062203*^9, {3.521442632621804*^9, 
   3.521442651510233*^9}, {3.521442683652322*^9, 3.521442713830976*^9}, {
   3.521442786899788*^9, 3.521443155239555*^9}, {3.521450955301638*^9, 
   3.521451029255539*^9}, {3.522047099982551*^9, 3.522047102845757*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"ArrayPlot", "[", 
    RowBox[{
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"IntegerQ", "[", 
        FractionBox["n", "2"], "]"}], ",", 
       RowBox[{"RotateRight", "[", 
        RowBox[{
         RowBox[{"Abs", "@", 
          RowBox[{"InverseFourier", "[", 
           SuperscriptBox["pearsonf", "n"], "]"}]}], ",", 
         RowBox[{"{", 
          RowBox[{"256", ",", "256"}], "}"}]}], "]"}], ",", 
       RowBox[{"Abs", "@", 
        RowBox[{"InverseFourier", "[", 
         SuperscriptBox["pearsonf", "n"], "]"}]}]}], "]"}], ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Numerically evaluated probability to be at a certain\\nposition \
after n steps. Notice how for small n\\nthe shape is extremely complicated \
but tend to\\nlook more and more smooth for large n.\>\""}]}], " ", "]"}], 
   " ", ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "1", ",", "30", ",", "1"}], "}"}], ",", " ", 
   RowBox[{"Initialization", "\[RuleDelayed]", " ", 
    RowBox[{"(", 
     RowBox[{
      RowBox[{"pearsonf", "=", 
       RowBox[{"Fourier", "[", 
        RowBox[{
         RowBox[{"DiskMatrix", "[", 
          RowBox[{"30", ",", "512"}], "]"}], "-", 
         RowBox[{"DiskMatrix", "[", 
          RowBox[{
           RowBox[{"30", "-", "1"}], ",", "512"}], "]"}]}], "]"}]}], ";"}], 
     ")"}]}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521285330304605*^9, 3.521285570211422*^9}, {
  3.521285646412108*^9, 3.521285760466665*^9}, {3.52128579993892*^9, 
  3.521285810144954*^9}, {3.521285864754914*^9, 3.521286192674813*^9}, {
  3.521286255537284*^9, 3.521286289242564*^9}, {3.521286323795221*^9, 
  3.521286468288421*^9}, {3.521441221565724*^9, 3.521441254035594*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 1, 30, 1}}, Typeset`size$$ = {
    540., {318., 328.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`n$45504$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$45504$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> ArrayPlot[
        If[
         IntegerQ[$CellContext`n$$/2], 
         RotateRight[
          Abs[
           InverseFourier[$CellContext`pearsonf^$CellContext`n$$]], {256, 
          256}], 
         Abs[
          InverseFourier[$CellContext`pearsonf^$CellContext`n$$]]], PlotLabel -> 
        "Numerically evaluated probability to be at a certain\nposition after \
n steps. Notice how for small n\nthe shape is extremely complicated but tend \
to\nlook more and more smooth for large n."], 
      "Specifications" :> {{$CellContext`n$$, 1, 30, 1}}, "Options" :> {}, 
      "DefaultOptions" :> {}],
     ImageSizeCache->{606., {381., 389.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`pearsonf = 
       Fourier[DiskMatrix[30, 512] - DiskMatrix[30 - 1, 512]]; Null); 
     Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Manipulate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.521285472516652*^9, 3.521285500973339*^9}, 
   3.52128553984039*^9, {3.521285669967028*^9, 3.521285687916514*^9}, 
   3.521285762674699*^9, {3.521285800559247*^9, 3.521285810488032*^9}, {
   3.521285875968953*^9, 3.521286040448594*^9}, 3.521286193725775*^9, {
   3.521286278080581*^9, 3.521286292189658*^9}, {3.521286331189526*^9, 
   3.521286341639395*^9}, {3.521286426085105*^9, 3.52128646919413*^9}, 
   3.521354740104502*^9, 3.521441255604795*^9}]
}, {2}]],

Cell[TextData[{
 "Pearson himself was not able to have a analytical solution for n>2 and one \
of the Nature readers showed that for n=3 a solution could be found in terms \
of elliptic integrals. A completely different approach was proposed by Lord \
Rayleigh. He suggested, in analogy with a similar problem in acoustics, that \
if we do not search ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", "n"], "(", "r", ")"}], TraditionalForm]]],
 " for every n but only its asymptotic form when n is large then the solution \
is extremely simple: ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubscriptBox["P", "n"], "(", "r", ")"}], "\[Proportional]", 
    SuperscriptBox["e", 
     RowBox[{"-", 
      FractionBox[
       SuperscriptBox["r", "2"], "n"]}]]}], TraditionalForm]]],
 ". To understand the reason and the consequences of this elegant solution we \
must first discuss the Central Limit Theorem.\n\n",
 StyleBox["Question:",
  FontWeight->"Bold"],
 " Can you write down explicitly the analytical probability distribution to \
be at a given position after 2 steps? And after 3?"
}], "Text",
 CellChangeTimes->{{3.521355189087454*^9, 3.521355210124335*^9}, {
   3.521355373854196*^9, 3.521355386076684*^9}, {3.521355445388943*^9, 
   3.521355549116757*^9}, {3.521355673909025*^9, 3.521355732445008*^9}, {
   3.5213558701528*^9, 3.521355988429355*^9}, {3.521356105792511*^9, 
   3.521356134607528*^9}, 3.521356178081343*^9, {3.52145111159506*^9, 
   3.521451129370306*^9}, {3.52145116019954*^9, 3.521451206945947*^9}, {
   3.521458533004011*^9, 3.521458535459685*^9}, {3.522048168611195*^9, 
   3.522048251172234*^9}}],

Cell[CellGroupData[{

Cell["The Central Limit Theorem", "Subsubsection",
 CellChangeTimes->{{3.521270140521571*^9, 3.521270155095339*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Manipulate", "[", 
  RowBox[{
   RowBox[{"GraphicsColumn", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Histogram", "[", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Sum", "[", 
            RowBox[{
             RowBox[{"RandomReal", "[", "]"}], ",", 
             RowBox[{"{", 
              RowBox[{"i", ",", "n"}], "}"}]}], "]"}], ",", 
           RowBox[{"{", "5000", "}"}]}], "]"}], ",", " ", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<Sum of \>\"", "<>", 
           RowBox[{"ToString", "[", "n", "]"}], "<>", 
           "\"\< flat distributions\\n(converges fast)\>\""}]}]}], "]"}], ",", 
       RowBox[{"Histogram", "[", 
        RowBox[{
         RowBox[{"Table", "[", 
          RowBox[{
           RowBox[{"Total", "[", 
            RowBox[{"RandomVariate", "[", 
             RowBox[{
              RowBox[{"LogNormalDistribution", "[", 
               RowBox[{"2", ",", "0.5"}], "]"}], ",", "n"}], "]"}], " ", 
            "]"}], ",", 
           RowBox[{"{", "5000", "}"}]}], "]"}], ",", " ", 
         RowBox[{"PlotLabel", "\[Rule]", 
          RowBox[{"\"\<Sum of \>\"", "<>", 
           RowBox[{"ToString", "[", "n", "]"}], "<>", 
           "\"\< Log-normal distributions\\n(converges slowly)\>\""}]}]}], 
        "]"}]}], "}"}], ",", " ", 
     RowBox[{"ImageSize", "\[Rule]", "Medium"}]}], "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"n", ",", "1", ",", "50", ",", "1"}], "}"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521263507266528*^9, 3.521263646458789*^9}, {
   3.521266097547512*^9, 3.521266120962949*^9}, {3.521266156372179*^9, 
   3.521266156555105*^9}, {3.521266929292819*^9, 3.521267033438144*^9}, {
   3.521267139718075*^9, 3.521267179143433*^9}, {3.521267370848925*^9, 
   3.521267379980947*^9}, {3.521267431382264*^9, 3.521267435230141*^9}, {
   3.521267708439222*^9, 3.521267774685029*^9}, {3.521452562181659*^9, 
   3.521452592981674*^9}, 3.521452808235331*^9, {3.521452921947625*^9, 
   3.521452950264969*^9}, {3.521453004681667*^9, 3.521453066316056*^9}, {
   3.523278249645834*^9, 3.523278261424215*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 1, 50, 1}}, Typeset`size$$ = {
    540., {313., 323.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`n$1402$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$1402$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         Histogram[
          Table[
           Sum[
            RandomReal[], {$CellContext`i, $CellContext`n$$}], {5000}], 
          PlotLabel -> StringJoin["Sum of ", 
            ToString[$CellContext`n$$], 
            " flat distributions\n(converges fast)"]], 
         Histogram[
          Table[
           Total[
            RandomVariate[
             LogNormalDistribution[2, 0.5], $CellContext`n$$]], {5000}], 
          PlotLabel -> StringJoin["Sum of ", 
            ToString[$CellContext`n$$], 
            " Log-normal distributions\n(converges slowly)"]]}, ImageSize -> 
        Medium], "Specifications" :> {{$CellContext`n$$, 1, 50, 1}}, 
      "Options" :> {}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {376., 384.}},
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
  3.521267185896221*^9, 3.521267381865228*^9, 3.521267438068104*^9, 
   3.521267664124494*^9, {3.521267713225231*^9, 3.521267776226222*^9}, 
   3.521452595416839*^9, 3.521452809805176*^9, {3.52145293544833*^9, 
   3.521452951550214*^9}, {3.521453019874009*^9, 3.52145306756335*^9}, 
   3.521453110799982*^9, {3.523278254396683*^9, 3.523278261960061*^9}}]
}, {2}]],

Cell[TextData[{
 "The Central Limit Theorem (CLT) states that, if ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "i"], TraditionalForm]]],
 " (with i from 1 to N) is a set of independent random variables distributed \
as P(x) and if P(x) has a finite variance, then the sum ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    UnderscriptBox["lim", 
     RowBox[{"N", "\[Rule]", "\[Infinity]"}]], " ", 
    RowBox[{
     UnderoverscriptBox["\[Sum]", 
      RowBox[{"i", "=", "1"}], "N"], 
     SubscriptBox["x", "i"]}]}], TraditionalForm]]],
 " is normally distributed, independently from the particular shape of P(x). \
In the case of a random walk the final position after a certain time is the \
sum of N independent steps; thus, as long as the step length distribution has \
a finite variance, the distribution after many steps (large N) will be \
approximately Gaussian independently from the shape of ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    SubscriptBox["P", "1"], "(", "r", ")"}], TraditionalForm]]],
 ".\nA common (and logic) question is how large N has to be before we can \
forget the single step distribution and just pretend that everything is \
normally distributed. Sadly there is not a unique answer; smooth and \
symmetric distribution converge to a Gaussian very fast (starting with a flat \
distributions one gets an almost perfect Gaussian already for N~5), while \
long-tailed and asymmetric distributions can take an enormous amount of time.\
\n\n",
 StyleBox["Question:",
  FontWeight->"Bold"],
 " What happens when the ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "i"], TraditionalForm]]],
 " are identically distributed but not independent?"
}], "Text",
 CellChangeTimes->{{3.521451323345633*^9, 3.521451355503449*^9}, {
   3.521451424759817*^9, 3.521451580582823*^9}, {3.521451634536439*^9, 
   3.521451665288011*^9}, {3.521451701201446*^9, 3.52145170842927*^9}, {
   3.521451794497643*^9, 3.521451865455779*^9}, {3.521451913120099*^9, 
   3.521451937104128*^9}, {3.521452032776281*^9, 3.521452033578103*^9}, {
   3.52145208633613*^9, 3.521452159295226*^9}, {3.521452201814204*^9, 
   3.521452260071837*^9}, {3.521452316632029*^9, 3.521452426120177*^9}, {
   3.52145282375272*^9, 3.521452830167714*^9}, 3.521453123768641*^9, 
   3.52145857610526*^9, 3.522047300855259*^9, {3.522047345540363*^9, 
   3.522047345727376*^9}, {3.522048266615546*^9, 3.522048296604199*^9}, {
   3.522052432402911*^9, 3.522052434247536*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["The diffusion equation", "Subsubsection",
 CellChangeTimes->{{3.521270175351609*^9, 3.521270195982575*^9}}],

Cell[TextData[{
 "If we neglect a initial transient (i.e. we limit ourself to the case of \
large N) we can find how the probability to find our walker at a given \
position evolves with time. To do that we start writing the probability \
density function of a walker to be at a position x at a time t as a function \
of the probability it was at a position ",
 Cell[BoxData[
  FormBox[
   SubscriptBox["x", "1"], TraditionalForm]]],
 " at a previous time t-\[Delta]t as:\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", "(", 
     RowBox[{"x", ",", "t"}], ")"}], "=", 
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      RowBox[{"P", "(", 
       RowBox[{
        SubscriptBox["x", "1"], ",", 
        RowBox[{"t", "-", "\[Delta]t"}]}], ")"}], 
      RowBox[{"f", "(", 
       RowBox[{"x", "-", 
        SubscriptBox["x", "1"]}], ")"}], 
      RowBox[{"\[DifferentialD]", 
       SubscriptBox["x", "1"]}]}]}]}], TraditionalForm]]],
 " where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"f", "(", 
    RowBox[{"x", "-", 
     SubscriptBox["x", "1"]}]}], TraditionalForm]]],
 ") is the probability to make a step of length ",
 Cell[BoxData[
  FormBox[
   RowBox[{"x", "-", 
    SubscriptBox["x", "1"]}], TraditionalForm]]],
 ".\nIf we assume that the walker moves at a finite velocity the maximum \
distance covered in an infinitesimal time interval \[Delta]t will also be \
short and thus we can expand around x and t to obtain\n",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     RowBox[{"P", "(", 
      RowBox[{
       SubscriptBox["x", "1"], ",", 
       RowBox[{"t", "-", "\[Delta]t"}]}], ")"}], " ", "~", 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}], "-", 
    RowBox[{"\[Delta]t", " ", 
     FractionBox["d", "dt"], 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}], "-", 
    RowBox[{"\[Delta]x", 
     FractionBox["d", "dx"], 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}], "+", 
    RowBox[{
     FractionBox[
      SuperscriptBox["\[Delta]x", "2"], "2"], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox["dx", "2"]], 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}]}], TraditionalForm]]],
 "  where ",
 Cell[BoxData[
  FormBox[
   RowBox[{"\[Delta]x", "=", 
    RowBox[{"x", "-", 
     SubscriptBox["x", "1"]}]}], TraditionalForm]]],
 ".\nWe can safely assume f(\[Delta]x) to be a symmetric distribution (it is \
as likely to move on the right as it is to move on the left) and therefore \
the following identities hold:\n\[FilledSmallCircle] ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      RowBox[{"f", "(", "\[Delta]x", ")"}], 
      RowBox[{"\[DifferentialD]", "\[Delta]x"}]}]}], "=", "1"}], 
   TraditionalForm]]],
 "  (normalization)\n\[FilledSmallCircle] ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{"\[Delta]x", " ", 
      RowBox[{"f", "(", "\[Delta]x", ")"}], 
      RowBox[{"\[DifferentialD]", "\[Delta]x"}]}]}], "=", "0"}], 
   TraditionalForm]]],
 " (symmetry)\n\[FilledSmallCircle] ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     SubsuperscriptBox["\[Integral]", 
      RowBox[{"-", "\[Infinity]"}], "\[Infinity]"], 
     RowBox[{
      SuperscriptBox["\[Delta]x", "2"], 
      RowBox[{"f", "(", "\[Delta]x", ")"}], 
      RowBox[{"\[DifferentialD]", "\[Delta]x"}]}]}], "=", 
    SuperscriptBox["\[Sigma]", "2"]}], TraditionalForm]]],
 " (finite variance)\nSubstituting in the equation for P(x,t) and simplifying \
we finally get ",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{
     FractionBox["d", "dt"], 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}], "=", 
    RowBox[{
     FractionBox[
      SuperscriptBox["\[Sigma]", "2"], 
      RowBox[{"2", " ", "\[Delta]t"}]], 
     FractionBox[
      SuperscriptBox["d", "2"], 
      SuperscriptBox["dx", "2"]], 
     RowBox[{"P", "(", 
      RowBox[{"x", ",", "t"}], ")"}]}]}], TraditionalForm]]],
 " that is known as the diffusion equation (with diffusion constant ",
 Cell[BoxData[
  FormBox[
   RowBox[{"D", "=", 
    FractionBox[
     SuperscriptBox["\[Sigma]", "2"], 
     RowBox[{"2", " ", "\[Delta]t"}]]}], TraditionalForm]]],
 "). It comes to no surprise that the solution of the diffusion equation is \
",
 Cell[BoxData[
  FormBox[
   RowBox[{
    RowBox[{"P", 
     RowBox[{"(", 
      RowBox[{"x", ",", "t"}], ")"}]}], "=", 
    RowBox[{
     FractionBox["1", 
      SqrtBox[
       RowBox[{"4", " ", "\[Pi]", " ", "D", " ", "t"}]]], 
     SuperscriptBox["e", 
      RowBox[{"-", 
       FractionBox[
        RowBox[{"|", "x", 
         SuperscriptBox["|", "2"]}], 
        RowBox[{"4", " ", "D", " ", "t"}]]}]]}]}], TraditionalForm]]],
 ", i.e. a Gaussian distribution as predicted by the Central Limit Theorem, \
whose second moment increase with time as ",
 Cell[BoxData[
  FormBox[
   RowBox[{"<", 
    SuperscriptBox["r", "2"], ">=", 
    RowBox[{"2", "D", " ", "t"}]}], TraditionalForm]]],
 "."
}], "Text",
 CellChangeTimes->{{3.521453549422195*^9, 3.521453562407789*^9}, {
   3.521454794978334*^9, 3.521454832632343*^9}, {3.521454869321104*^9, 
   3.521454885872209*^9}, {3.521454941040787*^9, 3.521454950160287*^9}, {
   3.521454980264687*^9, 3.521455203217534*^9}, {3.521455244258295*^9, 
   3.521455276312866*^9}, {3.521455313091621*^9, 3.521455378657857*^9}, {
   3.521455436053623*^9, 3.521455569536831*^9}, {3.521455605720831*^9, 
   3.521455763949236*^9}, {3.521455803425238*^9, 3.52145587744945*^9}, {
   3.521455929584783*^9, 3.52145593282507*^9}, {3.521456153876593*^9, 
   3.521456483612051*^9}, {3.521456575258343*^9, 3.521456765727747*^9}, 
   3.521456801082598*^9, {3.522047472009442*^9, 3.522047512120032*^9}, {
   3.522052444414651*^9, 3.522052445920395*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"GraphicsColumn", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"Plot", "[", 
       RowBox[{
        RowBox[{
         FractionBox["1", 
          SqrtBox[
           RowBox[{"4", " ", "\[Pi]", " ", "t"}]]], 
         SuperscriptBox["\[ExponentialE]", 
          FractionBox[
           RowBox[{"-", 
            SuperscriptBox[
             RowBox[{"Abs", "[", "x", "]"}], "2"]}], 
           RowBox[{"4", " ", "t"}]]]}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", 
          RowBox[{"-", "5"}], ",", "5"}], "}"}], ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"0", ",", "1"}], "}"}]}], ",", " ", 
        RowBox[{"PlotStyle", "\[Rule]", " ", 
         RowBox[{"{", 
          RowBox[{"Blue", ",", "Thick"}], "}"}]}], ",", " ", 
        RowBox[{"AxesLabel", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{"\"\<x\>\"", ",", "\"\<P(x,t)\>\""}], "}"}]}]}], "]"}], ",", 
      RowBox[{"Show", "[", 
       RowBox[{
        RowBox[{"Plot", "[", 
         RowBox[{
          SqrtBox[
           RowBox[{"2", " ", "t"}]], ",", 
          RowBox[{"{", 
           RowBox[{"t", ",", "0", ",", "5"}], "}"}], ",", 
          RowBox[{"PlotStyle", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{"Red", ",", "Dashed"}], "}"}]}], ",", 
          RowBox[{"Frame", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"True", ",", "False"}], "}"}]}], "}"}]}], ",", 
          RowBox[{"Axes", "\[Rule]", " ", "False"}], ",", 
          RowBox[{"FrameLabel", "\[Rule]", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{
              "\"\<root mean square\\ndisplacement\>\"", ",", "None"}], "}"}],
              ",", 
             RowBox[{"{", 
              RowBox[{"\"\<Time\>\"", ",", "None"}], "}"}]}], "}"}]}]}], 
         "]"}], ",", 
        RowBox[{"Graphics", "[", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"PointSize", "[", "0.02", "]"}], ",", 
           RowBox[{"Point", "[", 
            RowBox[{"{", 
             RowBox[{"t", ",", 
              SqrtBox[
               RowBox[{"2", " ", "t"}]]}], "}"}], "]"}]}], " ", "}"}], "]"}], 
        ",", 
        RowBox[{"PlotRange", "\[Rule]", 
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            RowBox[{"0", ",", "5"}], "}"}], ",", 
           RowBox[{"{", 
            RowBox[{"0", ",", "4"}], "}"}]}], "}"}]}]}], "]"}]}], "}"}], 
    "]"}], ",", 
   RowBox[{"{", 
    RowBox[{"t", ",", "0.1", ",", "5", ",", "0.0001"}], "}"}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521266308246757*^9, 3.521266748678052*^9}, {
  3.521441349286112*^9, 3.521441360077725*^9}, {3.521441517805163*^9, 
  3.521441649337021*^9}, {3.52144170919519*^9, 3.521441724194731*^9}, {
  3.521441772374319*^9, 3.521441833072465*^9}, {3.52145316282345*^9, 
  3.521453323764058*^9}}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`t$$ = 0.1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`t$$], 0.1, 5, 0.0001}}, Typeset`size$$ = {
    540., {313., 323.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = True, $CellContext`t$201434$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`t$$ = 0.1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`t$$, $CellContext`t$201434$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> GraphicsColumn[{
         Plot[(1/((4 Pi) $CellContext`t$$)^Rational[1, 2]) 
          E^((-Abs[$CellContext`x]^2)/(
            4 $CellContext`t$$)), {$CellContext`x, -5, 5}, 
          PlotRange -> {0, 1}, PlotStyle -> {Blue, Thick}, 
          AxesLabel -> {"x", "P(x,t)"}], 
         Show[
          
          Plot[(2 $CellContext`t$$)^Rational[1, 2], {$CellContext`t$$, 0, 5}, 
           PlotStyle -> {Red, Dashed}, 
           Frame -> {{True, False}, {True, False}}, Axes -> False, 
           FrameLabel -> {{"root mean square\ndisplacement", None}, {
             "Time", None}}], 
          Graphics[{
            PointSize[0.02], 
            Point[{$CellContext`t$$, (2 $CellContext`t$$)^Rational[1, 2]}]}], 
          PlotRange -> {{0, 5}, {0, 4}}]}], 
      "Specifications" :> {{$CellContext`t$$, 0.1, 5, 0.0001, 
         AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {365., 373.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{{3.521266394457882*^9, 3.521266496430206*^9}, 
   3.52126658989017*^9, {3.521266639065954*^9, 3.52126665493203*^9}, {
   3.521266712788227*^9, 3.521266751265861*^9}, 3.521354760165551*^9, 
   3.521441361300924*^9, {3.521441519114319*^9, 3.521441599817851*^9}, 
   3.521441651055628*^9, {3.521441687906826*^9, 3.521441726237828*^9}, {
   3.521441764342772*^9, 3.521441833592211*^9}, 3.521453198437847*^9, {
   3.521453284078688*^9, 3.521453324324299*^9}}]
}, {2}]]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell["Conclusions", "Subsection",
 CellChangeTimes->{{3.521456888541393*^9, 3.521456898829589*^9}}],

Cell["\<\
Brownian motions, and more in general random walks, are stochastic processes \
that can be used to model very diverse phenomena, from random migrations to \
heat transport. While it is not possible to obtain the equations of motion it \
is nevertheless possible to study how the probability to be at a given \
position evolves with time. It turns out that this probability evolves \
following the diffusion equation, allowing for a simple and compact formalism \
to describe such phenomena.\
\>", "Text",
 CellChangeTimes->{{3.521456921679896*^9, 3.521457137208935*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["References", "Section",
 CellChangeTimes->{{3.52204658710558*^9, 3.522046596542175*^9}}],

Cell[TextData[{
 "[1] M.F. Shlesinger, ",
 StyleBox["\"Physics in the noise\"",
  FontSlant->"Italic"],
 ", Nature ",
 StyleBox["411",
  FontWeight->"Bold"],
 ", 641 (2001).\n[2] R. Brown, ",
 StyleBox["\"A brief account of microscopical observations made in the months \
of June, July and August, 1827, on the particles contained in the pollen of \
plants; and on the general existence of active molecules in organic and \
inorganic bodies.\[CloseCurlyDoubleQuote]",
  FontSlant->"Italic"],
 ", Philosophical Magazine (1828).\n[3] A. Einstein, ",
 StyleBox["\[OpenCurlyDoubleQuote]\[CapitalUDoubleDot]ber die von der \
molekularkinetischen Theorie der W\[ADoubleDot]rme geforderte Bewegung von in \
ruhenden Fl\[UDoubleDot]ssigkeiten suspendierten Teilchen\
\[CloseCurlyDoubleQuote]",
  FontSlant->"Italic"],
 ", Annalen der Physik ",
 StyleBox["17",
  FontWeight->"Bold"],
 ", 549 (1905).\n[4] K. Pearson, ",
 StyleBox["\"The problem of the random walk\"",
  FontSlant->"Italic"],
 ", Nature ",
 StyleBox["72",
  FontWeight->"Bold"],
 ", 1865 (1905)."
}], "Text",
 CellChangeTimes->{{3.522046617284922*^9, 3.522046676587974*^9}, 
   3.522046720004198*^9, {3.522046801040373*^9, 3.522046849732385*^9}, {
   3.522046910664647*^9, 3.522046951291877*^9}, {3.522047111479553*^9, 
   3.522047173699748*^9}, {3.523335628717241*^9, 3.523335629148988*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Further readings", "Section",
 CellChangeTimes->{{3.522047527643491*^9, 3.522047535622621*^9}}],

Cell[TextData[{
 "\[FilledSmallCircle] Ping Sheng, ",
 StyleBox["\[OpenCurlyDoubleQuote]Introduction to Wave Scattering, \
Localization and Mesoscopic Phenomena\[CloseCurlyDoubleQuote]",
  FontSlant->"Italic"],
 ", Academic press (1995).\n\[FilledSmallCircle] Eric Akkermans and Gilles \
Montambaux, ",
 StyleBox["\[OpenCurlyDoubleQuote]Mesoscopic Physics of Electrons and Photons\
\[CloseCurlyDoubleQuote]",
  FontSlant->"Italic"],
 ", Cambridge University Press (2007)."
}], "Text",
 CellChangeTimes->{{3.522047541842395*^9, 3.522047550468076*^9}, {
  3.522047685492086*^9, 3.522047726995977*^9}, {3.522047851499991*^9, 
  3.522047881964268*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell["Advanced topic : L\[EAcute]vy Flights", "Section",
 CellChangeTimes->{{3.521457142103062*^9, 3.52145716267269*^9}}],

Cell["\<\
Our derivation of the diffusion equation assumes that f(\[Delta]x) decays \
fast enough to have a finite variance. Analogously the Central Limit Theorem \
also assumes a finite variance for the step length distribution. It is \
therefore interesting to consider what happens when this hypothesis ceases to \
be valid. This is not only a purely academic question since many of the \
commonly used distribution in Physics and other sciences actually do not have \
a finite variance (think about the Cauchy distribution). Random walks where \
the step length distribution has a divergent second moment are known as \"L\
\[EAcute]vy flights\" after the French mathematician Paul Pierre L\[EAcute]vy \
and where originally studied by Mandelbrot.\
\>", "Text",
 CellChangeTimes->{{3.521457196000861*^9, 3.521457362688778*^9}, {
  3.521457398810581*^9, 3.521457559785305*^9}, {3.521458221209449*^9, 
  3.521458255841061*^9}, {3.521458299153783*^9, 3.521458338696875*^9}, {
  3.521458597867379*^9, 3.521458601355342*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Animate", "[", 
  RowBox[{
   RowBox[{"Show", "[", 
    RowBox[{
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Gray", ",", 
        RowBox[{"Line", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", 
           RowBox[{"1", ";;", "n"}], "]"}], "]"}], " ", "]"}]}], "}"}], " ", 
      "]"}], ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Red", ",", 
        RowBox[{"PointSize", "[", "0.01", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", "1", "]"}], "]"}], " ", "]"}]}], " ", "}"}], "]"}], 
     ",", "\[IndentingNewLine]", 
     RowBox[{"Graphics", "[", 
      RowBox[{"{", 
       RowBox[{"Black", ",", 
        RowBox[{"PointSize", "[", "0.01", "]"}], ",", 
        RowBox[{"Point", "[", 
         RowBox[{"levy", "[", 
          RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}], "}"}], " ", "]"}], 
     ",", 
     RowBox[{
     "PlotLabel", "\[Rule]", 
      "\"\<Path of a L\[EAcute]vy flight.\\nThe red dot represent the \
starting point.\>\""}]}], "]"}], ",", 
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
          RowBox[{"1", ",", "1.5", ",", "0", ",", "0", ",", "1"}], "]"}], ",",
          "1000"}], "]"}]}], ";", 
      RowBox[{"levy", "=", 
       RowBox[{"Accumulate", "[", 
        RowBox[{"Table", "[", 
         RowBox[{
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
               RowBox[{"[", "n", "]"}], "]"}], " ", "]"}]}]}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"n", ",", "1", ",", "1000"}], "}"}]}], "]"}], " ", "]"}]}],
       " ", ";"}], "\[IndentingNewLine]", ")"}]}], ",", 
   RowBox[{"AnimationRunning", "\[Rule]", "False"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.521457713775175*^9, 3.521457772716233*^9}, {
   3.521457828602376*^9, 3.521457917350457*^9}, {3.521457978342416*^9, 
   3.521457982302528*^9}, 3.52145801651313*^9, {3.521458055458763*^9, 
   3.521458064344899*^9}, {3.521458129522897*^9, 3.521458154534695*^9}, {
   3.521460379287824*^9, 3.521460420300233*^9}, 3.522046099920992*^9}],

Cell[BoxData[
 TagBox[
  StyleBox[
   DynamicModuleBox[{$CellContext`n$$ = 1, Typeset`show$$ = True, 
    Typeset`bookmarkList$$ = {}, Typeset`bookmarkMode$$ = "Menu", 
    Typeset`animator$$, Typeset`animvar$$ = 1, Typeset`name$$ = 
    "\"untitled\"", Typeset`specs$$ = {{
      Hold[$CellContext`n$$], 1, 1000, 1}}, Typeset`size$$ = {
    540., {290., 300.}}, Typeset`update$$ = 0, Typeset`initDone$$, 
    Typeset`skipInitDone$$ = False, $CellContext`n$1156$$ = 0}, 
    DynamicBox[Manipulate`ManipulateBoxes[
     1, StandardForm, "Variables" :> {$CellContext`n$$ = 1}, 
      "ControllerVariables" :> {
        Hold[$CellContext`n$$, $CellContext`n$1156$$, 0]}, 
      "OtherVariables" :> {
       Typeset`show$$, Typeset`bookmarkList$$, Typeset`bookmarkMode$$, 
        Typeset`animator$$, Typeset`animvar$$, Typeset`name$$, 
        Typeset`specs$$, Typeset`size$$, Typeset`update$$, Typeset`initDone$$,
         Typeset`skipInitDone$$}, "Body" :> Show[
        Graphics[{Gray, 
          Line[
           Part[$CellContext`levy, 
            Span[1, $CellContext`n$$]]]}], 
        Graphics[{Red, 
          PointSize[0.01], 
          Point[
           Part[$CellContext`levy, 1]]}], 
        Graphics[{Black, 
          PointSize[0.01], 
          Point[
           Part[$CellContext`levy, $CellContext`n$$]]}], PlotLabel -> 
        "Path of a L\[EAcute]vy flight.\nThe red dot represent the staring \
point."], 
      "Specifications" :> {{$CellContext`n$$, 1, 1000, 1, DisplayAllSteps -> 
         True, AnimationRate -> 15, AnimationRunning -> False, 
         AppearanceElements -> {
          "ProgressSlider", "PlayPauseButton", "FasterSlowerButtons", 
           "DirectionButton"}}}, 
      "Options" :> {
       ControlType -> Animator, AppearanceElements -> None, DefaultBaseStyle -> 
        "Animate", DefaultLabelStyle -> "AnimateLabel", SynchronousUpdating -> 
        True, ShrinkingDelay -> 10.}, "DefaultOptions" :> {}],
     ImageSizeCache->{606., {342., 350.}},
     SingleEvaluation->True],
    Deinitialization:>None,
    DynamicModuleValues:>{},
    Initialization:>(($CellContext`\[Theta] = Table[
         RandomReal[{0, 2 Pi}], {1000}]; $CellContext`a = RandomVariate[
         StableDistribution[1, 1.5, 0, 0, 1], 1000]; $CellContext`levy = 
       Accumulate[
         Table[{Part[$CellContext`a, $CellContext`n$$] Cos[
             Part[$CellContext`\[Theta], $CellContext`n$$]], 
           Part[$CellContext`a, $CellContext`n$$] Sin[
             
             Part[$CellContext`\[Theta], $CellContext`n$$]]}, \
{$CellContext`n$$, 1, 1000}]]; Null); Typeset`initDone$$ = True),
    SynchronousInitialization->True,
    UnsavedVariables:>{Typeset`initDone$$},
    UntrackedVariables:>{Typeset`size$$}], "Animate",
   Deployed->True,
   StripOnInput->False],
  Manipulate`InterpretManipulate[1]]], "Output",
 CellChangeTimes->{
  3.521457924538721*^9, 3.521457985727961*^9, 3.521458017805004*^9, 
   3.521458066244885*^9, 3.521458157437596*^9, 3.521460362526006*^9, {
   3.521460395437644*^9, 3.521460420797357*^9}}]
}, {2}]],

Cell[TextData[{
 "Looking at such random walk it is immediately apparent that, compared with \
a Brownian motion, the area is explored much faster and in much larger steps. \
It is also striking that there are a few steps that are so long that they \
dominate the whole appearance of the trajectory.\n\n",
 StyleBox["Question:",
  FontWeight->"Bold"],
 " How many distributions without a finite variance can you think about?"
}], "Text",
 CellChangeTimes->{{3.521458355035814*^9, 3.521458470249354*^9}, {
  3.522048338162998*^9, 3.522048378182713*^9}}]
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
WindowSize->{949, 1002},
WindowMargins->{{Automatic, 51}, {Automatic, -10}},
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
Cell[572, 22, 156, 4, 217, "Title"],
Cell[731, 28, 642, 13, 214, "Text"],
Cell[CellGroupData[{
Cell[1398, 45, 104, 1, 57, "Subsection"],
Cell[1505, 48, 1282, 19, 246, "Text"],
Cell[CellGroupData[{
Cell[2812, 71, 2353, 57, 1500, "Input"],
Cell[5168, 130, 2922, 56, 690, "Output"]
}, {2}]],
Cell[8102, 189, 1815, 28, 375, "Text",
 CellGroupingRules->"NormalGrouping"]
}, Open  ]],
Cell[CellGroupData[{
Cell[9954, 222, 115, 1, 57, "Subsection"],
Cell[10072, 225, 451, 8, 119, "Text"],
Cell[CellGroupData[{
Cell[10548, 237, 3304, 80, 2139, "Input"],
Cell[13855, 319, 3267, 67, 716, "Output"]
}, {2}]],
Cell[17134, 389, 1038, 17, 247, "Text"],
Cell[18175, 408, 3194, 72, 389, "Text"],
Cell[CellGroupData[{
Cell[21394, 484, 1761, 43, 1977, "Input"],
Cell[23158, 529, 2543, 51, 794, "Output"]
}, {2}]],
Cell[25713, 583, 1650, 35, 292, "Text"],
Cell[CellGroupData[{
Cell[27388, 622, 116, 1, 40, "Subsubsection"],
Cell[CellGroupData[{
Cell[27529, 627, 2158, 48, 307, "Input"],
Cell[29690, 677, 2413, 51, 784, "Output"]
}, {2}]],
Cell[32115, 731, 2448, 50, 354, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[34600, 786, 113, 1, 40, "Subsubsection"],
Cell[34716, 789, 6004, 172, 685, "Text"],
Cell[CellGroupData[{
Cell[40745, 965, 3129, 84, 2322, "Input"],
Cell[43877, 1051, 3049, 60, 762, "Output"]
}, {2}]]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[46984, 1118, 99, 1, 57, "Subsection"],
Cell[47086, 1121, 580, 9, 170, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[47703, 1135, 94, 1, 110, "Section"],
Cell[47800, 1138, 1349, 33, 257, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49186, 1176, 101, 1, 110, "Section"],
Cell[49290, 1179, 648, 14, 123, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49975, 1198, 121, 1, 110, "Section"],
Cell[50099, 1201, 1023, 15, 229, "Text"],
Cell[CellGroupData[{
Cell[51147, 1220, 3181, 80, 2443, "Input"],
Cell[54331, 1302, 3056, 65, 716, "Output"]
}, {2}]],
Cell[57399, 1370, 552, 10, 145, "Text"]
}, Open  ]],
Cell[CellGroupData[{
Cell[57988, 1385, 93, 1, 110, "Section"],
Cell[58084, 1388, 2081, 32, 724, "Text"]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 7v0FqNlDkPmzqCwuLehHSXvf *)
