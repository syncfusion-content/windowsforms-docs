---
layout: post
title: Statistical in Windows Forms Calculation Engine control | Syncfusion
description: Learn about Statistical support in Syncfusion Windows Forms Calculation Engine (Calculate) control, its elements, and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Statistical in Windows Forms Calculation Engine (Calculate)

## AVEDEV

Returns the average of the absolute mean deviations of data points. `Avedev` is a measure of the variability in a data set.

**Syntax**

_AVEDEV(number1, number2, ...)_

**where:**

* number1, number2, ... are arguments for which you want the average of the absolute deviations. You can also use a single array or a reference to an array instead of arguments separated by commas.

**Remarks:**

* The arguments must either be numbers or names, arrays or references that contain numbers.

* If an array or reference argument contains text, logical values or empty cells, those values are ignored; however, cells with the a zero value are included.

## AVERAGE

Returns the average (arithmetic mean) of the arguments.

**Syntax**

_AVERAGE(number1, number2, ...)_ 

**where:** 

* number1, number2, ... are numeric arguments for which you want the average.

**Remarks:**

* The arguments must either be numbers or names, arrays or references that contain numbers.

* If an array or reference argument contains text, logical values, or empty cells, those values are ignored; however, cells with zero value are included.

## AVERAGEA

Calculates the average (arithmetic mean) of the values in the list of arguments. In addition to numbers and text  logical values such as True and False are also included in the calculation.

**Syntax:**

_AVERAGEA(value1, value2,...)_

**where:**

* value1, value2, ... are cells, ranges of cells, or values for which you want the average.

**Remarks:**

* The arguments must be numbers, names, arrays, or references.

* Array or reference arguments that contain text evaluate as 0 (zero). If the calculation should not include text values in the average, then use the `AVERAGE` function.

* Arguments that contain `True` evaluate as 1; arguments that contain `False` evaluate as 0 (zero).

## AVERAGEIF

The `AVERAGEIF` function returns the average of the cells in a specified range which satisfies the given criteria.

**Syntax:**

_AVERAGEIF(range, criteria, [average_range])_

**where:**

* range is the cells range to calculate the average value.

* criteria are the condition to calculate the average.

* average_range is the range optional cells range to computed average. If the average is not included, then the range is used for the average.

## AVERAGEIFS

The `AVERAGEIFS` returns the average of the cells in a specified range which satisfies the given multiple criteria.

**Syntax:**

_AVERAGEIFS(average_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)_

**where:**

* average_range is the range of cells to calculate the average.

* criteria_range1 is the first range to calculate the average.

* criteria1 is the first condition for the first criteria range.

* criteria_range2 is the optional cells range to evaluate the average.

* criteria2 is the optional condition for the criteria range 2.

## BINOM.DIST

The `Binom.Dist` function returns the Binomial Distribution probability for a given number of successes from a specified number of trials. 

**Syntax:**

_BINOM.DIST (trial number,sp,value, cumulative)_

**where:**

* trial number is the number of Bernoulli trials.

* sp is the probability of a success on each trial.

* value is the criterion value. 

* cumulative is a logical value that determines the form of the function.

**Remarks:**

* `#NUM!` occurs when trial number is lesser than zero, when sp and value are lesser than zero or greater than one.

* `#VALUE!` occurs when trials, sp, and value are non-numeric.

## BETADIST

Returns the cumulative beta probability density function

**Syntax:**

_BETADIST(x,alpha,beta,[A],[B])_

**Where:**

* x denotes the value between A and B at which to evaluate the function.

* alpha denotes a parameter of the distribution.

* beta denotes a parameter of the distribution.

* A denotes a lower bound to the interval of x.

* B denotes an upper bound to the interval of x.

**Remarks:**

* If any argument is non-numeric, BETADIST returns the #VALUE! error value.

* If alpha ≤ 0 or beta ≤ 0, BETADIST returns the #NUM! error value.

* If x < A, x > B, or A = B, BETADIST returns the #NUM! error value.

* If you omit values for A and B, BETADIST uses the standard cumulative beta distribution, so that A = 0 and B = 1.

## BINOMDIST

Returns the individual term binomial distribution probability

**Syntax:**

_BINOMDIST(number_s,trials,probability_s,cumulative)_

**Where:**

* Number_s denotes the number of successes in trials.

* Trials denotes the number of independent trials.

* Probability_s denotes the probability of success on each trial.

* Cumulative denotes a logical value that determines the form of the function. If cumulative is TRUE, then BINOMDIST returns the cumulative distribution function, which is the probability that there are at most number_s successes; if FALSE, it returns the probability mass function, which is the probability that there are number_s successes.

## BINOM.INV

The `Binom.Inv` function returns the smallest value for which the cumulative binomial distribution is greater than or equal to a criterion value.

**Syntax:**

_BINOM.INV(trial number,sp,value)_

**Where:**

* trial number is the number of Bernoulli trials.

* sp is the probability of a success on each trial.

* value is the criterion value.

**Remarks:**

* `#NUM!` - occurs if trial number is less than zero, if sp and value is less than zero or greater one.

* `#VALUE!` - occurs if trials, sp and value are non-numeric.

## CHIDIST

The `CHIDIST` function returns the right-tailed probability of the chi-squared distribution. 

**Syntax:**

_CHIDIST(x,degFreedom)_

**Where:**

* x is the value at which the chi-square distribution is to be evaluated (must be ≥ 0).

* degFreedom is the number of degrees of freedom.

**Remarks:**

* `#NUM!` - occurs if the  x is negative or degFreedom argument is invalid.

## CHISQ.TEST

Returns the chi-squared statistical test for independence

**Syntax:**

_CHISQ.TEST(actual_range,expected_range)_

**Where:**

* actual_range  denotes the range of data that contains observations to test against expected values.

* expected_range denotes the range of data that contains the ratio of the product of row totals and column totals to the grand total.

## CHIINV

Returns the inverse of the right-tailed probability of the chi-squared distribution

**Syntax:**
_CHIINV(probability,deg_freedom)_

**Where:**

* probability denotes a probability associated with the chi-squared distribution.

* deg_freedom denotes the number of degrees of freedom.

**Remarks:**

* If either argument is non-numeric, CHIINV returns the #VALUE! error value.

* If probability < 0 or probability > 1, CHIINV returns the #NUM! error value.

* If deg_freedom is not an integer, it is truncated.

* If deg_freedom < 1, CHIINV returns the #NUM! error value.

## CONFIDENCE.NORM

