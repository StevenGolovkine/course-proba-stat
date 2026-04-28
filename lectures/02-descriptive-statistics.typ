#import "../templates/course.typ": example, remark

= Descriptive Statistics

Descriptive statistics summarize the main features of a dataset without trying
to make a broader claim about an unseen population.

== Types Of Variables

Variables are often classified by the kind of information they carry:

- *Categorical variables* record group membership or labels.
- *Quantitative variables* record numerical measurements or counts.

#remark[
  The same value can sometimes be treated differently depending on the question.
  A postal code is made of digits, but it is usually categorical rather than
  quantitative.
]

== Measures Of Center

For a sample of values $x_1, x_2, dots.c, x_n$, the sample mean is

$ overline(x) = (1 / n) sum_(i=1)^n x_i. $

The median is the middle value after sorting the observations. It is often more
robust than the mean when the data contain extreme values.

== Measures Of Spread

The sample variance is

$ s^2 = (1 / (n - 1)) sum_(i=1)^n (x_i - overline(x))^2. $

The sample standard deviation is $s = sqrt(s^2)$ and is measured in the same
units as the original data.

#example[
  If exam scores vary widely, the mean alone can hide important information.
  Reporting both the mean and standard deviation gives a clearer summary.
]
