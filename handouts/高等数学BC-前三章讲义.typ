// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "高等数学 B、C 前三章讲义"
#let doc-subtitle = "核心知识与真题演练"
#let doc-meta = "周建莹、张锦炎《高等数学（上）》前三章"
#let doc-running-header = "高等数学 B、C"

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
// Yellow emphasis is required by the user.
#let mark(body) = highlight(fill: rgb("#FFF09A"), extent: 1.5pt)[#strong(body)]


= 微积分的准备知识

== 极限与夹逼定理

#mark[收敛数列必有界；夹逼定理用于控制有界振荡。]

数列极限：$forall epsilon>0, exists N, n>N => abs(a_n-A)<epsilon$。双侧函数极限存在，当且仅当左右极限存在且相等。

*例 1　夹逼法* #footnote[B，2024 期中，第 1 题。]

求 $lim_(n -> infinity) root(n,2024+sin(e^n))$。

#v(1fr)

*例 2　有界振荡与根式* #footnote[B，2022 期中，1(1)。]

求 $lim_(n -> infinity)root(n,2+cos n)$。

#v(1fr)

*例 3　对数数列的极限* #footnote[C，2023 期中，1(1)。]

求 $lim_(n -> infinity)root(n,ln n)$。

#v(1fr)


#pagebreak()

== 换元、等价无穷小与根式极限

#mark[乘除可作等价代换；差式抵消须保留更高阶项。]

$sin u tilde tan u tilde u$，$1-cos u tilde u^2/2$，$ln(1+u) tilde u$，$e^u-1 tilde u$（$u -> 0$）。

*例 4　换元处理三角极限* #footnote[C，2023 期中，第 1(3) 题。]

求 $lim_(x -> 1)(1-x)tan(pi x/2)$。

#v(1fr)

*例 5　根式之比* #footnote[B，2025 期中，2(a)。]

求 $lim_(x -> 4)(sqrt(2x+1)-3)/(sqrt(x-2)-sqrt(2))$。

#v(1fr)

*例 6　振荡函数之差* #footnote[B，2025 期中，2(b)。]

求 $lim_(x -> +infinity)(sin sqrt(x+1)-sin sqrt(x))$。

#v(1fr)


#pagebreak()

== 重要极限与幂指型极限

#mark[幂指极限先检查底数为正，再取对数。]

$lim_(u -> 0)(sin u)/u=1$，$lim_(u -> 0)(1+u)^(1/u)=e$。若 $G(x)ln F(x) -> L$，则 $F(x)^(G(x)) -> e^L$。

*例 7　$1^infinity$ 型极限* #footnote[B，2024 期中，第 2 题；C，2021 期中，第 3 题。]

求
$ lim_(x -> 0)((1+2sin^2 x)/(cos 2x))^(1/(sin^2 x)). $

#v(1fr)

*例 8　三角函数的幂指极限* #footnote[B，2022 期中，1(3)。]

求 $lim_(x -> 0)(1+tan^2 x)^(1/(sin^2 x))$。

#v(1fr)

*例 9　数列中的重要极限* #footnote[B，2023 期中，1。]

求 $lim_(n -> infinity)(1+1/(n e))^n$。

#v(1fr)


#pagebreak()

== 递推数列：单调有界

#mark[先证收敛，再对递推式取极限；固定点方程不能替代存在性证明。]

单调且有界的数列必收敛。递推式还须保证各项有定义。

*例 10　单调有界法* #footnote[B，2021 期中，第 3 题。]

设 $x_1>0$，且
$ x_(n+1)=1/2 (x_n+1/x_n). $
证明 $lim_(n -> infinity)x_n$ 存在，并求其值。

#v(1fr)

*例 11　分式递推* #footnote[C，2021 期中，2。]

设 $x_1>0$，对每个正整数 $n$ 有
$ x_(n+1)=(2(1+x_n))/(2+x_n). $
证明 $lim_(n -> infinity)x_n$ 存在，并求其值。

#v(1fr)


#pagebreak()

== 递推数列：符号与相互控制

#mark[检查正负、不变区间与上下界；有限个起始项不影响收敛性。]

