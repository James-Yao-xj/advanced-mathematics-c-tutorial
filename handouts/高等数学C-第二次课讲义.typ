// GoodTypst · 阅读文稿模板（reading）
//
// 版式与样例 Lesson2.typ 完全一致：A4 单栏、纯黑白、ctyp 处理中英混排、
// 页眉一行灰线加居中课程名、页脚居中页码、一级标题自动编号。
//
// 只改下面 4 个变量，上面的样式不要动；正文怎么写见 prompts/reading.md。

#let doc-title = "高等数学 C · 第二次课"
#let doc-subtitle = "有理函数与有理化积分"
#let doc-meta = "周建莹、张锦炎《高等数学（生化医农类，上）》"
#let doc-running-header = "高等数学 C · 第二次课"

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
#let mark(body) = highlight(fill: rgb("#FFF09A"), extent: 1.5pt)[#strong(body)]
本讲依教材第四章 §5—§7 的顺序，学习将三类积分归结为有理函数积分。核心知识用黄色强调；例题与课后习题留白供作答，不附解析。

= 有理函数的积分
教材第四章 §5，第 177—184 页。

== 真分式与积分路线
有理函数为多项式之商 $P(x)/Q(x)$。约分后，若 $deg P>=deg Q$，用除法写成“多项式＋真分式”。
#mark[先化真，再分解；真分式分母在实数域内分解为一次因子与不可约二次因子的乘积。]

== 部分分式的完整写法
- 一次因子 $(x-a)^m$ 对应 $m$ 项：
$ A_1/(x-a)+A_2/(x-a)^2+dots+A_m/(x-a)^m. $
- 不可约二次因子 $D(x)=x^2+p x+q$（$p^2-4q<0$）的 $m$ 次幂对应：
$ (B_1 x+C_1)/(D(x))+(B_2 x+C_2)/(D(x))^2+dots+(B_m x+C_m)/(D(x))^m. $
通分得恒等式，用代入法或比较系数求待定系数。
#mark[重因子各次幂写全；二次因子的分子须设一次式。]

== 四类部分分式怎样积分
$ integral A/(x-a) dif x=A ln abs(x-a)+C, quad integral A/(x-a)^n dif x=A/(1-n)(x-a)^(1-n)+C quad (n>1). $
二次因子先凑导数，再配方：
$ A x+B=A/2 (2x+p)+(B-A p/2), quad x^2+p x+q=(x+p/2)^2+q-p^2/4. $
令 $u=x+p/2$，$h=sqrt(q-p^2/4)>0$，则
$ integral (A x+B)/(x^2+p x+q) dif x=A/2 ln(x^2+p x+q)+(B-A p/2)/h arctan(u/h)+C. $
高次二次因子同样拆分子，余项化为
$ J_n=integral 1/(u^2+h^2)^n dif u, quad J_1=1/h arctan(u/h). $
$ J_(n+1)=u/(2n h^2 (u^2+h^2)^n)+(2n-1)/(2n h^2) J_n quad (n>=1). $
递推时略去常数，最后统一加 $C$。
#mark[一次因子给出对数或幂函数；不可约二次因子给出对数、反正切与有理项。]


#pagebreak()
== 课堂例题

以下均求不定积分。

*例 1　多项式除法*　#text(size: 9pt)[（教材习题 4.5（2））]

$ integral (3x^4+x^2+1)/(x^2+x-6) dif x. $
#v(57mm)

*例 2　不同一次因子*　#text(size: 9pt)[（B1 2023 期中 4；2024 期中 5，同题）]

$ integral (4x^2+4x-11)/((2x-1)(2x+3)(2x-5)) dif x. $
#v(57mm)

#pagebreak()
*例 3　重复一次因子*　#text(size: 9pt)[（B1 2025 期中 5(b)）]

$ integral (x^2+2x+3)/((x+2)^2(x+3)^2) dif x. $
#v(57mm)

*例 4　重复二次因子*　#text(size: 9pt)[（教材 §5 例 5）]

$ integral (x^3+x^2+2)/(x^2+2)^2 dif x. $
#v(57mm)

#pagebreak()
= 三角函数有理式的积分
教材第四章 §6，第 184—189 页。

== 万能变换
$R(sin x,cos x)$ 表示由 $sin x$、$cos x$ 与常数经有限次四则运算所得的式子。$tan x$、$cot x$、$sec x$、$csc x$ 也能用 $sin x$、$cos x$ 表示。
令 $t=tan(x/2)$，则
$ sin x=(2t)/(1+t^2), quad cos x=(1-t^2)/(1+t^2), quad dif x=2/(1+t^2) dif t. $
$ integral R(sin x,cos x) dif x=integral R((2t)/(1+t^2),(1-t^2)/(1+t^2)) 2/(1+t^2) dif t. $
右端是有理函数积分。换元在 $tan(x/2)$ 连续的区间内使用，最后代回 $t=tan(x/2)$。
#mark[万能变换保证可以有理化，但做题前先看能否用更简单的换元或恒等变形。]

