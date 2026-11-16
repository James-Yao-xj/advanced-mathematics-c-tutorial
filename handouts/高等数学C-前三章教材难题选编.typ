// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "高等数学 C · 教材难题选编"
#let doc-subtitle = "前三章章后习题"
#let doc-meta = "周建莹、张锦炎《高等数学（生化医农类，上）》"
#let doc-running-header = "高等数学 C · 教材难题选编"

#import "@preview/ctyp:0.3.0": ctyp
#let (ctypset, cjk) = ctyp()
#let (song, hei, kai, fang) = cjk
#show: ctypset

#set page(
  paper: "a4",
  margin: (top: 1.7cm, bottom: 1.5cm, left: 1cm, right: 1cm),
  header: context [
    #text(10pt, black)[
      #align(center)[#doc-running-header]]
    #line(length: 100%, stroke: gray)
  ],
  footer: context [
    #set align(center)
    #counter(page).display("1")
  ]
)

#set heading(numbering: "1.")

#align(center)[
  #text(size: 24pt, weight: "bold")[#doc-title]\
  #text(size: 24pt)[#doc-subtitle]
  #v(5pt)
  #text(size: 16pt)[#emph[#doc-meta]]
]

// GoodTypst:content
本讲义按教材顺序精选证明、综合计算和建模难题，保留作答空间，不附解析。难度为相对本节常规习题的教学判断；题目来源用教材习题号及印刷页码标注。几何题补充必要的文字条件以便脱离原图使用。

= 第一章　微积分的准备知识

*题 1　数列极限的证明*　#text(size: 9pt)[习题 1.4 · 23，p.42]

证明 $lim_(n -> infinity) root(n,n)=1$。

#v(52mm)

*题 2　单调有界与估计*　#text(size: 9pt)[习题 1.5 · 17，p.57]

证明下列数列的极限存在：
$ x_n=sum_(k=1)^n 1/k^2; quad y_n=sum_(k=1)^n 1/(3^k+5^k). $

#v(52mm)

#pagebreak()
*题 3　递推、夹逼与主导项*　#text(size: 9pt)[习题 1.5 · 18，p.57]

求下列数列的极限：
(1) $x_1=sqrt(2)$，$x_(n+1)=sqrt(2x_n)$；
(2) $x_n=sum_(k=1)^n 1/sqrt(n^2+k)$；
(3) $x_n=root(n,a_1^n+a_2^n+dots+a_k^n)$，其中 $a_i>0$，$k$ 为固定正整数。

#v(52mm)

*题 4　连续性与零点*　#text(size: 9pt)[习题 1.6 · 18，p.68]

证明：实系数奇数次代数方程至少有一个实根。

#v(52mm)

#pagebreak()
*题 5　从估计到连续*　#text(size: 9pt)[习题 1.6 · 21，p.68]

设函数 $f$ 在 $(a,b)$ 满足李卜希兹条件：存在常数 $L$，对任意 $x_1,x_2 in (a,b)$，均有
$ abs(f(x_2)-f(x_1))<=L abs(x_2-x_1). $
证明 $f$ 在 $(a,b)$ 连续。

#v(52mm)

*题 6　不动点存在性*　#text(size: 9pt)[习题 1.6 · 22，p.68]

设 $f$ 在 $[0,1]$ 连续，且 $0<=f(x)<=1$。证明：存在 $c in [0,1]$，使 $f(c)=c$。

#v(52mm)

#pagebreak()
= 第二章　微商与微分

*题 7　相关变化率*　#text(size: 9pt)[习题 2.2 · 25，p.88]

雷达探测器距火箭发射台的水平距离为 $400$ m。火箭在 $t=0$ 时垂直发射，$t>0$ 时高度为 $x(t)=4t^2$ m（在所讨论的飞行时段内）。雷达始终瞄准火箭，求发射后 $10$ s 时仰角 $theta(t)$ 的增加速率。

#v(52mm)

*题 8　隐函数与切线几何*　#text(size: 9pt)[习题 2.3 · 5，p.96]

证明：星形线
$ x^(2/3)+y^(2/3)=a^(2/3) quad (a>0) $
上任一点的切线被两坐标轴截得的线段长度为常数 $a$。在坐标轴交点处按极限切线理解。

#v(52mm)

#pagebreak()
*题 9　椭圆切线与反射性质*　#text(size: 9pt)[习题 2.3 · 24，p.97]

求椭圆 $x^2/a^2+y^2/b^2=1$ 在点 $M(x_0,y_0)$ 的切线及法线方程。证明：从椭圆一个焦点出发的光线，经椭圆反射后必经过另一个焦点。（$a,b>0$；反射角等于入射角。）

#v(52mm)

*题 10　导函数的结构*　#text(size: 9pt)[习题 2.3 · 33，p.98]

设 $f$ 在 $RR$ 上可导，证明：
(1) 若 $f$ 为奇（偶）函数，则 $f'$ 为偶（奇）函数；
(2) 若 $f$ 是以 $T$ 为周期的函数，则 $f'$ 也以 $T$ 为周期。