复合函数 $f(g(x))$ 的定义域要求 $g(x)$ 落在 $f$ 的定义域中。

*例 12　连续性与递推极限* #footnote[C，2023 期中，第 8 题。]

设 $x_(n+1)=sin x_n$，$n=0,1,2,dots$，$x_0$ 为任意实数。证明数列收敛，并求极限。

#v(1fr)

*例 13　两列数的递推* #footnote[B，2023 期中，7。]

设 $0<b_1<a_1$，且
$ a_(n+1)=(a_n+b_n)/2, quad b_(n+1)=sqrt(a_n b_n). $
证明 $lim_(n -> infinity)a_n$ 存在。

#v(1fr)


#pagebreak()

== 连续函数与零点存在

#mark[闭区间连续函数有界、能取最值，并具有介值性。]

若 $f$ 在 $[a,b]$ 连续且 $f(a)f(b)<0$，则 $(a,b)$ 内至少有一个零点；唯一性需另证。

*例 14　零点的存在与唯一* #footnote[C，2023 期中，第 4 题。]

证明方程
$ (1/2)^x+(3/4)^x=1 $
只有一个实根。

#v(1fr)

*例 15　介值定理与两个实根* #footnote[B，2022 期中，5。]

设 $a,b,c>0$，$f:RR -> RR$ 在实数轴上连续，且
$ f(0)=-a, quad lim_(x -> -infinity)f(x)=b, quad lim_(x -> +infinity)f(x)=c. $
证明 $f(x)=0$ 至少有两个不同的实根。

#v(1fr)


#pagebreak()

== 连续性综合

#mark[连续函数不会跳过中间值；多个根的证明要明确根所在的互不相交区间。]

$f$ 在 $a$ 处连续 $<=>$ $lim_(x -> a)f(x)=f(a)$。

*例 16　连续函数的端点关系* #footnote[B，2023 期中，9。]

设 $f,g$ 在 $[0,1]$ 上连续，满足
$ f(0)=g(0), quad sin(f(1))=sin(g(1)), quad cos(f(1))=cos(g(1)), $
且对任意 $x in [0,1]$，
$ (cos(f(x))+cos(g(x)))^2+(sin(f(x))+sin(g(x)))^2!=0. $
证明 $f(1)=g(1)$。

#v(1fr)

*例 17　无穷多个零点* #footnote[C，2021 期中，4。]

证明方程 $sin x-sqrt(x+1)+sqrt(x)=0$ 有无穷多个正实数解。

#v(1fr)


#pagebreak()

= 微商与微分

== 求导法则与幂指函数

#mark[乘积、商与复合函数须使用相应法则；幂指函数可取对数求导。]

$(u v)'=u'v+u v'$，$(u/v)'=(u'v-u v')/v^2$；$u>0$ 时 $(u^v)'=u^v(v'ln u+v u'/u)$。

*例 18　幂指函数求导* #footnote[B，2021 期中，第 1(1) 题。]

求 $f(x)=x^(arcsin x)$（$0<x<1$）的导函数。

#v(1fr)

*例 19　变指数求导* #footnote[B，2022 期中，2(1)。]

设 $x>0$，求 $f(x)=x^(sqrt(x))$ 的导函数。

#v(1fr)

*例 20　含参数的幂指函数* #footnote[B，2025 期中，3(a)。]

设 $a>0$ 为常数，求 $f(x)=x^(x^a)$（$x>0$）的导函数。

#v(1fr)


#pagebreak()

== 隐函数与切线

#mark[含隐变量的每一项都须按链式法则求导。]

$y'=-F_x/F_y$（在可导分支且 $F_y!=0$ 处）；切线为 $y-y_0=y'(x_0)(x-x_0)$。

*例 21　隐曲线的切线* #footnote[C，2021 期中，第 1(3) 题。]

求曲线 $e^((1-x)y)+2x y=5$ 在点 $(1,2)$ 处的切线方程。

#v(1fr)

*例 22　隐曲线切线* #footnote[B，2022 期末，4。]

求曲线 $e^(x y)+x y+y^2=2$ 在点 $(0,1)$ 处的切线方程。

#v(1fr)