== 同时变号不变：用正切换元
若 $R(-sin x,-cos x)=R(sin x,cos x)$，可尝试 $t=tan x$，$dif x=dif t/(1+t^2)$。计算在 $cos x!=0$ 的区间进行。
典型形式是 $sin x$、$cos x$ 的同次齐次分式；常通过分子分母同除以适当次幂的 $cos x$ 化为 $tan x$ 的有理式。

== 异角乘积：积化和差
$ sin alpha sin beta=1/2[cos(alpha-beta)-cos(alpha+beta)], $
$ cos alpha cos beta=1/2[cos(alpha-beta)+cos(alpha+beta)], $
$ sin alpha cos beta=1/2[sin(alpha+beta)+sin(alpha-beta)]. $
积化和差后逐项积分；频率相同时先合并，不能套入分母为 0 的表达式。

== 正弦、余弦的幂：先看奇偶
考虑 $integral sin^m x cos^n x dif x$（$m,n$ 为非负整数）。
- $m$ 为奇数：留出 $sin x dif x$，令 $t=cos x$；其余 $sin^2 x$ 换成 $1-cos^2 x$。
- $n$ 为奇数：留出 $cos x dif x$，令 $t=sin x$；其余 $cos^2 x$ 换成 $1-sin^2 x$。
- 两者均偶：先降幂，再按需重复：
$ sin^2 x=(1-cos(2x))/2, quad cos^2 x=(1+cos(2x))/2. $
#mark[奇次留一项凑微分，偶次用倍角公式降幂；换元时同时替换微分。]


#pagebreak()
== 课堂例题

以下均求不定积分。

*例 5　万能变换*　#text(size: 9pt)[（教材习题 4.6（3））]

$ integral 1/(1+sin theta+cos theta) dif theta. $
#v(57mm)

*例 6　正切换元*　#text(size: 9pt)[（C 2022 期末 2（4））]

$ integral (cos x)/(sin x+cos x) dif x. $
#v(57mm)

#pagebreak()
*例 7　凑微分后化为有理函数*　#text(size: 9pt)[（C 2021 期末回忆 3（1））]

$ integral (sin x cos x)/(1+sin^4 x) dif x. $
#v(40mm)

*例 8　奇次幂*　#text(size: 9pt)[（教材习题 4.6（11））]

$ integral sin^5 x cos^2 x dif x. $
#v(40mm)

*例 9　偶次幂*　#text(size: 9pt)[（教材 §6 例 5）]

$ integral sin^2 x cos^2 x dif x. $
#v(40mm)

#pagebreak()
= 几种简单的代数无理式的积分
教材第四章 §7，第 189—193 页。

== 一次式的根式：令根式为新变量
对 $integral R(x,root(n,a x+b)) dif x$，$a!=0$，取
$ t=root(n,a x+b), quad x=(t^n-b)/a, quad dif x=n/a t^(n-1) dif t. $
若同一个 $a x+b$ 同时出现多个分母不同的有理次幂，取这些分母的最小公倍数 $N$，令 $t=root(N,a x+b)$，把各个根式同时化成 $t$ 的整数幂。
#mark[多个根式同底时，用根指数的最小公倍数统一有理化；换元后检查原定义域。]
例如同时出现 $sqrt(x+1)$ 与 $root(3,x+1)$，可令 $t=root(6,x+1)$，两者分别成为 $t^3$、$t^2$（在实数公共定义域内）。

== 一次分式的根式：仍令整个根式为新变量
对于 $root(n,(a x+b)/(c x+d))$，若 $a d-b c!=0$，令
$ t=root(n,(a x+b)/(c x+d)), quad x=(b-d t^n)/(c t^n-a), $
$ dif x=(n(a d-b c)t^(n-1))/(c t^n-a)^2 dif t. $
原积分化为有理函数积分；若 $a d-b c=0$，应先检查原分式是否可化为常数。原分母为 0 的点仍须排除。

== 二次根式：先配方，再化为标准型
对 $sqrt(a x^2+b x+c)$（$a!=0$），先配方：
$ a x^2+b x+c=a(x+b/(2a))^2+c-b^2/(4a). $
平移、缩放后归结为 $sqrt(h^2-u^2)$、$sqrt(u^2+h^2)$ 或 $sqrt(u^2-h^2)$，其中 $h>0$。常用公式：
$ integral 1/sqrt(h^2-u^2) dif u=arcsin(u/h)+C, $
$ integral 1/sqrt(u^2+h^2) dif u=ln abs(u+sqrt(u^2+h^2))+C, $
$ integral 1/sqrt(u^2-h^2) dif u=ln abs(u+sqrt(u^2-h^2))+C. $
第一式要求 $abs(u)<h$，第三式在 $abs(u)>h$ 的各区间使用。