#v(52mm)

#pagebreak()
*题 11　高阶导数*　#text(size: 9pt)[习题 2.3 · 34，p.98]

设 $y=x^2 e^x$，求 $y^((10))$。

#v(52mm)

*题 12　微分与误差传播*　#text(size: 9pt)[习题 2.4 · 28，p.111]

设 $x>0$ 的相对误差不超过 $delta$，求常用对数 $y=lg x$ 的绝对误差范围。（按本节微分近似讨论。）

#v(52mm)

#pagebreak()
= 第三章　微分中值定理及其应用

*题 13　反复应用罗尔定理*　#text(size: 9pt)[习题 3.1 · 13，p.120]

证明：方程 $e^x=a x^2+b x+c$ 最多只有三个不同实根，其中 $a,b,c$ 为常数。

#v(52mm)

*题 14　构造辅助函数*　#text(size: 9pt)[习题 3.1 · 14，p.120]

设 $c_1,c_2,dots,c_n$ 为任意实数，证明函数
$ f(x)=sum_(k=1)^n c_k cos(k x) $
在 $(0,pi)$ 内必有零点。

#v(52mm)

#pagebreak()
*题 15　重根与导数的根*　#text(size: 9pt)[习题 3.1 · 15，p.120]

若 $n$ 次多项式 $P$ 在 $[a,b]$ 有 $n$ 个实根，证明 $P'$ 在 $[a,b]$ 有 $n-1$ 个实根，重根均按重数计。分别讨论全部单根、有一个 $n$ 重根以及单根和重根并存的情形。

#v(52mm)

*题 16　高阶导数与零点*　#text(size: 9pt)[习题 3.1 · 16，p.120]

证明勒让德多项式
$ P_n(x)=1/(2^n n!) (dif^n)/(dif x^n)[(x^2-1)^n] $
在 $[-1,1]$ 内有 $n$ 个零点。（$n$ 为正整数。）

#v(52mm)

#pagebreak()
*题 17　不等式的递进证明*　#text(size: 9pt)[习题 3.2 · 12，p.127]

证明：
(1) 当 $x>0$ 时，$x-x^3/6<sin x<x$；
(2) 当 $x>0$ 时，$x-x^2/2<ln(1+x)<x$。

#v(52mm)

*题 18　三角不等式*　#text(size: 9pt)[习题 3.2 · 13，p.127]

证明：当 $0<x<pi/2$ 时，
$ x/(sin x)<(tan x)/x. $

#v(52mm)

#pagebreak()
*题 19　最优化建模*　#text(size: 9pt)[习题 3.3 · 7，p.132]

两条宽分别为 $a$、$b$ 的河道垂直相交。若一艘船要从一条河道转入另一条，船的最大长度是多少？将船视为可在水面转向的线段，两岸相互平行且转弯处为直角，忽略船宽。

#v(52mm)

*题 20　几何约束与最值*　#text(size: 9pt)[习题 3.3 · 8，p.132]

在半径为 $a$ 的球内作内接正圆锥，使圆锥体积最大，求圆锥的高和底半径。

#v(52mm)

#pagebreak()
*题 21　不可导点与作图*　#text(size: 9pt)[习题 3.4 · 8，p.141]

研究函数 $y=(x+1)x^(2/3)$ 的定义域、单调区间、极值、凹凸区间与拐点，并画出图像。

#v(52mm)

*题 22　无穷小阶与幂指型极限*　#text(size: 9pt)[习题 3.5 · 11、12，p.146]

求极限：
$ (1) quad lim_(x -> 0) (e^(-1/x^2))/x^100; quad (2) quad lim_(x -> 0^+) x^x. $

#v(52mm)

#pagebreak()
*题 23　非零余项的泰勒公式*　#text(size: 9pt)[习题 3.6 · 4，pp.152—153]

求下列函数在 $x=0$ 处的带拉格朗日型余项的泰勒公式：
(1) $f(x)=tan x$，展开到 $2$ 阶；
(2) $f(x)=arcsin x$，展开到 $3$ 阶。

#v(52mm)

*题 24　换中心展开与近似*　#text(size: 9pt)[习题 3.6 · 6，p.153]

设 $f(x)=x^6-6x^5+9x^4+27x+1$，求其在 $x_0=3$ 处泰勒公式的前三项，并由此求 $f(2.98)$ 和 $f(3.01)$ 的近似值。

#v(52mm)

#pagebreak()
*题 25　余项与误差控制*　#text(size: 9pt)[习题 3.6 · 7，p.153]

用泰勒公式计算 $sin x$ 的近似值，要求误差小于 $0.01$。下列两种情形中，$abs(x)$ 应分别小于多少？
(1) 用 $sin x approx x$；
(2) 用 $sin x approx x-x^3/6$。

#v(52mm)

*题 26　根的个数与牛顿迭代*　#text(size: 9pt)[习题 3.7 · 1，p.158]

函数 $f(x)=x^4+x-3$ 有几个实根？对每一个实根，写出牛顿序列的前四项 $x_0,x_1,x_2,x_3$。

#v(52mm)