*例 23　隐式求导* #footnote[C，2023 期中，2(1)。]

设 $arctan(x+y)+e^y ln(1+(x+y)^2)=0$，求 $y'$。

#v(1fr)


#pagebreak()

== 参数方程与复合反函数

#mark[参数曲线求二阶导数，要先对参数求导，再除以 $x'(t)$。]

$(dif y)/(dif x)=(y'(t))/(x'(t))$，$(dif^2 y)/(dif x^2)=1/(x'(t)) (dif)/(dif t)((y'(t))/(x'(t)))$，$x'(t)!=0$。

*例 24　摆线的二阶导数* #footnote[B，2025 期中，第 4(a) 题。]

设 $R>0$，曲线由
$ cases(x=R(t-sin t), y=R(1-cos t)), quad 0<t<2 pi $
确定，求 $y'(x)$ 与 $y''(x)$。

#v(1fr)

*例 25　复合反三角函数* #footnote[B，2023 期中，8(1)(2)。]

设 $-pi/2<x<pi/2$。

（1）证明 $-1<(4sin x)/(3+sin^2 x)<1$。

（2）求 $f(x)=arcsin((4sin x)/(3+sin^2 x))$ 的导函数。

#v(1fr)


#pagebreak()

== 高阶导数

#mark[高阶导数可用反复求导、部分分式或莱布尼茨公式。]

$(u v)^((n))=sum_(k=0)^n binom(n,k)u^((k))v^((n-k))$。

*例 26　用低阶导数求高阶导数值* #footnote[B，2021 期中，第 1(3) 题。]

求 $f(x)=arctan x$ 在 $x=0$ 处的三阶导数。

#v(1fr)

*例 27　四阶导数* #footnote[B，2022 期中，2(3)。]

设 $x!=plus.minus 1$，求 $h(x)=1/(x^2-1)$ 的四阶导函数 $h^((4))(x)$。

#v(1fr)

*例 28　乘积与复合函数的高阶导数* #footnote[B，2025 期中，4(b)。]

设 $f(x)=x^2 e^(-x^2)$，求 $f^((n))(x)$，$n=1,2,3$。

#v(1fr)


#pagebreak()

== 微分与线性近似

#mark[一阶微分形式具有不变性，二阶微分一般不具有。]

$Delta y=f'(a)Delta x+o(Delta x)$，$dif y=f'(a)dif x$；$f(a+h) approx f(a)+f'(a)h$。

*例 29　标准线性近似* #footnote[C，2021 期中，第 1(2) 题。]

求 $arcsin(1/2+1/100)$ 在 $1/2$ 处的标准线性近似值。

#v(1fr)

*例 30　二阶微分与自变量* #footnote[B，2021 期中，6。]

设 $y=x^3$，$x=t^2$，因而 $y=t^6$；取 $t=1$、$Delta t=0.1$，则 $Delta x=(1.1)^2-1=0.21$。

（1）以 $t$ 为自变量，求 $dif_t^2 y$ 和 $dif_t x$。

（2）以 $x$ 为自变量，在 $x=1$、$dif x=0.21$ 时求 $dif_x^2 y$ 和 $dif_x x$。

（3）比较以上两种情形的 $(dif_t^2 y)/(dif_t x)^2$ 与 $(dif_x^2 y)/(dif_x x)^2$ 是否相等。

#v(1fr)


#pagebreak()

== 导数定义与导函数连续性

#mark[可导必连续；可导不保证导函数连续。拼接点先用定义。]

$f'(a)=lim_(h -> 0)(f(a+h)-f(a))/h$。判断导函数连续性还需另求 $lim_(x -> a)f'(x)$。

*例 31　导函数的间断性* #footnote[C，2023 期中，第 3 题。]

设
$ f(x)=cases(x^2 ln(2+cos(1/x)) & quad x!=0, 0 & quad x=0). $
求 $f'(x)$，并说明 $f'$ 在哪些点不连续、属于第几类间断点。

#v(1fr)

*例 32　分段函数求导* #footnote[C，2025 期中，第 3 题。]

设
$ g(x)=cases((sin(ln(cos x)))/x & quad 0<abs(x)<1, 0 & quad x=0). $
求 $g'(x)$，并判断其在 $(-1,1)$ 内是否连续。

#v(1fr)


#pagebreak()

= 微分中值定理及其应用

== 罗尔定理与拉格朗日定理

#mark[先核对闭区间连续、开区间可导，再应用中值定理。]

罗尔：$f(a)=f(b) => exists xi in (a,b), f'(xi)=0$。拉格朗日：$f(b)-f(a)=f'(xi)(b-a)$。

*例 33　中值定理的直接应用* #footnote[B，2021 期末，第 1 题。]

证明：对任意 $x in RR$，存在 $theta in (0,1)$，使
$ arctan x=x/(1+theta^2 x^2). $

#v(1fr)

*例 34　零点交错* #footnote[C，2021 期中，6。]

设 $a(x),b(x)$ 在实数轴上可导，且对任意实数 $x$，
$ a'(x)b(x)-a(x)b'(x)!=0. $
证明二者的零点交错：若 $x_1<x_2$ 是 $a$ 的相邻零点，则 $(x_1,x_2)$ 内存在 $b$ 的零点；交换 $a,b$ 后同样成立。

#v(1fr)


#pagebreak()

== 导数估计与中值定理

#mark[导数的界可以转化为函数增量的界；闭区间连续性保证最大值存在。]

柯西中值定理：$(f(b)-f(a))g'(xi)=(g(b)-g(a))f'(xi)$，两函数须均满足连续、可导条件。

*例 35　最大值与导数估计* #footnote[C，2023 期中，第 9 题。]

设 $a<b$，$g$ 在 $[a,b]$ 连续、在 $(a,b)$ 可导，$g(a)=0$，且
$ abs(g'(x))<=abs(g(x))/(2(b-a)), quad x in (a,b). $
证明 $g(x)=0$（$x in [a,b]$）。

#v(1fr)

*例 36　差商的界* #footnote[C，2023 期中，7。]

设 $f$ 在 0 处可导，且当 $abs(x)<1$ 时，
$ abs(f(x))<=ln(1+abs(arcsin x)). $
证明 $abs(f'(0))<=1$。

#v(1fr)


#pagebreak()

== 单调性与零点个数

#mark[零点个数须同时证明“至少有几个”和“至多有几个”。]

在区间内，$f'>0$ 推出严格递增，$f'<0$ 推出严格递减；偶函数的非零根成对出现。

*例 37　恰有两个实根* #footnote[B，2024 期中，第 7 题。]

证明方程 $x^18+x^12-cos x=0$ 在 $RR$ 上恰有两个实根。

#v(1fr)

*例 38　指数与反正切的交点* #footnote[C，2025 期中，4。]

证明方程 $(1/8)^x+(1/9)^x=arctan x$ 只有一个实根。

#v(1fr)

*例 39　偶函数的零点* #footnote[B，2025 期中，8。]

设 $f(x)=x^8-x^4-cos x$，$x in RR$。判断 $f$ 在实数轴上有多少个零点，并证明。

#v(1fr)


#pagebreak()

== 极值、凹凸与单调区间

#mark[驻点不一定是极值点；不可导点也可能是极值点。]

$f''>0$ 时图像向上弯，$f''<0$ 时向下弯。拐点须检查两侧弯曲方向是否改变。

*例 40　单调、极值与凹凸的综合判断* #footnote[B，2025 期末，第 2 题。]

设 $f(x)=(dif^3)/(dif x^3)(x^2-1)^3$，求显式表达式、单调区间、极值点及凹凸区间。

#v(1fr)

*例 41　不可导点与极值* #footnote[C，2023 期中，5。]

求 $f(x)=root(3,x)root(3,(1-x)^2)$ 的极值点和极值。

#v(1fr)

*例 42　最长的单调区间* #footnote[B，2023 期末，2。]

设 $f(x)=x^3-6x^2+9x-1$，$0<=x<=7$。称 $[a,b]$ 为单调区间，若 $0<=a<b<=7$ 且 $f$ 在该区间上严格单调。求长度最大的单调区间。

#v(1fr)


#pagebreak()

== 闭区间上的最值

#mark[最值候选点：驻点、不可导点、区间端点，三者不可遗漏。]

闭区间连续函数必有最大值与最小值；求取值点时须列出全部符合条件的点。

*例 43　闭区间上的全部最小值点* #footnote[C，2021 期中，5；B，2020 期末，2。]

求 $f(x)=root(3,x^2)-root(3,x^2-1)$ 在 $[-1,1]$ 上的全部最小值点。

#v(1fr)

*例 44　三角函数的最小值* #footnote[B，2022 期末，7。]

求 $f(x)=root(3,sin^2 x)+root(3,cos^2 x)$ 在 $[-pi/2,pi/2]$ 上的最小值，并指明全部最小值点。

#v(1fr)


#pagebreak()

== 最优化应用

#mark[先选变量、列可行域、写目标函数，再比较候选点与边界。]

涉及整个运动过程的约束时，要辨明最终目标是取最大值还是最小值。

*例 45　河道转弯的临界长度* #footnote[C，2025 期中，第 5 题。]

两条宽分别为 $a$、$b$ 的河垂直相交。一船能从一条河转入另一条河，其长度最大是多少？

#v(1fr)

*例 46　内接多边形的最大面积* #footnote[B，2021 期末，7。]

给定正整数 $n>=3$，求单位圆内接 $n$ 边形面积的最大值。

#v(1fr)


#pagebreak()

== 洛必达法则与未定式

#mark[先确认 $0/0$ 或 $infinity/infinity$ 型及适用条件，再求导数比。]

去心邻域内分子、分母可导，分母导数非零，且导数比极限存在时，可应用洛必达法则。数列题可先考虑相应函数或比值估计。

*例 47　先转成比式，再求极限* #footnote[C，2023 期中，第 1(4) 题。]

求
$ lim_(x -> +infinity)(x^3/((x-1)(x-2)(x-3)))^x. $

#v(1fr)

*例 48　有理函数的幂指极限* #footnote[C，2025 期中，1(4)。]

求 $lim_(x -> +infinity)(x^3/((x-1)(x+2)(x-3)))^x$。

#v(1fr)

*例 49　阶乘与指数* #footnote[C，2023 期中，1(2)。]

求 $lim_(n -> infinity)3^n/(n!)$。

#v(1fr)


#pagebreak()

== 泰勒公式求极限

#mark[展开到抵消后的首个非零项，并保留同阶余项。]

$e^u=1+u+u^2/2+o(u^2)$，$cos u=1-u^2/2+u^4/24+o(u^4)$，$sin u=u-u^3/6+o(u^3)$。

*例 50　泰勒展开求极限* #footnote[B，2025 期末，第 1(a) 题。]

求 $lim_(x -> 0)(1-x^2-e^(-x^2))/(x^2 sin^2 x)$。

#v(1fr)

*例 51　带绝对值的泰勒极限* #footnote[B，2024 期末，1。]

求 $lim_(x -> 0)(2cos sqrt(abs(x))-2+abs(x))/x^2$。

#v(1fr)

*例 52　高阶抵消* #footnote[B，2020 期末，1(1)。]

求 $lim_(x -> 0)(2cos x-2+x^2)/x^4$。

#v(1fr)


#pagebreak()

== 局部泰勒展开

#mark[皮亚诺余项描述阶数；拉格朗日余项可控制近似误差。]

$f(x)=sum_(k=0)^n (f^((k))(a))/k! (x-a)^k+o((x-a)^n)$；相应光滑性下，$R_n(x)=(f^((n+1))(xi))/((n+1)!)(x-a)^(n+1)$。

*例 53　复合函数的局部展开* #footnote[C，2022 期末，第 1 题。]

求 $f(x)=2sin^2 x-e^(-x^2)$ 在 $x=0$ 处的局部泰勒公式。

#v(1fr)

*例 54　有理函数的高阶展开* #footnote[B，2021 期末，3。]

求 $f(x)=(1-2x+5x^2)/((1-2x)(1+x^2))$ 在 $x=0$ 处的 $2n+1$ 阶泰勒公式（$n$ 为正整数）。

#v(1fr)


#pagebreak()

== 牛顿近似求根法

#mark[迭代公式不保证收敛；须检查导数非零，并论证单调、有界或其他收敛条件。]

$x_(n+1)=x_n-(f(x_n))/(f'(x_n))$。根附近的切线与横轴交点给出下一次近似。

*例 55　牛顿序列的收敛* #footnote[C，2021 期末回忆版，第 2 题。]

设 $f(x)=x^4+5x-7$，在 $[1,2]$ 上用牛顿法近似求根，初始值 $x_0=2$。证明牛顿序列收敛。

#v(1fr)


#pagebreak()
= 课后习题

== 第一章：极限与连续（基础）

*习题 1　数列极限* #footnote[C，2025 期中，1(1)(2)。]

求下列极限：

（1）$lim_(n -> infinity)root(n,n+cos n)$；

（2）$lim_(n -> infinity)(root(3,n+1)-root(3,n))$。

#v(1fr)

*习题 2　指数与根式* #footnote[B，2025 期中，1(a)。]

求 $lim_(n -> infinity)root(n,3^(2n)+4^n)$。

#v(1fr)

#pagebreak()
== 第一章：极限与连续（综合）

*习题 3　求和数列* #footnote[B，2025 期中，1(b)。]

求
$ lim_(n -> infinity)sum_(k=1)^n (n+k)^2/n^3. $

#v(1fr)

*习题 4　取整函数* #footnote[B，2023 期中，2。]

设 $[x]$ 表示不超过 $x$ 的最大整数。求
$ lim_(x -> +infinity)x sin(1/[x]). $

#v(1fr)

#pagebreak()
== 第二章：求导（综合）

*习题 5　多层幂指函数* #footnote[C，2023 期中，2(2)。]

设 $y=x^(x^(x^3))$，$x>0$，求 $y'$。

#v(1fr)

*习题 6　隐式求导* #footnote[C，2025 期中，2。]

设 $y=y(x)$ 由方程
$ ln(1+(x y)^2)=(1+x^2)^(y x^2) $
确定，求其一阶导数 $y'$。

#v(1fr)

#pagebreak()
== 第三章：导数与极限（综合）

*习题 7　无穷远处的增长* #footnote[C，2025 期中，7；极限下标按自变量校正。]

设 $f$ 在 $(0,+infinity)$ 内可导，且 $lim_(x -> +infinity)f'(x)=0$。证明
$ lim_(x -> +infinity)(f(x))/x=0. $

#v(1fr)

*习题 8　导数定义与三角极限* #footnote[C，2025 期中，1(3)。]

求
$ lim_(x -> pi/2)(cos x)/(x-pi/2). $

#v(1fr)

#pagebreak()
== 第三章：泰勒与幂指极限（提高）

*习题 9　高阶抵消* #footnote[B，2021 期末，2(1)。]

求
$ lim_(x -> 0)(tan^4 x)/(sqrt(1-(x sin x)/2)-sqrt(cos x)). $

#v(1fr)

*习题 10　有限项平均的极限* #footnote[B，2021 期末，2(2)；补充实幂所需的正性条件。]

设 $n$ 为正整数，$a_1,dots,a_n>0$。求
$ lim_(x -> 0)((sum_(k=1)^n a_k^x)/n)^(1/x). $

#v(1fr)

#pagebreak()
== 第三章：不等式与中值定理（提高）

*习题 11　含参数不等式* #footnote[C，2023 期中，6。]

设 $a>ln 2-1$，证明对任意 $x>0$，有
$ x^2-2a x+1<e^x. $

#v(1fr)

*习题 12　中值定理与二项式公式* #footnote[B，2023 期末，9；原命题条件有缺漏，见配套解析中的反例与修正。]

设 $P$ 在 $[0,1]$ 上连续，$P(0)=0$，$P(1)=1$；在 $(0,1)$ 内可导，且 $P'(x)>0$。任取 $A,B in RR$ 与正整数 $n$，证明存在
$ 0<theta_0<theta_1<dots<theta_n<1, $
使
$ (A+B)^n=sum_(k=0)^n 1/(P'(theta_k)) binom(n,k) A^(n-k)B^k. $

#v(1fr)