#pagebreak()
== 二次根式：先整理分子
记 $Q(x)=a x^2+b x+c$。分子为一次式时，写成
$ A x+B=lambda Q'(x)+mu, quad lambda=A/(2a), quad mu=B-A b/(2a). $
于是，在 $Q(x)>0$ 的区间内，
$ integral (A x+B)/sqrt(Q(x)) dif x=2lambda sqrt(Q(x))+mu integral 1/sqrt(Q(x)) dif x. $
分子次数更高时，先分出 $Q(x)$ 的倍数，再拆出 $Q'(x)$ 的倍数；余下部分用配方后的标准积分。
#mark[先凑根号内多项式的导数，再配方；不要一见根号就展开复杂换元。]
根式本身的积分也可用以下公式（或三角换元、分部积分）完成：
$ integral sqrt(h^2-u^2) dif u=u/2 sqrt(h^2-u^2)+h^2/2 arcsin(u/h)+C, $
$ integral sqrt(u^2+h^2) dif u=u/2 sqrt(u^2+h^2)+h^2/2 ln abs(u+sqrt(u^2+h^2))+C, $
$ integral sqrt(u^2-h^2) dif u=u/2 sqrt(u^2-h^2)-h^2/2 ln abs(u+sqrt(u^2-h^2))+C. $

== 本讲方法顺序
- 有理函数：约分 → 除法化真 → 分解分母 → 写全部分分式 → 积分。
- 三角有理式：先识别简单换元、积化和差与降幂；一般情形用半角正切换元。
- 代数无理式：一次根式作有理化；二次根式先凑导数、配方并化为标准型。

#pagebreak()
== 课堂例题

以下均求不定积分。

*例 10　一次根式的有理化*　#text(size: 9pt)[（C 2022 期末 2（3））]

$ integral 1/(3x+root(3,3x+2)) dif x. $
#v(57mm)

*例 11　一次分式根式的有理化*　#text(size: 9pt)[（B1 2022 期中 3；C 2021 期末回忆 3（2），同题）]

$ integral 1/root(3,(x+1)(x-1)^5) dif x. $
#v(57mm)

#pagebreak()
*例 12　二次根式：凑导数与配方*　#text(size: 9pt)[（C 2022 期末 2（2））]

$ integral x/sqrt(x^2+2x+2) dif x. $
#v(57mm)

*例 13　二次根式与三角降幂*　#text(size: 9pt)[（B1 2025 期中 5(c)）]

$ integral x^2 sqrt(1-x^2) dif x. $
#v(57mm)

#pagebreak()
= 课后习题

按本讲三部分顺序编排。带上下限者求定积分，其余求不定积分。

*习题 1　有理函数*　#text(size: 9pt)[（教材习题 4.5（6））]

$ integral 1/((x-1)^2(x-2)) dif x. $
#v(35mm)

*习题 2　有理函数*　#text(size: 9pt)[（教材习题 4.5（11））]

$ integral 4/(1+x^4) dif x. $
#v(35mm)

*习题 3　三角有理式*　#text(size: 9pt)[（B1 2021 期中 2（1））]

$ integral_0^(pi/2) (sin x cos x)/(1+sin^2 x) dif x. $
#v(35mm)

#pagebreak()
*习题 4　三角有理式*　#text(size: 9pt)[（B1 2025 期中 6(b)）]

$ integral_0^(pi/2) (sin^2 x)/(sin x+cos x) dif x. $
#v(35mm)

*习题 5　三角幂函数*　#text(size: 9pt)[（教材习题 4.6（12））]

$ integral sin^6 x dif x. $
#v(35mm)

*习题 6　一次根式*　#text(size: 9pt)[（教材习题 4.7（1））]

$ integral sqrt(x)/(1+sqrt(x)) dif x. $
#v(35mm)

#pagebreak()
*习题 7　同底多种根式*　#text(size: 9pt)[（教材习题 4.7（3））]

$ integral x^(1/2)/(x^(3/4)+1) dif x. $
#v(35mm)

*习题 8　二次根式*　#text(size: 9pt)[（B1 2025 期中 6(a)）]

$ integral_(1/2)^1 sqrt(x(1-x)) dif x. $
#v(35mm)

*习题 9　二次根式*　#text(size: 9pt)[（教材习题 4.7（8））]

$ integral sqrt(3-2x-x^2) dif x. $
#v(35mm)

#text(size: 9pt)[教材：周建莹、张锦炎《高等数学（生化医农类，上）》，第四章 §5—§7。真题年份沿用资料文件名；C 2021 为回忆版。B 类同题合并标注。]