The `Confidence.Norm` function uses [Normal Distribution](http://en.wikipedia.org/wiki/Normal_distribution) to calculate a confidence value that can be used to construct the confidence interval for a population mean, for a supplied probability, and sample size.

**Syntax:**

_CONFIDENCE.NORM(alpha,stdev,size)_

**where:**

* alpha is the significance level.

* stdev is the population standard deviation for the data range.

* size is the sample size. 

**Remarks:**

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when alpha and stdev is lesser than or equal to zero or when alpha is greater than or equal to zero.

* `#DIV/0!` occurs when the size is equal to one.

## CONFIDENCE.T

Returns the confidence interval for a population mean

**Syntax:**

_CONFIDENCE.T(alpha,standard_dev,size)_

**Where:**

* alpha denotes the significance level used to compute the confidence level. The confidence level equals 100*(1 - alpha)%, or in other words, an alpha of 0.05 indicates a 95 percent confidence level.

* standard_dev denotes the population standard deviation for the data range and is assumed to be known.

* size denotes the sample size.

**Remarks:**

* If any argument is non-numeric, CONFIDENCE.T returns the #VALUE! error value.

* If alpha ≤ 0 or alpha ≥ 1, CONFIDENCE.T returns the #NUM! error value.

* If standard_dev ≤ 0, CONFIDENCE.T returns the #NUM! error value.

* If size is not an integer, it is truncated.

* If size equals 1, CONFIDENCE.T returns #DIV/0! error value


## CHISQ.INV

The `Chisq.Inv` function returns the inverse of the left-tailed probability of the chi-squared distribution.

**Syntax:**

_CHISQ.INV(probability,degFreedom)_

**where:**

* probability is a probability of chi-squared distribution.

* degFreedom is the number of degrees of freedom.

**Remarks:**



* `#NUM!` occurs when probability is lesser than zero, when probability is greater than 1, and degFreedom is lesser than 1.

* `#VALUE!` occurs when probability or degFreedom is non-numeric.

## CHISQ.INV.RT

The `Chisq.Inv.Rt` function calculates the inverse of the right-tailed probability of the [chi-square distribution](http://en.wikipedia.org/wiki/Chi-square_distribution).

**Syntax:**

_CHISQ.INV.RT(probability, degFreedom)_

**where:**

* probability is a probability of chi-squared distribution.

* degFreedom is the number of degrees of freedom.

**Remarks:**

* `#NUM!` occurs when probability is lesser than zero, when probability is greater than 1, and when degFreedom is lesser than 1.

* `#VALUE!` occurs when probability or degFreedom is non-numeric. 

## CHISQ.DIST.RT

The `Chisq.Dist.Rt` function calculates the right-tailed probability of the [chi-square distribution](http://en.wikipedia.org/wiki/Chi-square_distribution).

**Syntax:**

_CHISQ.DIST.RT(x,degFreedom)_ 

**where:**

* x is the value that evaluates the function.

* degFreedom is the number of degrees of freedom.

**Remarks:**

* `#VALUE!` occurs when either argument is non-numeric.

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when f degFreedom < 1 or degFreedom >10^10.

## CHISQ.DIST

The `Chisq.Dist` function calculates the Probability Density Function or the Cumulative Distribution Function for the chi-square distribution.

**Syntax:**

_CHISQ.DIST(x,degFreedom,cumulative)_ 

**where:**

* x is the value that evaluates the function.

* degFreedom is the number of degrees of freedom.

* cumulative is a logical value that determines the form of the function.

**Remarks:**

* `#VALUE!` - occurs if any argument is non-numeric.

* `#NUM!` - occurs if x is negative and if f degFreedom < 1 or degFreedom >10^10.

## CONFIDENCE

Returns the confidence interval for a population mean, using a normal distribution 

**Syntax:**

_CONFIDENCE(alpha,standard_dev,size)_

**Where:**

* alpha denotes the significance level used to compute the confidence level. The confidence level equals 100*(1 - alpha)%, or in other words, an alpha of 0.05 indicates a 95 percent confidence level.

* standard_dev denotes the population standard deviation for the data range and is assumed to be known.

* size denotes the sample size.


## CORREL

The `Correl` function returns the correlation coefficient of the array1 and array2 cell ranges.

**Syntax:**

_CORREL(array1, array2)_

**where:**

* array1 is a cell range of values.

* array2 is the second cell range of values.

**Remarks:**

array1 and array2 must have the same number of data points.

## COUNT

The `Count` counts the number of items in a list that contains numbers.

**Syntax:**

_COUNT(value1, value2,...)_

**where:**

value1, value2, ... are arguments that can contain or refer to a variety of different types of data, but only numbers are counted.

**Remarks:**

* Arguments that are numbers, dates or text representations of numbers are counted; arguments that are error values or text that cannot be translated into numbers are ignored.

* If an argument is an array or reference, only numbers in that array or reference are counted. Empty cells, logical values, text or error values in the array or reference are ignored.

## COUNTA

The `CountA` counts the number of cells that are not empty.

**Syntax:**

_COUNTA(value1, value2,...)_

**where:**

* value1, value2, ... are arguments representing the values you want to count. In this case, a value is any type of information, excluding empty cells.

## COUNTBlank

The `CountBlank` counts empty cells in a specified range of cells.

**Syntax:**

_COUNTBLANK(range)_

**where:**

range is the range from which you want to count the blank cells.

**Remarks:**

Cells with formulas that return "" (empty text) are also counted. Cells with zero values are not counted.

## COUNTIF

Returns the number of cells (of a supplied range), that satisfy a given criteria.

**Syntax:**

_COUNTIF (range, criteria)_

**where:**

* range is the range of cells to count.

* criteria is the criteria that controls which cells should be counted.

## COUNTIFS

Returns the number of cells (of a supplied range), that satisfy a set of given criteria

**Syntax:**

_COUNTIFS(criteria_range1, criteria1, [criteria_range2, criteria2]…)_

**Where:**

* criteria_range1 denotes the first range in which to evaluate the associated criteria.

* criteria1 denotes the criteria in the form of a number, expression, cell reference, or text that define which cells will be counted. For example, criteria can be expressed as 32, ">32", B4, "apples", or "32".

* criteria_range2, criteria2, ... is additional ranges and their associated criteria. Up to 127 range/criteria pairs are allowed.

**Remarks:**

* Each range's criteria is applied one cell at a time. If all of the first cells meet their associated criteria, the count increases by 1. If all of the second cells meet their associated criteria, the count increases by 1 again, and so on until all of the cells are evaluated.

* If the criteria argument is a reference to an empty cell, the COUNTIFS function treats the empty cell as a 0 value.

* You can use the wildcard characters— the question mark (?) and asterisk (*) — in criteria. A question mark matches any single character, and an asterisk matches any sequence of characters. If you want to find an actual question mark or asterisk, type a tilde (~) before the character.

## COVAR

Returns population covariance (i.e. the average of the products of deviations for each pair within two supplied data sets)

**Syntax:**
_COVAR(array1,array2)_

**Where:**

* array1 is the first cell range of integers.

* array2 is the second cell range of integers.

## COVARIANCE.P

Returns population covariance, the average of the products deviation for each data point pair in two data sets.

**Syntax:**

_COVARIANCE.P(array1,array2)_

**Where:**

* array1 denotes the first cell range of integers.

* array2 denotes the second cell range of integers.

## COVARIANCE.S

Returns the sample covariance, the average of the products deviation for each data point pair in two data sets.

**Syntax:**

_COVARIANCE.S(array1,array2)_

**Where:**

* Array1 denotes the first cell range of integers.

* Array2 denotes the second cell range of integers.

## CRITBINOM

Returns the smallest value for which the cumulative binomial distribution is greater than or equal to a criterion value

**Syntax:**

_CRITBINOM(trials,probability_s,alpha)_

**Where:**

* Trials denotes the number of Bernoulli trials.

* Probability_s denotes the probability of a success on each trial.

* Alpha denotes the criterion value.

**Remarks:**

* If any argument is non-numeric, CRITBINOM returns the #VALUE! error value.

* If trials is not an integer, it is truncated.

* If trials < 0, CRITBINOM returns the #NUM! error value.

* If probability_s is < 0 or probability_s > 1, CRITBINOM returns the #NUM! error value.

* If alpha < 0 or alpha > 1, CRITBINOM returns the #NUM! error value


## DEVSQ

The `DevSQ` returns the sum of squares of deviations of data points from their sample mean.

**Syntax:**

_DEVSQ(number1, number2,...)_

**where:**

number1, number2, ... are arguments for which, you want to calculate the sum of squared deviations. You can also use a single array or a reference to an array instead of arguments separated by commas.

**Remarks:**

The arguments must be numbers or names, arrays or references that contain numbers.

## EXPON.DIST

The `Expon.Dist` function calculates the value of the probability density function or the cumulative distribution function for the **Exponential Distribution**.

**Syntax:**

_EXPON.DIST(x,y,cumulative)_

**where:**

* x is the value that evaluates the function.

* y is the parameter value.

* cumulative is a logical value for given function.

**Remarks:**

* `#NUM!` occurs when x is lesser than zero and y is equal to or lesser than zero. 

* `#VALUE!` occurs when x or y is non-numeric.

## EXPONDIST

Returns the exponential distribution

**Syntax:**

_EXPONDIST(x,lambda,cumulative)_

**Where:**

* x denotes the value of the function.

* lambda denotes the parameter value.

* cumulative denotes a logical value that indicates which form of the exponential function to provide. If cumulative is TRUE, EXPONDIST returns the cumulative distribution function; if FALSE, it returns the probability density function.

## F.DIST 

The `F.Dist` function calculates the Probability Density Function or the Cumulative Distribution Function for the **F Distribution**.

**Syntax:**

_F.DIST(x,degFreedom1,degFreedom2,cumulative)_ 

**where:**

* x is the value that evaluates the function.

* degFreedom1 is the numerator degree of freedom.

* degFreedom1 is the denominator degree of freedom. 

* cumulative is a logical value that determines the form of the function.

**Remarks:**

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when x is negative, when degFreedom1< 1 and when degFreedom1< 1

## F.DIST.RT

The `F.Dist.Rt` function calculates the F Probability Distribution that measures the degree of diversity between two data sets.

**Syntax:**

_F.DIST.RT(x, degFreedom1, degFreedom2)_ 


**where:**

* x is the value that evaluates the function.

* degFreedom1 is the numerator degree of freedom.

* degFreedom2 is the denominator degree of freedom. 

**Remarks:**

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when x is negative, when degFreedom1< 1 and  when degFreedom2< 1.

## F.INV.RT

The `F.INV.RT` function calculates the inverse of the Cumulative F Distribution for a supplied probability.

**Syntax:**

_F.INV.RT(probability,degFreedom1,degFreedom2)_

**where:**

* probability is a probability that corresponds to the normal distribution.

* degFreedom1 is the numerator degrees of freedom.

* degFreedom2 is the denominator degrees of freedom.

**Remarks:**

* `#NUM!` occurs when probability is equal to or lesser than zero and when probability is equal to or greater than one.

* `#VALUE!` occurs when probability or degFreedom1 or degFreedom2 is non-numeric.

## FDIST

Returns the F probability distribution (probability density or cumulative distribution function)

**Syntax:**

_FDIST(x,deg_freedom1,deg_freedom2)_

**Where:**

* x denotes the value at which to evaluate the function.

* deg_freedom1 denotes the numerator degrees of freedom.

* deg_freedom2 denotes the denominator degrees of freedom.

**Remarks:**

* If any argument is non-numeric, FDIST returns the #VALUE! error value.

* If x is negative, FDIST returns the #NUM! error value.

* If deg_freedom1 or deg_freedom2 is not an integer, it is truncated.

* If deg_freedom1 < 1 or deg_freedom1 ≥ 1010, FDIST returns the #NUM! error value.

* If deg_freedom2 < 1 or deg_freedom2 ≥ 1010, FDIST returns the #NUM! error value.

* FDIST is calculated as FDIST=P( F>x ), where F is a random variable that has an F distribution with deg_freedom1 and deg_freedom2 degrees of freedom.

## FINV

Returns the inverse of the right-tailed F probability distribution for two data sets

**Syntax:**

_FINV(probability,deg_freedom1,deg_freedom2)_

**Where:**

* Probability denotes a probability associated with the F cumulative distribution.

* Deg_freedom1 denotes the numerator degrees of freedom.

* Deg_freedom2  denotes the denominator degrees of freedom.


## FISHER

The `Fisher` returns the Fisher transformation at x. This transformation produces a function that is normally distributed rather than skewed.

**Syntax:**

_FISHER(x)_ 

**where:**

x is a numeric value for which you want the transformation.

**Remarks:**

x must be > -1 and < 1.

## FISHERInv

The `FisherInv` returns the inverse of the Fisher transformation. If y = FISHER(x), then FISHERINV(y) = x.

**Syntax:**

_FISHERINV(y)_

**where:**

y is the value for which you want to perform the inverse of the transformation.

## FORECAST

The `Forecast` calculates a future value by using existing values in a linear regression. The predicted value is a y-value for a given x-value.

**Syntax:**

_FORECAST(x, known_ys, known_xs)_

**where:**

* x is the data point for which you want to predict a value.

* known_ys is the dependent array or range of data.

* known_xs is the independent array or range of data.

## F.DIST.RT

The `F.DIST.RT` function calculates the F Probability Distribution, which measures the degree of diversity between two data sets.

**Syntax:**

_F.DIST.RT(x, degFreedom1, degFreedom2)_

**where:**

* x is the value that evaluates the function.

* degFreedom1 is the numerator degrees of freedom.

* DegFreedom2 is the denominator degrees of freedom.

**Remarks:**

* `#VALUE!` occurs if any argument is non-numeric.

* `#NUM!` occurs if x is negative, if degFreedom1< 1 and  if degFreedom2< 1

## GEOMEAN

The `Geomean` returns the geometric mean of an array or range of positive data.

**Syntax:**

_GEOMEAN(number1, number2,...)_

**where:**

number1, number2, ... are arguments for which you want to calculate the mean.

**Remarks:**

* The arguments must be either numbers or names, arrays or references that contain numbers.

* All values must be positive.

## HARMEAN

The `Harmean` returns the harmonic mean of a data set. The harmonic mean is the reciprocal of the arithmetic mean of reciprocals.

**Syntax:**

_HARMEAN(number1, number2,...)_

**where:**

number1, number2, ... are arguments for which you want to calculate the mean.

**Remarks:**

* The arguments must be either numbers or names, arrays or references that contain numbers.

* All data values must be positive.

## INTERCEPT

The `Intercept` calculates the point at which, the least squares fit line will intersect the y-axis.

**Syntax:**

_INTERCEPT(known_y's, known_x's)_

**where:**

* known_y's is the dependent set of observations or data.

* known_x's is the independent set of observations or data.

## LARGE

The `Large` returns the k-th largest value in a data set.

**Syntax:**

_LARGE(array, k)_

**where:**

* array is the array or range of data for which, you want to determine the k-th largest value.

* k is the position (from the largest) in the array or cell range of data to return.

**Remarks:**

If n is the number of data points in a range, then LARGE(array,1) returns the largest value, and `LARGE(array,n)` returns the smallest value.

## MAX

The `Max` returns the largest value in a set of values.

**Syntax:**

_MAX(number1, number2, ...)_

**where:**

number1, number2, ... are numbers for which you want to find the maximum value.

## MAXA

The `Maxa` returns the largest value in a list of arguments. Text and logical values such as True and False are compared as well as numbers.

**Syntax:**

_MAXA(value1, value2, ...)_

**where:**

* value1, value2, ... are values for which you want to find the largest value.

**Remarks:**

* You can specify arguments that are numbers, empty cells, logical values or text representations of numbers. Arguments that are error values cause errors. If the calculation does not include text or logical values, use the MAX worksheet function instead.

* If an argument is an array or reference, only values in that array or reference are used. Empty cells and text values in the array or reference are ignored.

* Arguments that contain True evaluate as 1; arguments that contain text or False evaluate as 0 (zero).

* If the arguments contain no values, MAXA returns 0 (zero).

## MEDIAN

The `Median` returns the median of the given numbers. The median is the number in the middle of a set of numbers; that is, half the numbers have values that are greater than the median and half have values that are less.

**Syntax:**

_MEDIAN(number1, number2, ...)_

**where:**

number1, number2, ... are numbers for which you want the median.

**Remarks:**

If there is an even number of numbers in the set, then MEDIAN calculates the average of the two numbers in the middle.

## MIN

The `Min` returns the smallest number in a set of values.

**Syntax:**

_MIN(number1, number2, ...)_

**where:** 

number1, number2, ... are numbers for which you want to find the minimum value.

**Remarks:**

If an argument is an array or reference, only numbers in that array or reference are used. Empty cells, logical values or text in the array or reference are ignored. If logical values and text should not be ignored, use MINA.

## MINA

The `Mina` returns the smallest value in the list of arguments. Text and logical values such as True and False are compared as well as numbers.

**Syntax:**


_MINA(value1, value2, ...)_

**where:**

value1, value2, ... are values for which, you want to find the smallest value.

**Remarks:**

Arguments that contain True evaluate as 1; arguments that contain text or False evaluate as 0 (zero).

## NORM.DIST

The `NORM.DIST` function calculates the normal distribution for a supplied value of x, and a supplied distribution mean & standard deviation.

**Syntax:**

_NORM.DIST(x,mean,stdev,cumulative)_

**where:**

* x is the value for which you want the distribution.

* mean is the arithmetic mean of the distribution.

* stdev is the standard deviation of the distribution.

* cumulative is a logical value for given function.

**Remarks:**

* `#VALUE!` occurs if mean or stdev is non-numeric.

* `#NUM!` occurs if stdev is equal to or less than zero.

## NORMDIST

Returns the normal cumulative distribution

**Syntax:**

_NORMDIST(x,mean,standard_dev,cumulative)_

**where:**

* x is the value for which you want the distribution.

* mean is the arithmetic mean of the distribution.

* standard_dev is the standard deviation of the distribution.

* cumulative is a logical value that determines the form of the function. If cumulative is TRUE, NORMDIST returns the cumulative distribution function; if FALSE, it returns the probability mass function.

**Remarks:**

* `#VALUE!` Occurs when mean or standard_dev is non-numeric.

* `#NUM!` Occurs when standard_dev ≤ 0.

* If mean = 0, standard_dev = 1, and cumulative = TRUE, NORMDIST returns the standard normal distribution, NORMSDIST.

## NORMSDIST

Returns the standard normal cumulative distribution.

**Syntax:**

_NORMSDIST(z)_

**where:**

* z is the value for which you want the distribution.

**Remarks:**

* `#VALUE!` Occurs when z is non-numeric.

## GAMMA.INV

The `Gamma.Inv` function returns the inverse of the Gamma Distribution.

**Syntax:**

_GAMMA.INV(x,y,z,cumulative)_

**where:**

* x is the value that evaluates the function.

* y is a distribution parameter.

* z is a distribution parameter.

* cumulative is a logical value that indicates which form of the exponential function to provide.

**Remarks:**

* `#NUM!` occurs when x is lesser than zero, when z is equal to or lesser than zero and occurs when alpha is equal to or lesser than zero. 

* `#VALUE!` occurs when x or y or z is non-numeric.

## GAMMA.DIST

Returns the gamma distribution

**Syntax:**

_GAMMA.DIST(x,alpha,beta,cumulative)_

**Where:**

* x denotes the value at which you want to evaluate the distribution.

* alpha denotes a parameter to the distribution.

* beta denotes a parameter to the distribution. If beta = 1, GAMMA.DIST returns the standard gamma distribution.

* cumulative denotes a logical value that determines the form of the function. If cumulative is TRUE, GAMMA.DIST returns the cumulative distribution function; if FALSE, it returns the probability density function.

## GAMMADIST

Returns the gamma distribution

**Syntax:**

_GAMMADIST(x,alpha,beta,cumulative)_

**Where:**

* x denotes the value at which you want to evaluate the distribution.

* alpha denotes a parameter to the distribution.

* beta denotes a parameter to the distribution. If beta = 1, GAMMADIST returns the standard gamma distribution.

* cumulative denotes a logical value that determines the form of the function. If cumulative is TRUE, GAMMADIST returns the cumulative distribution function; if FALSE, it returns the probability density function.

## GAMMAINV

Returns the inverse gamma cumulative distribution

**Syntax:**

_GAMMAINV(probability,alpha,beta)_

**Where:**

* probability denotes the probability associated with the gamma distribution.

* alpha denotes a parameter to the distribution.

* beta denotes a parameter to the distribution. If beta = 1, GAMMAINV returns the standard gamma distribution.

**Remarks:**

* If any argument is text, GAMMAINV returns the #VALUE! error value.

* If probability < 0 or probability > 1, GAMMAINV returns the #NUM! error value.

* If alpha ≤ 0 or if beta ≤ 0, GAMMAINV returns the #NUM! error value.

## GAMMALN

Calculates the natural logarithm of the gamma function for a supplied value

**Syntax:**

_GAMMALN(x)_

**Where:**

x denotes the value for which you want to calculate `GAMMALN`.

## GAMMALN.PRECISE

The `Gammaln.Precise` function returns the natural logarithm of the Gamma Distribution.

**Syntax:**

_GAMMALN.PRECISE(x)_ 

**where:**

* x is the positive numeric value that evaluates the function. 

**Remarks:**

* `#NUM!` occurs when x is lesser than zero.

* `#VALUE!` occurs when x is non-numeric.

## GROWTH

Returns numbers in a exponential growth trend, based on a set of supplied x- and y- values

**Syntax:**

_GROWTH(known&#95;y's, [known&#95;x's], [new&#95;x's], [const])_

**Where:**

* Known_y's denotes the set of y-values you already know in the relationship `y = b*mx`.

	* If the array known_y's is in a single column, then each column of known_x's is interpreted as a separate variable.

	* If the array known_y's is in a single row, then each row of known_x's is interpreted as a separate variable.

	* If any of the numbers in known_y's is 0 or negative, GROWTH returns the #NUM! error value.

* Known_x's denotes an optional set of x-values that you may already know in the relationship `y = b*mx`.

	* The array known_x's can include one or more sets of variables. If only one variable is used, known_y's and known_x's can be ranges of any shape, as long as they have equal dimensions. If more than one variable is used, known_y's must be a vector (that is, a range with a height of one row or a width of one column).

	* If known_x's is omitted, it is assumed to be the array {1,2,3,...} that is the same size as known_y's.

* New_x's denotes are new x-values for which you want GROWTH to return corresponding y-values.

	* New_x's must include a column (or row) for each independent variable, just as known_x's does. So, if known_y's is in a single column, known_x's and new_x's must have the same number of columns. If known_y's is in a single row, known_x's and new_x's must have the same number of rows.

	* If new_x's is omitted, it is assumed to be the same as known_x's.

	* If both known_x's and new_x's are omitted, they are assumed to be the array {1,2,3,...} that is the same size as known_y's.

* Const denotes a logical value specifying whether to force the constant b to equal 1.

	* If const is TRUE or omitted, b is calculated normally.

	* If const is FALSE, b is set equal to 1 and the m-values are adjusted so that `y = mx`.

**Remarks:**

* Formulas that return arrays must be entered as array formulas after selecting the correct number of cells.

* When entering an array constant for an argument such as known_x's, use commas to separate values in the same row and semicolons to separate rows.

## HYPGEOMDIST

Returns the hypergeometric distribution 

**Syntax:**

_HYPGEOMDIST(sample&#95;s,number&#95;sample,population&#95;s,number&#95;pop)_

**Where:**

* Sample_s denotes the number of successes in the sample.

* Number_sample denotes the size of the sample.

* Population_s denotes tThe number of successes in the population.

* Number_pop denotes the population size.

## HYPGEOM.DIST

Returns the hypergeometric distribution

**Syntax:**

_HYPGEOM.DIST(sample&#95;s,number&#95;sample,population&#95;s,number&#95;pop,cumulative)_

**Where:**

* sample_s denotes the number of successes in the sample.

* number_sample denotes the size of the sample.

* population_s denotes the number of successes in the population.

* number_pop denotes the population size.

* cumulative denotes a logical value that determines the form of the function. If cumulative is TRUE, then HYPGEOM.DIST returns the cumulative distribution function; if FALSE, it returns the probability mass function.

## KURT

Returns the kurtosis of a data set

**Syntax:**

_KURT(number1, [number2], ...)_

**where:**

* number1, number2, ...    Number1 is required, subsequent numbers are optional. 1 to 255 arguments for which you want to calculate kurtosis. You can also use a single array or a reference to an array instead of arguments separated by commas.

## LOGEST

Returns the parameters of an exponential trend for a supplied set of x- and y- values

**Syntax:**

_LOGEST(known_y's, [known_x's], [const], [stats])_

**Where:**

* Known_y's denotes the set of y-values you already know in the relationship `y = b*mx`.

	* If the array known_y's is in a single column, then each column of known_x's is interpreted as a separate variable.

	* If the array known_y's is in a single row, then each row of known_x's is interpreted as a separate variable.

* Known_x's denotes an optional set of x-values that you may already know in the relationship y = b*mx.

	* The array known_x's can include one or more sets of variables. If only one variable is used, known_y's and known_x's can be ranges of any shape, as long as they have equal dimensions. If more than one variable is used, known_y's must be a range of cells with a height of one row or a width of one column (which is also known as a vector).

	* If known_x's is omitted, it is assumed to be the array {1,2,3,...} that is the same size as known_y's.

* Const denotes a logical value specifying whether to force the constant b to equal 1.

	* If const is TRUE or omitted, b is calculated normally.

	* If const is FALSE, b is set equal to 1, and the m-values are fitted to `y = mx`.

* Stats denotes a logical value specifying whether to return additional regression statistics.

	* If stats is TRUE, LOGEST returns the additional regression statistics, so the returned array.

	* If stats is FALSE or omitted, LOGEST returns only the m-coefficients and the constant b.

## LOGINV

Returns the inverse of the lognormal distribution

**Syntax:**

_LOGINV(probability, mean, standard_dev)_

**Where:**

* probability denotes a probability associated with the lognormal distribution.

* mean denotes the mean of ln(x).

* standard_dev denotes the standard deviation of ln(x).

## LOGNORMDIST

Returns the cumulative log-normal distribution

**Syntax:**

_LOGNORMDIST(x,mean,standard_dev)_

**Where:**

* x  denotes the value at which to evaluate the function.

* mean denotes the mean of ln(x).

* standard_dev denotes the standard deviation of ln(x).


## LOGNORM.DIST

The `Lognorm.Dist` function calculates the Log-Normal Probability Density Function or the Cumulative Log-Normal Distribution Function for a supplied value of x.

**Syntax:**

_LOGNORM.DIST(x,mean,stdev,cumulative)_

**where:**

* x is the value that evaluates the function.

* mean is the mean value of ln(x).

* stdev is the standard deviation of ln(x).

* cumulative is a logical value that determines the form of the function. 

**Remarks:**

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when x ≤ 0 or if stdev ≤ 0.

## LOGNORM.INV

The `Lognorm.Inv` function calculates the inverse of the Cumulative Log-Normal Distribution Function of x for a supplied probability.

**Syntax:**

_LOGNORM.INV(probability, mean, stdev)_

**where:**

* probability is a probability that corresponds to the lognormal distribution.

* mean is the arithmetic mean of In(x).

* stdev is the standard deviation of ln(x).

**Remarks:**

* `#VALUE!` occurs when any argument is non-numeric.

* `#NUM!` occurs when probability <= 0 or probability >= 1 and if Stdev<=0.

## MAXIFS

Returns the largest value from a subset of values in a list that are specified according to one or more criteria

**Syntax:**

_MAXIFS(max_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)_

**Where:**

* max_range denotes the actual range of cells in which the maximum will be determined.

* criteria_range1 is the set of cells to evaluate with the criteria.

* criteria1 is the criteria in the form of a number, expression, or text that defines which cells will be evaluated as maximum. The same set of criteria works for the MINIFS, SUMIFS, and AVERAGEIFS functions.

* criteria_range2,criteria2, ... is additional ranges and their associated criteria. You can enter up to 126 range/criteria pairs.

**Remarks:**

The size and shape of the max_range and criteria_rangeN arguments must be the same, otherwise these functions return the #VALUE! error.

## MINIFS

Returns the smallest value from a subset of values in a list that are specified according to one or more criteria

**Syntax:**

_MINIFS(min_range, criteria_range1, criteria1, [criteria_range2, criteria2], ...)_

**Where:**

* min_range denotes the actual range of cells in which the minimum value will be determined.

* criteria_range1 is the set of cells to evaluate with the criteria.

* criteria1 is the criteria in the form of a number, expression, or text that defines which cells will be evaluated as minimum. The same set of criteria works for the MAXIFS, SUMIFS and AVERAGEIFS functions.

* criteria_range2,criteria2, ... is additional ranges and their associated criteria.You can enter up to 126 range/criteria pairs.

**Remark:**

The size and shape of the min_range and criteria_rangeN arguments must be the same, otherwise these functions return the #VALUE! error.

## MODE

Returns the Mode (the most frequently occurring value) of a list of supplied numbers

**Syntax:**

_MODE(number1,[number2],...)_

**Where:**

* number1 denotes the first number argument for which you want to calculate the mode.

* number2,... is number arguments 2 to 255 for which you want to calculate the mode. You can also use a single array or a reference to an array instead of arguments separated by comma

## MODE.MULT

Returns a vertical array of the most frequently occurring values in an array or range of data 

**Syntax:**

_MODE.MULT((number1,[number2],...)_

**Where:**

* number1 denotes the first number argument for which you want to calculate the mode.

* number2, ... denotes number arguments 2 to 254 for which you want to calculate the mode. You can also use a single array or a reference to an array instead of arguments separated by commas.

**Remarks:**

* Arguments can either be numbers or names, arrays, or references that contain numbers.

* If an array or reference argument contains text, logical values, or empty cells, those values are ignored; however, cells with the value zero are included.

* Arguments that are error values or text that cannot be translated into numbers cause errors.

* If the data set contains no duplicate data points, MODE.MULT returns the #N/A error value

## MODE.SNGL

Returns the Mode (the most frequently occurring value) of a list of supplied numbers 

**Syntax:**

_MODE.SNGL(number1,[number2],...)_

**Where:**

* number1 denotes the first argument for which you want to calculate the mode.

* number2, ... denotes arguments 2 to 254 for which you want to calculate the mode. You can also use a single array or a reference to an array instead of arguments separated by commas.

## NEGBINOMDIST

Returns the negative binomial distribution

**Syntax:**

_NEGBINOMDIST(number_f,number_s,probability_s)_

**Where:**

* number_f is the number of failures.
* number_s  is the threshold number of successes.
* probability_s is the probability of a success.

## NORMINV

Returns the inverse of the normal cumulative distribution

**Syntax:**
_NORMINV(probability,mean,standard_dev)_

**Where:**

* probability denotes a probability corresponding to the normal distribution.

* mean denotes the arithmetic mean of the distribution.

* standard_dev  denotes the standard deviation of the distribution.

**Remarks:**

* If any argument is non-numeric, NORMINV returns the #VALUE! error value.

* If probability <= 0 or if probability >= 1, NORMINV returns the #NUM! error value.

* If standard_dev ≤ 0, NORMINV returns the #NUM! error value.

* If mean = 0 and standard_dev = 1, NORMINV uses the standard normal distribution (see NORMSINV).

## NORMSINV

Returns the inverse of the standard normal cumulative distribution

**Syntax**

_NORMSINV(probability)_

**Where:**

probability denotes a probability corresponding to the normal distribution.

**Remarks:**

* If Probability is non-numeric, NORMSINV returns the #VALUE! error value.

* If Probability <= 0 or if Probability >= 1, NORMSINV returns the #NUM! error value.

## NORM.INV

Returns the inverse of the normal cumulative distribution

**Syntax:**

_NORM.INV(probability,mean,standard_dev)_

**Where:**

* probability denotes a probability corresponding to the normal distribution.

* mean denotes the arithmetic mean of the distribution.

* standard_dev denotes the standard deviation of the distribution.

**Remarks:**

* If any argument is non-numeric, NORM.INV returns the #VALUE! error value.

* If probability <= 0 or if probability >= 1, NORM.INV returns the #NUM! error value.

* If standard_dev ≤ 0, NORM.INV returns the #NUM! error value.

* If mean = 0 and standard_dev = 1, NORM.INV uses the standard normal distribution (see NORMS.INV).


## NORM.S.DIST

The `Norm.S.Dist` function returns the standard normal distribution.

**Syntax:**

_NORM.S.DIST(val, cumulative)_

**where:**

* val is the value for which you want the distribution.

* cumulative is a logical value that determines the form of the function.

## NORM.S.INV

The `Norm.S.Inv` function returns the inverse of the standard normal cumulative distribution.

**Syntax:**

_NORM.S.INV(probability)_

**where:**

probability is a probability that corresponds to the normal distribution.

## NEGBINOM.DIST

The `Negbinom.Dist` function calculates the probability mass function or the cumulative distribution function for the `Negative Binomial Distribution`.

**Syntax:**

_NEGBINOM.DIST(F_number,S_number,S_probability,cumulative)_

**where:**

* F_number is the number of failures.

* S_number is the threshold number of successes.

* S_probability is the probability of a success.

* cumulative is a logical value that determines the form of the function.

## PEARSON

Returns the Pearson product moment correlation coefficient

**Syntax:**

_PEARSON(array1, array2)_

**Where:**

* array1 denotes a set of independent values.

* array2 denotes a set of dependent values.

## PERCENTILE

Returns the K'th percentile of values in a supplied range, where K is in the range 0 - 1 (inclusive)

**Syntax:**

_PERCENTILE(array,k)_

**Where:**

* array denotes the array or range of data that defines relative standing.

* k denotes the percentile value in the range 0..1, inclusive.

**Remarks:**

* If k is non-numeric, PERCENTILE returns the #VALUE! error value.

* If k is < 0 or if k > 1, PERCENTILE returns the #NUM! error value.

* If k is not a multiple of 1/(n - 1), PERCENTILE interpolates to determine the value at the k-th percentile.

## PERCENTILE.EXC

The `Percentile.Exc` function returns the k-th percentile of values in a range, where k is in the range of 0 to 1 exclusively.

**Syntax:**

_PERCENTILE.EXC(array, k)_

**where:**

* array is the range of data that defines relative standing.

* k is the percentile value in the range of 0 to 1.

**Remarks:**

* `#NUM!` occurs when k is equal to or lesser than zero, when k is equal to or greater than 1, and when the array is empty.

* `#VALUE!` occurs when k is non-numeric.

## PERCENTILE.INC

The `Percentile.Inc` function returns the k-th percentile of values in a range, where k is in the range 0 to 1.

**Syntax:**

_PERCENTILE.INC (array,k)_

**where:**

* array is the range of data that defines relative standing.

* k is the percentile value in the range 0 to 1.

**Remarks:**

* `#NUM!` occurs when k is equal to or lesser than zero, when k is equal to or greater than 1, and when the array is empty.

* `#VALUE!` occurs when k is a non-numeric.

## PERCENTILERANK

Returns the rank of a value in a data set, as a percentage (0 - 1 inclusive)

**Syntax:**

_PERCENTRANK(array,x,[significance])_

**Where:**

* array  denotes the array or range of data with numeric values that defines relative standing.

* x denotes the value for which you want to know the rank.

* significance denotes a value that identifies the number of significant digits for the returned percentage value. If omitted, PERCENTRANK uses three digits (0.xxx).

**Remarks:**

* If array is empty, PERCENTRANK returns the #NUM! error value.

* If significance < 1, PERCENTRANK returns the #NUM! error value.

* If x does not match one of the values in array, PERCENTRANK interpolates to return the correct percentage rank.

## PERCENTRANK.EXC

Returns the rank of value in dataset as a percentage of the data set as percentage (0….1, exclusive) of the dataset

**Syntax:**

_PERCENTRANK.EXC(array,x,[significance])_

**Where:**

* array denotes the array or range of data with numeric values that defines relative standing

* x denotes the value for which you want to know the rank.

* significance denotes a value that identifies the number of significant digits for the returned percentage value. If omitted, PERCENTRANK.EXC uses three digits (0.xxx).

**Remarks:**

* If array is empty, PERCENTRANK.EXC returns the #NUM! error value.

* If significance < 1, PERCENTRANK.EXC returns the #NUM! error value.

* If x does not match one of the values in array, PERCENTRANK.EXC interpolates to return the correct percentage rank.

## PERCENTRANK.INC

Returns the rank of value in dataset as a percentage of the data set as percentage (0….1, inclusive) of the dataset

**Syntax:**
_PERCENTRANK.INC(array,x,[significance])_

**Where:**

* array denotes the array or range of data with numeric values that defines relative standing.

* x denotes the value for which you want to know the rank.

* significance denotes a value that identifies the number of significant digits for the returned percentage value. If omitted, PERCENTRANK.INC uses three digits (0.xxx).

* bytes specify the number of characters

## PERMUT

The `Permut` returns the number of permutations for a given number of objects that can be selected from a number of objects.

**Syntax:**

_PERMUT(number, number_chosen)_

**where:**

* number is an integer that describes the number of objects.

* number_chosen is an integer that describes the number of objects in each permutation.

**Remarks:**

* Number must be > 0 and  number_chosen must be >= 0.

* Number must be >= number_chosen.

## PERMUTATIONA

The `PermutationA` function returns the number of permutations for a given number of objects (with repetitions) that can be selected from the total number of objects.

**Syntax:**

_PERMUTATIONA(number, number-chosen)_

**where:**

* number is an integer that describes the total number of objects.

* number-chosen is an integer that describes the number of objects in each permutation.

**Remarks:**

* `#VALUE!` occurs when numeric arguments use data types that are non-numeric.

* `#NUM!` occurs when numeric arguments have values that are not valid.

## POISSON

Returns the Poisson distribution

**Syntax:**

_POISSON(x,mean,cumulative))_

**Where:**

* x denotes the number of events.

* mean denotes the expected numeric value.

* cumulative  denotes a logical value that determines the form of the probability distribution returned. If cumulative is TRUE, POISSON returns the cumulative Poisson probability that the number of random events occurring will be between zero and x inclusive; if FALSE, it returns the Poisson probability mass function that the number of events occurring will be exactly x.


## POISSON.DIST

The `Poisson.Dist` function calculates the Poisson Probability Mass Function or the Cumulative Poisson Probability Function for a supplied set of parameters.

**Syntax:**

_POISSON.DIST(x,mean,cumulative)_

**where:**

* x is the number of events.

* mean is the expected numeric value.

* cumulative is a logical value that determines the form of the probability distribution returned.

**Remarks:**

* `#VALUE!` occurs when x is not an integer.

* `#NUM!` occurs when x or mean is non-numeric and s when x < 0.

## PROB

Returns the probability that values in a supplied range are within given limits.

**Syntax:**

_PROB(x_range, prob_range, [lower_limit], [upper_limit])_

**Where:**

* x_range is the range of numeric values of x with which there are associated probabilities.

* prob_range denotes a set of probabilities associated with values in x_range.

* lower_limit is the lower bound on the value for which you want a probability.

* upper_limit is the optional upper bound on the value for which you want a probability.

**Remarks:**

* If any value in prob_range ≤ 0 or if any value in prob_range > 1, PROB returns the #NUM! error value.

* If the sum of the values in prob_range is not equal to 1, PROB returns the #NUM! error value.

* If upper_limit is omitted, PROB returns the probability of being equal to lower_limit.

* If x_range and prob_range contain a different number of data points, PROB returns the #N/A error value.

## QUARTILE

Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (inclusive)

**Syntax:**
_QUARTILE(array,quart)_

**Where:**

* array denotes the array or cell range of numeric values for which you want the quartile value.

* quart indicates which value to return.

* bytes specify the number of characters

<table>
<tr>
<th>
<b>If quart equals  </b></th><th>
<b>QUARTILE returns</b></th></tr>
<tr>
<td>
0 </td><td>
Minimum value.</td></tr>
<tr>
<td>
1</td><td>
First quartile (25th percentile)</td></tr>
<tr>
<td>
2</td><td>
Median value (50th percentile).</td></tr>
<tr>
<td>
3</td><td>
Third quartile (75th percentile.</td></tr>
<tr>
<td>
4</td><td>
Maximum value.</td></tr>
</table>

## QUARTILE.EXC


Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (exclusive)

**Syntax:**

_QUARTILE.EXC(array, quart)_

**Where:**

* array denotes the array or cell range of numeric values for which you want the quartile value.

* quart indicates which value to return.

**Remarks:**

* If array is empty, QUARTILE.EXC returns the #NUM! error value.

* If quart is not an integer, it is truncated.

* If quart ≤ 0 or if quart ≥ 4, QUARTILE.EXC returns the #NUM! error value.

* MIN, MEDIAN, and MAX return the same value as QUARTILE.EXC when quart is equal to 0 (zero), 2, and 4, respectively.

## QUARTILE.INC

Returns the specified quartile of a set of supplied numbers, based on percentile value 0 - 1 (inclusive)

**Syntax:**

_QUARTILE.INC(array,quart)_

**Where:**

* array  denotes the array or cell range of numeric values for which you want the quartile value.

* quart indicates which value to return.

<table>
<tr><th>If quart equals</th>
<th>QUARTILE.INC returns</th></tr>
<tr><td>
0 </td>
<td>
Minimum value.
</td></tr>
<tr><td>
1</td>
<td>
First 
 (25th percentile)
</td></tr>
<tr><td>
2</td>
<td>
Median value (50th percentile)
</td></tr>
<tr><td>
3</td><td>
Third quartile (75th percentile)
</td></tr>
<tr><td>4</td>
<td>
Maximum value
</td></tr>
</table>

**Remarks:**

* If array is empty, QUARTILE.INC returns the #NUM! error value.

* If quart is not an integer, it is truncated.

* If quart < 0 or if quart > 4, QUARTILE.INC returns the #NUM! error value.

* MIN, MEDIAN, and MAX return the same value as QUARTILE.INC when quart is equal to 0 (zero), 2, and 4, respectively.

## RANK.AVG

Returns the statistical rank of a given value, within a supplied array of values (if more than one value has same rank, the average rank is returned)

**Syntax:**
_RANK.AVG(number,ref,[order])_

**Where:**

* Number denotes the number whose rank you want to find.

* Ref denotes an array of, or a reference to, a list of numbers. Non-numeric values in Ref are ignored.

* Order is a number specifying how to rank number.

**Remarks:**

* If Order is 0 (zero) or omitted, Excel ranks number as if ref were a list sorted in descending order.

* If Order is any nonzero value, Excel ranks number as if ref were a list sorted in 

## RANK.EQ

The `Rank.Eq` function returns the statistical rank of a given value within a supplied array of values.

**Syntax:**

_RANK.EQ(number, ref)_

**where:**

* number is the value for which you want to find the rank.

* ref is an array of values containing the supplied number.

## RSQ

The `RSQ` returns the square of the Pearson product moment correlation coefficient through data points in known_y's and known_x's.

**Syntax:**

_RSQ(known_y's, known_x's)_

**where:**

* known_y's is an array or range of data points.

* known_x's is an array or range of data points.

## SKEW

Returns the skewness of a distribution

**Syntax:**

_SKEW(number1, [number2], ...)_

**Where:**

number1, number2, ...    Number1 is required, subsequent numbers are optional. 1 to 255 arguments for which you want to calculate skewness. You can also use a single array or a reference to an array instead of arguments separated by commas.

## SKEW.P

Returns the skewness of a distribution

**Syntax:**

_SKEW.P(number 1, [number 2],…)_

**Where:**

number 1, number 2,…    Number 1 is required, subsequent numbers are optional. Number 1, number 2,… are 1 to 254 numbers or names, arrays, or reference that contain numbers for which you want the population skewness.

**Remarks:**

* Arguments can either be numbers or names, arrays, or references that contain numbers.

* Logical values and text representations of numbers that you type directly into the list of arguments are counted.

* If an array or reference argument contains text, logical values, or empty cells, those values are ignored; however, cells with the value zero (0) are included.

* SKEW.P uses the standard deviation of an entire population, not a sample.

* If arguments are values that are not valid, SKEW.P returns the #NUM! error value.

* If arguments use data types that are not valid, SKEW.P returns the #VALUE! error value.

* If there are fewer than three data points, or the sample standard deviation is zero, SKEW.P returns the #DIV/0! Error value.

## SLOPE

Returns the slope of the linear regression line through a supplied series of x- and y- values

**Syntax:**

_SLOPE(known_y's, known_x's)_

**Where:**

* known_y's denotes an array or cell range of numeric dependent data points.

* known_x's denotes the set of independent data points.

## SMALL

The `Small` returns the k-th smallest value in a data set.

**Syntax:**

_SMALL(array, k)_

**where:**

* array is an array or range of numerical data for which you want to determine the k-th smallest value.

* k is the position (from the smallest) in the array or range of data to return.

## STANDARDIZE

The `Standardize` returns a normalized value from a distribution characterized by mean and standard_dev.

**Syntax:**

_Standardize(x, mean, standard_dev))

**where:**

* x is the value that you want to normalize.

* mean is the arithmetic mean of the distribution.

* standard_dev is the standard deviation of the distribution.

**Remarks:**

* standard_dev must be > 0.

## STDEV

Returns the standard deviation of a supplied set of values (which represent a sample of a population).

**Syntax:**

_STDEV(number1,[number2],...)_

**where:**

* number1 is the first number argument corresponding to a sample of a population.

* number2… is the number arguments 2 to 255 corresponding to a sample of a population. You can also use a single array or a reference to an array instead of arguments separated by commas.

## STDEVA

Estimates standard deviation based on a sample. The standard deviation is a measure of how widely values are dispersed from the average value (the mean). Text and logical values such as True and False are also included in the calculation.

**Syntax:**

_STDEVA(value1, value2 , ...)_

**where:**

* value1, value2, ... are values corresponding to a sample of a population. You can also use a single array or a reference to an array instead of arguments separated by commas.

**Remarks:**

* Arguments that contain True evaluate as 1; arguments that contain text or False evaluate as 0 (zero).

## STDEVPA

Calculates the standard deviation based on the entire population given as arguments, including text and logical values.

**Syntax:**

_STDEVPA(value1, value2, ...)_

**where:**

* value1, value2, ... are values corresponding to a population. You can also use a single array or a reference to an array instead of arguments separated by commas.

**Remarks:**

* Arguments that contain True evaluate as 1; arguments that contain text or False evaluate as 0 (zero).

## STDEV.P

The `STDEV.P` function calculates the standard deviation of a supplied set of values.

**Syntax:**

_STDEV.P(number1,[number2],...])_

**where:**

* number1 is the first number argument corresponding to a population.

* number2 ... are the arguments 2 to 254 corresponding to a population.

**Remarks:**

* Arguments can either be numbers or names, arrays, or references that contain numbers.

* The standard deviation is calculated by using the **n** method.

* Arguments that are error values or text that cannot be translated into numbers cause errors.

## STDEV.S

The `STDEV.S` function calculates the sample standard deviation of a supplied set of values.

**Syntax:**

_STDEV.S(number1,[number2],...])_

**where:**

* number1 is the first number argument corresponding to a population.

* Number2, ... are the arguments 2 to 254 corresponding to a population.

**Remarks:**

* Arguments can either be numbers or names, arrays, or references that contain numbers.

* The standard deviation is calculated by using the **n** method.

* Arguments that are error values or text that cannot be translated into numbers cause errors.

## STEYX

Returns the standard error of the predicted y-value for each x in the regression line for a set of supplied x- and y- values

**Syntax:**
_STEYX(known_y's, known_x's)_

**Where:**

* Known_y's denotes an array or range of dependent data points.

* Known_x's denotes an array or range of independent data points

## T.DIST

The `T.Dist` returns the Percentage Points (probability) for the Student t-distribution where a numeric value (x) is a calculated value of t for which the Percentage Points are to be computed. 

**Syntax:**

_TDIST(x,deg_freedom,tails)_

**where:**

* X is the numeric value at which to evaluate the distribution.

* Deg_freedom  is an integer indicating the number of degrees of freedom.

* Tails is the number of distribution tails to return. If Tails = 1, TDIST returns the one-tailed distribution. If Tails = 2, TDIST returns the two-tailed distribution.

**Remarks:**

* If any argument is non-numeric, TDIST returns the `#VALUE!` error value.

* If Deg_freedom < 1, TDIST returns the #NUM! error value.

* The Deg_freedom and Tails arguments are truncated to integers.

* If Tails is any value other than 1 or 2, TDIST returns the #NUM! error value.

* If x < 0, then TDIST returns the #NUM! error value.

* If Tails = 1, TDIST is calculated as TDIST = P( X>x ), where X is a random variable that follows the t-distribution. If Tails = 2, TDIST is calculated as TDIST = P(&#124;X&#124; > x) = P(X > x or X < -x).

* Since x < 0 is not allowed, to use TDIST when x < 0, note that TDIST(-x,df,1) = 1 – TDIST(x,df,1) = P(X >-x) and TDIST(-x,df,2) = TDIST(x,df,2) = P(&#124;X&#124; > x).

## T.INV

The `T.INV` returns the left-tailed inverse of the Student's t-distribution.

**Syntax:**

_T.INV(probability,deg_freedom)_

**where:**

* Probability is the probability associated with the Student's t-distribution.

* Deg_freedom is the number of degrees of freedom with which to characterize the distribution.

**Remarks:**

* If either argument is non-numeric, T.INV returns the `#VALUE!` error value.

* If probability <= 0 or if probability >1, T.INV returns the #NUM! error value.

* If deg_freedom is not an integer, it is truncated.

* If deg_freedom < 1, T.INV returns the #NUM! error value.

## TRIMMEAN

Returns the mean of the interior of a data set. `TRIMMEAN` calculates the mean taken by excluding a percentage of data points from the top and bottom tails of a data set.

**Syntax:**

_TRIMMEAN(array, percent)_

**where:**

* array is the array or range of values to trim and average.

* percent is the fractional number of data points to exclude from the calculation. For example, if percent = 0.2, 4 points are trimmed from a data set of 20 points (20 x 0.2): 2 from the top and 2 from the bottom of the set.

**Remarks:**

* Percent must be >= 0 and <= 1.

* TRIMMEAN rounds off the number of excluded data points down to the nearest multiple of 2. If percent = 0.1, 10 percent of 30 data points equals 3 points. For symmetry, TRIMMEAN excludes a single value from the top and bottom of the data set.

## VAR

Returns the variance of a supplied set of values (which represent a sample of a population)

**Syntax:**

_VAR(number1,[number2],...)_

**Where:**

* Number1 denotes the first number argument corresponding to a sample of a population.

* Number2, ... denotes number arguments 2 to 255 corresponding to a sample of a population.

## VAR.P

Calculates variance based on the entire population (ignores logical values and text in the population).

**Syntax:**

_VAR.P(number1,[number2],...)_

**where:**

* number1 is the first number argument corresponding to a population.

* number2, ... is Optional. Number arguments 2 to 254 corresponding to a population.

**Remarks:**

* VAR.P assumes that its arguments are the entire population. If your data represents a sample of the population, then compute the variance by using VAR.S.

* Arguments can either be numbers or names, arrays, or references that contain numbers.

* Logical values, and text representations of numbers that you type directly into the list of arguments are counted.

* If an argument is an array or reference, only numbers in that array or reference are counted. Empty cells, logical values, text, or error values in the array or reference are ignored.

* Arguments that are error values or text that cannot be translated into numbers cause errors.

* If you want to include logical values and text representations of numbers in a reference as part of the calculation, use the VARPA function.

## VARPA

Calculates variance based on the entire population. In addition to numbers and text, logical values such as True and False are also included in the calculation.

**Syntax:**

_VARPA(value1, value2, ...)_

**where:**

* value1, value2, ... are arguments corresponding to a population.

**Remarks:**

* VARPA assumes that its arguments are the entire population. If your data represents a sample of the population, you must compute the variance using VARA.

* Arguments that contain True evaluate as 1; arguments that contain text or False evaluate as 0 (zero). If the calculation does not include text or logical values, use the VARP worksheet function instead.

## VARA

The `VarA` function returns the variance of a population based on a sample of numbers, text, and logical values (example: TRUE or FALSE).

**Syntax:**

_VARA( value1, value2, ... value_n )_

**where:**

* value1, value2, ... value_n are the sample values. They can be numbers, text, and logical values. Values that are TRUE are evaluated as 1. Values that are FALSE or text values are evaluated as 0. 30 values can be entered.

## WEIBULL

Returns the Weibull distribution

**Syntax:**

_WEIBULL(x,alpha,beta,cumulative)_

**Where:**

* x denotes the value at which to evaluate the function.

* alpha denotes a parameter to the distribution.Beta denotes a parameter to the distribution.

* cumulative determines the form of the function.

## WEIBULL.DIST

The `Weibull.Dist` function returns the Weibull Distribution.

**Syntax:**

_WEIBULL.DIST(x,alpha,beta,cumulative)_

**where:**

* x is the value that evaluates the function.

* alpha is a parameter of the distribution.

* beta is a parameter of the distribution.

* cumulative determines the form of the function.

**Remarks:**

* `#NUM!` occurs when x is lesser than zero and when alpha or beta is equal to or lesser than zero.

* `#VALUE!` occurs when beta is non-numeric.

## ZTEST

`ZTest` function returns the one-tailed probability value of a z-test.

**Syntax:**

_ZTEST(array,T_value,sigma)_ 

**where:**

* array is an array or range of data.

* T_value is the value to test..

* sigma is the population (known) standard deviation.

## CHITEST 

`CHITEST` function returns the value from the chi-squared (χ2) distribution. 

**Syntax:**

_CHITEST(actual_range,expected_range)_ 

**where:**

* Actual_range : The range of data to test against expected values.

* Expected_range :The range of data that contains the ratio of the product of row and column totals to the grand total. 

## FDIST  

`FDIST` function returns the (right-tailed) F probability distribution (degree of diversity) which measures the degree of diversity for two data sets.

**Syntax:**

_FDIST(x,deg_freedom1,deg_freedom2)_ 

**where:**

* X  : The numeric value at which to evaluate the function.

* Deg_freedom1 : The integer specifying the numerator degrees of freedom.

* Deg_freedom2 :The integer specifying the denominator degrees of freedom.

**Remarks:**

* The argument is non-numeric, it returns the `#VALUE!` error message.

* The argument (x) is negative, it returns the `#NUM!` error message.

* The argument (deg_freedom1 or deg_freedom2) is not an integer, it is truncated.

* The argument (deg_freedom1 or deg_freedom2) is less than 1 or  greater than equal to 10^10, it returns the `#NUM!` error message.

## FINV   

`FINV` function returns the inverse of the (right-tailed) F probability distribution for a given probability.

**Syntax:**

_FINV(probability,deg_freedom1,deg_freedom2)_ 

**where:**

* Probability   : A probability  to evaluate the inverse F cumulative distribution.

* Deg_freedom1 : The integer specifying the numerator degrees of freedom.

* Deg_freedom2 :The integer specifying the denominator degrees of freedom.

**Remarks:**

* The argument is non-numeric, it returns the `#VALUE!` error message.

* The argument(probability) < 0 or probability > 1, it returns the `#NUM!` error message.

* The arguments(deg_freedom1 or deg_freedom2) is not an integer, it is truncated.

* The arguments(deg_freedom1 or deg_freedom2) less than 1 or  greater than equal to 10^10, it returns the `#NUM!` error message.


## FISHER    

`FISHER` function returns the Fisher transformation of the given value. This transformation produces a function that is normally distributed rather than skewed. Use this function to perform hypothesis testing on the correlation coefficient.

**Syntax:**

_FISHER(x)_ 

**where:**

* X   : A numeric value for which you want calculate the Fisher Transformation.

**Remarks:**

* The argument (x) is non-numeric, it returns the `#VALUE!` error message.

* The argument (x) ≤ -1 or if x ≥ 1, it returns the `#NUM!` error message.

## FISHERINV     

`FISHERINV` function returns the inverse of the Fisher transformation of the given value. Use this transformation when analyzing correlations between ranges or arrays of data.

**Syntax:**

_FISHERINV(y)_ 

**where:**

* Y   : The numeric value for which you want to calculate the inverse of the Fisher transformation.

**Remarks:**

* The argument (y) is non-numeric, it returns the `#VALUE!` error message.

## RANK      

`RANK` function returns the rank of a number when compared to a list of other numbers. The rank of a number is its size relative to other values in a list.

**Syntax:**

_RANK(number,ref,[order])_ 

**where:**

* Number   : The is the number value whose rank you want to find.

* Ref     : It can be a array of, or a reference to, a list of numbers. Non-numeric values in ref are ignored.

* Order    :This is a number that specifies how the ranking will be done.

## Z.TEST      

`Z.TEST` function calculates the one-tailed P-value of a z-test.

**Syntax:**

_Z.TEST(array,x,[sigma])_ 

**where:**

* Array  : The array or range of data against which the hypothesized sample mean is to be tested.

* x  : The hypothesized sample mean.

* Sigma :This represents the population (known) standard deviation. If omitted, the function used the sample standard deviation. 

## BETA.DIST      

`BETA.DIST` function calculates the cumulative beta distribution function or the probability density function of the Beta distribution, for a given set of parameters.

**Syntax:**

_BETA.DIST(x,alpha,beta,cumulative,[A],[B])_ 

**where:**

* X       : The value between A and B at which to evaluate the function

* Alpha   : A parameter of the distribution.

* Beta    : A parameter of the distribution.

* Cumulative :A logical value that determines the form of the function. If cumulative is `TRUE`, it returns the cumulative distribution function. if `FALSE`, it returns the probability density function.

*  A (Optional):It is a lower bound to the interval of x.

*  B (Optional): It is a upper bound to the interval of x.

**Remarks:**

* The argument is non-numeric, it returns the `#VALUE!` error value.

* The argument (alpha) ≤ 0 or beta ≤ 0,it returns the `#NUM!` error value.

* The argument (x) < A, x > B, or A = B, it returns the `#NUM!` error value.

* If you omit values for the arguments (A and B), it uses the standard cumulative beta distribution, so that A = 0 and B = 1.

## LINEST     

`LINEST` function uses the least squares method to calculate the statistics for a straight line and returns an array describing that line.

**Syntax:**

_LINEST(known_y's, [known_x's], [const], [stats]))_ 

**where:**

* known_y's : This is the set of y-values from the line equation. 

* known_x's (Optional). This is a a set of x-values from the line equation.

* const (Optional). This is a logical value specifying whether to force the constant b to equal 0.

* If const is `TRUE` or omitted, b is calculated normally.

*  If const is `FALSE`, b is set equal to 0 

* stats (Optional). This is a logical value specifying whether to return additional regression statistics.
