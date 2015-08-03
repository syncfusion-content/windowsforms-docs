---
layout: post
title: Statistical-Formulas
description: statistical formulas
platform: WindowsForms
control: Chart
documentation: ug
---

# Statistical Formulas

Essential Chart comes with support for several Statistical formulas that will let you apply formulas on data points in one or more series and will help you analyze and arrive at meaningful information from those data points.

These formulas are mainly exposed via static methods from the BasicStatisticalFormulas and UtilityFunctions types.

## Basic Statistical Formulas

Some commonly used statistical formulas that you can apply on the series points are exposed via static methods in the BasicStatisticalFormulas type.



_Table_ _150_: _BasicStatisticalFormulas_

<table>
<tr>
<td>
Statistical Formulas</td><td>
Description</td></tr>
<tr>
<td>
Anova Test</td><td>
An ANOVA test is used to test the differences between the means of two or more groups of data.</td></tr>
<tr>
<td>
Correlation</td><td>
The Correlation formula shows how strong the relation is between two random variables.</td></tr>
<tr>
<td>
Covariance</td><td>
The Covariance formula measures the degree of dependence between two random variables.</td></tr>
<tr>
<td>
F-Test</td><td>
An F-test is any statistical test in which, the test statistic has an F-distribution if the null hypothesis is true. </td></tr>
<tr>
<td>
Mean</td><td>
This formula returns the average, or mean, of data stored in a data series.</td></tr>
<tr>
<td>
Median</td><td>
This formula returns the median for data stored in a data series.</td></tr>
<tr>
<td>
Standard Deviation</td><td>
This formula returns the Standard Deviation within a group of data.</td></tr>
<tr>
<td>
T Test with Equal Variances</td><td>
Perform a T Test using Student's distribution (T distribution) with equal variances.</td></tr>
<tr>
<td>
T Test Paired</td><td>
Performs a T Test using Student's distribution (T distribution) with paired samples. This is useful when there is a natural pairing of observations in samples. (i.e. when a sample group is tested twice.)</td></tr>
<tr>
<td>
T Test with unequal variances</td><td>
Perform a T Test using Student's distribution (T distribution) with unequal variances.</td></tr>
<tr>
<td>
Variance</td><td>
This formula returns the variance within a group of data. </td></tr>
<tr>
<td>
Z Test</td><td>
This formula performs a Z Test using Normal distribution.</td></tr>
</table>
### Anova Test

Anova stands for Analysis Of Variance. It is a technique to test the hypothesis that the means among two or more groups of data are equal and thereby, testing the differences between their variances, under the assumption that the sampled groups are normally distributed. 

The test actually compares the variation between the groups with the variation within the groups and produces the results based on the values of these variations. If the between variation is larger than the within variation, the means of the groups will not be equal. If both these variations are of approximately the same size, then there will not be any significant difference between the means.

Steps to perform an Anova test

The null hypothesis is that there is no difference between the means and the alternative hypothesis is that at least one means is different.

The following assumptions must be satisfied before performing the test.

* The groups from which the samples were obtained must be normally distributed.
* The groups are sampled randomly.
* The samples must be independent.
* The variances of the groups must be equal.
* The null hypothesis.



1. Calculate the Sum of Squares for total, between and within variations.

Total Variation



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img1.jpeg)' | markdownify }}





Between Variation



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img2.jpeg)' | markdownify }}





Where,

y is the individual y points of the series,

r is the number of series present,

N is the total number of y points for all the series and

n is the number of y points in each series.

Within Variation

_SSwithin = SStotal - SSamong_



2. Using the above quantities, calculate the degrees of freedom(_df_) for these variations.



Between Variation

_dfamong = r-1_



Within Variation

_dfwithin = N-r_



Where,

r is the number of series present and

N is the total number of Y points for all the series.

3. As the next step, calculate the Mean Squares of these variations. The mean square for a variation can be calculated simply by dividing its sum of square by its degrees of freedom.

Between Variation



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img3.png)' | markdownify }}





Within Variation



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img4.png)' | markdownify }}





4. Finally, calculate F Ratio as below and get the F Critical Value.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img5.png)' | markdownify }}





5. Make your decision as below.
* If the between variance is smaller than the within variance, then the means are really close to each other and you will fail to reject the null hypothesis.
* If the F ratio is greater than the F critical value, then the decision will be to reject the null hypothesis and thereby conclude that at least one of the means is different.

APIs Used

EssentialChart provides support to perform Anova Test by implementing a method named Anova in the BasicStatisticalFormulas class. This method does the above described calculations and returns the test results as an instance of AnovaResult class. The AnovaResult is a class implemented to store the anova test results such as sum of squares, degrees of freedom and mean squares for different variations and also stores the FRatio and FCriticalValue of the test. Below is a detailed table for the Anova method.



_Table_ _151_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Values</td></tr>
<tr>
<td>
Anova</td><td>
1. Probability: the alpha value (probability). 2. InputSeries: references to two or more input series. Each series must exist in the series collection at the time of the method call, and have the same number of data points. </td><td>
An Anova has the following members:* DegreeOfFreedomBetweenGroups * DegreeOfFreedomTotal * DegreeOfFreedomWithinGroups * FCriticalValue * FRatio * MeanSquareVarianceBetweenGroups * MeanSquareVarianceWithinGroups * SumOfSquaresBetweenGroups * SumOfSquaresTotal * SumOfSquaresWithinGroups </td></tr>
</table>



Here is a sample code snippet to simulate an Anova test.



[C#]



AnovaResult ar = BasicStatisticalFormulas.Anova(confidenceLevel,

new ChartSeries[]{ series1, series2, series3} );



[VB.NET]



Dim ar As AnovaResult = BasicStatisticalFormulas.Anova(confidenceLevel, New ChartSeries(){ series1, series2, series3})



The following image displays the results of an ANOVA test.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img6.jpeg)' | markdownify }}





_Figure_ _347_: _Anova Test_

### Correlation

Correlation, which is otherwise called as Correlation Coefficient, is a statistical formula that determines the degree of relationship between the y values of two series representing two variables. This calculation will then be used to measure the depth of synchronization between those two variables. 

A relationship generally refers to the correspondence between two variables. For instance, let us have two variables with one representing 'Work Experience' while the other indicating the 'Salary Expectation'. If the 'Work Experience' is high, then the 'Salary Expectation' will also be high. When 'Work Experience' is low, then the 'Salary Expectation' also tends to be low. Thereby these two variables are correlated. 

The relationships can be classified into two types, Positive and Negative. In a positive relationship, high values on one variable are associated with high values on the other and low values on one variable are associated with low values on the other. The negative relationship is just the inverse of the positive relationship where the high values on one variable are associated with low values on the other.

When the measured correlation coefficient is positive, the series values would be positively correlated where as if the correlation coefficient is negative, then the series values would then be negatively correlated. Below is the formula for calculating correlation coefficient.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img7.jpeg)' | markdownify }}



where,

x is the y value of first series and

y is the y value of second series.

Using the Formula

The Correlation Coefficient can easily be calculated by using the Correlation method available with the BasicStatisticalFormulas class. The following table describes the details of this method. This method returns the covariance of the datasets divided by the product of their standard deviations.



_Table_ _152_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Correlation</td><td>
1.FirstInputSeries: A ChartSeries object that stores the first group's data.2.SecondInputSeries: A ChartSeries object that stores the second group's data. An exception will be raised if the input series does not have the same number of data points.</td><td>
A double that represents the correlation value between the two groups of data. The value always ranges from -1 to 1.</td></tr>
</table>


Example

The below code snippet demonstrates how to get the correlation coefficient between two groups of data (Series1 and Series2) using the in-built formula.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double Correlation1= BasicStatisticalFormulas.Correlation(series1,series2);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim Correlation1 As Double

Correlation1=BasicStatisticalFormulas.Correlation(series,series1)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img8.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\ Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### Covariance

Covariance is a statistical formula that measures the extent to which the y values of two series vary together. It is basically used to measure the fluctuations between two quantities. For a given pairs of series y values, the covariance can be calculated by taking their differences from their mean values and multiplying these differences together. That is,



_Cov(x,y) = {[ x-(x) ][ y-(y) ]}_



If this product is positive, then the values would be varying in the same direction; if it is negative, then the values would be varying in opposite directions. If the product is zero, then we can conclude that there is no linear relationship between the series values. The above formula can be simplified as below.



_Cov(x,y) = {xy} - {x}{y}_



Using the Formula

The Covariance can easily be calculated by using the Covariance method available with the BasicStatisticalFormulas class. The following table describes the details of this method.



_Table_ _153_: _Property_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Covariance</td><td>
1. FirstInputSeriesName: A ChartSeries object that stores the first group's data. 2. SecondInputSeriesName: A ChartSeries object that stores the second group's data. An exception will be raised if the input series do not have the same number of data points. </td><td>
A double value that represents the covariance value between the two groups of data.</td></tr>
</table>


Example

Here is the code snippet that demonstrates the usage of this method.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double Covariance1= Statistics.BasicStatisticalFormulas.Covariance(series1,series2);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim Covariance1 As Double

Covariance1=BasicStatisticalFormulas.Covariance (series,series1)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img9.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### F-Test

The F-Test is a statistical test, which is carried out to find out whether two series have the same standard deviation with the specified confidence level. It is achieved by comparing the variances of the series values and thereby comparing their standard deviations. Here, the null hypothesis is that the two variances are equal. All hypothesis testing is done under the assumption that the null hypothesis is true.

Steps to perform F-Test

1. Calculate the variances of both the series.
2. Calculate F Ratio as given below.



_F Value_ _= firstSeriesVariance / secondSeriesVariance._



F-Test can be easily performed by using the FTest method of BasicStatisticalFormulas class that returns the results as a type of FTestResult. The FTestResult is a class implemented to save the F test result as FValue and other computation results such as series means, series variances, FRatio and FCriticalValue of the test. Below is a detailed table for the FTest method.  



_Table_ _154_: _F-Test_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Returns</td></tr>
<tr>
<td>
FTest</td><td>
1. Probability: Probability that gives the confidence level. 2. FirstInputSeries: Type of ChartSeries object that represents the first group of data. 3. SecondInputSeries: Type of ChartSeries object that represents the second group of data. </td><td>
An FTestResult has the following members:FirstSeriesMean SecondSeriesMean FirstSeriesVariance SecondSeriesVariance FValue ProbabilityFOneTail FCriticalValueOneTail</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



FTestResult ttr = Syncfusion.Windows.Forms.Chart.Statistics.BasicStatisticalFormulas.FTest(confidenceLevel,series1,series2);



[VB.NET]



Dim ttr As FTestResult = Syncfusion.Windows.Forms.Chart.Statistics.BasicStatisticalFormulas.FTest(confidenceLevel,series1,series2)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img10.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### Mean

Mean is statistical formula that returns the arithmetic average of series y values where the arithmetic average is the sum of all y values of a series divided by the total number of y values present in that series. The arithmetic mean can be calculated for any chart series by using Mean method of the BasicStatisticalFormulas class. Below table shows the method details.



_Table_ _155_: _Mean_

<table>
<tr>
<td>
Method Name</td><td>
Parameter</td><td>
Return value</td></tr>
<tr>
<td>
Mean</td><td>
InputSeries: A ChartSeries type object for whose y values an average is required. </td><td>
A double that represents the average of all the  y values in the given series.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double calculatedMean = BasicStatisticalFormulas.Mean(series1);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim calculatedMean As Double

calculatedMean = BasicStatisticalFormulas.Mean(series1)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img11.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### Median

Median is a statistical formula that is used to find the median of y values of a series. Median can be calculated by arranging the values from the lowest to the highest and picking up the middle one. If the total number of values is even, then pick up the two middle values after sorting the values in ascending order. The mean of these two middle values will give you the median. Hence half of the series points have values less than the median and the values of the other half will be greater than the median.

Median can be found out for any series by using the Median method of BasicStatisticalFormulas class. The below table shows the details of this method.



_Table_ _156_: _Median_

<table>
<tr>
<td>
Method Name</td><td>
Parameter</td><td>
Return value</td></tr>
<tr>
<td>
Median</td><td>
InputSeries: A ChartSeries type object for whose X values an average is required.</td><td>
A double that represents the Median value of all the X values in the given series.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double calculatedMedian = Statistics.BasicStatisticalFormulas.Median(series1);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim Median1 As Double

calculatedMedian = BasicStatisticalFormulas.Median(series1)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img12.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### Standard Deviation

StandardDeviation is the statistical formula that is basically used to measure the variability. That is, it can be used to measure how to spread out your data are. It can be defined as the square root of the variance where a variance is the average of the squared differences between the data points and the mean. In other words, it is named as the 'root-mean-square' of the data values. 

It can be used to check how tightly the data values are clustered around the mean. If the data points are close to the mean, then the standard deviation will be small or if the points are far from the mean, then the standard deviation is large or if all the data values are equal, then the standard deviation is zero.

The Standard Deviation can be calculated for any series by using the StandardDeviation method of BasicStatisticalFormulas class. Below is the detailed description of this method.



_Table_ _157_: _StandardDeviation_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
StandardDeviation</td><td>
1. InputSeries: A ChartSeries type object for on whose Y values this formula should be applied.2. SampleVariance: true if the data is a sample of a population, false if it is the entire population. </td><td>
A double that represents the standard deviation within the group of data.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double Deviation1 = BasicStatisticalFormulas.StandartDeviation(series1,false);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim Deviation1 As Double

Deviation1 = BasicStatisticalFormulas. StandartDeviation  (series1,false)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img13.jpeg)' | markdownify }}

_Note: For further details, refer to this Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

### T-Tests

T-Test is a statistical formula that is used to measure the equality between the means of two series. In other words, the T-test compares the actual difference between two means in relation to the variation in data that can be measured by calculating the standard deviation of the difference between the means.

It is a statistical test used to test the null hypothesis that the means of two normally distributed populations are equal. This test can be performed on two given samples (series), each characterized by its mean, standard deviation and number of data points, to determine whether the means are distinct based on the assumption that the underlying distributions are normal.

Different T-Tests

There are different versions of T tests depending on whether the samples are:

* independent of each other, (where the series are random with no relationship between each other)

_OR_

* paired, (where every data point in one series will have a relationship with a particular point of another series).

If the calculated t-statistic exceeds the chosen threshold value (usually 0.05), then the decision is to reject the null hypothesis, which states that the two sample means are equal, in favor of an alternate hypothesis, which typically specifies that the two samples differ.

Below are the different formulae to calculate the t-statistic:

* T-Test with Equal Variances

This formula performs a T test for two groups of data and assumes equal variances between the two groups (i.e. series). 

* T-Test Paired

This formula performs a paired two-sample student's t-test to determine whether a sample's means are distinct. This form of the t-test does not assume that the variances of both the populations are equal. 

Use a paired test when there is a natural pairing of observations in the samples, such as a sample group that is tested twice. (e.g. before and after an experiment)

* T-Test with UnEqual Variances

This formula performs a T-test for two groups of data and assumes unequal variances between the two groups. (i.e. series)

This analysis tool is referred to as a heteroscedastic t-test and can be used when the groups that are under study are distinct. Use a paired test when there is one group before and after a treatment.

> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img14.jpeg)' | markdownify }}

_Note: For programming example, refer to the following Browser Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

#### TTest with Equal Variances

This type of TTest can be performed on two random series that have no relationship with each other. But they should be of equal sizes, i.e., the number of data points of the two series should be same.

Steps to perform the test

1. Specify the null hypothesis and alternate hypothesis.

* Null Hypothesis - Difference between the two means is zero.
* Alternate Hypothesis - Difference between the two means is not zero.

2. Calculate the means of the two input series (µ1 and µ2)and calculate their difference (Md).



_Md = µ1 - µ2_

3. Calculate the variances of the two input series (s1 and s2).
4. Let n1 and n2 be the number of data points in first and second series respectively.
5. Calculate the degrees of freedom.



_D = n1 + n2 - 2_

6. As a next step, calculate the Pooled Estimator as below.



_Sp = (n1 - 1) * s1 + (n2 - 1) * s2_

7. Calculate the T-statistic as given below.



_t = (µ1  - µ2 - Md) / Sqrt(Sp/n1 + Sp/n2)_

8. Construct a t-table at (n1+n2-2) degrees of freedom.
9. Choose a level of significance(probability), say p = 0.05 and read the tabulated value.
10. If the calculated tvalue exceeds the tabulated value we can say that the means are significantly different at that level of probability.

Using the Formula 

The TTest formula for equal variances can be calculated by using the TTestEqualVariances method of the BasicStatisticalFormulas class. The following table presents the details of this method. This method returns an instance of TTestResult class that stores the resultant values of this test such as means of the two series, T value, degrees of freedom, number of points in every series, T critical value and confidence level(probability).



_Table_ _158_: _Property_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
TTestEqualVariances</td><td>
1. HypothesizedMeanDifference: A double value specifying the difference between two population means. 2. Probability: A double value that gives the confidence level.3. FirstInputSeries: A ChartSeries object that stores the first group of data. 4. SecondInputSeries: A ChartSeries object that stores the second group of data. . </td><td>
A TTestResult object that has the following members:* FirstSeriesMean * SecondSeriesMean * FirstSeriesVariance * SecondSeriesVariance * Tvalue * DegreeOfFreedom * ProbabilityTOneTail * TCriticalValueOneTail * ProbabilityTTwoTail * TCriticalValueTwoTail</td></tr>
</table>



Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

TTestResult ttr = BasicStatisticalFormulas.TTestEqualVariances (0.2, 0.05, series1, series2);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim ttr As TTestResult = BasicStatisticalFormulas.TTestEqualVariances (0.2, 0.05, series1, series2)

#### T-Test with UnEqual Variance

If the assumption of 'equal variances' is violated, then we have to compute the test statistic using the individual sample's standard deviation instead of pooled standard deviation. Like the TTestEqualVariances formula, the TTestUnequalVariances formula also will be carried out on two independent samples. The only difference with unequal variances test is that the sample should be of different sizes.

Steps to perform the test

1. Specify the null hypothesis and alternate hypothesis.
* Null Hypothesis - Difference between the two means is zero.
* Alternate Hypothesis - Difference between the two means is not zero.
2. Calculate the means of the two input series (µ1 and µ2)and calculate their difference (Md).



_Md = µ1 - µ2_

3. Calculate the variances of the two input series (s1 and s2).
4. Let n1 and n2 be the number of data points in first and second series respectively.
5. Calculate the degrees of freedom.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img15.png)' | markdownify }}





6. Calculate the T-statistic as given below.



_t = (µ1  - µ2 - Md) / Sqrt( s1/n1 + s2/n2 )_

7. Choose a level of significance (probability), say p = 0.05 and read the tabulated value.
8. If the calculated tvalue exceeds the tabulated value we can say that the means are significantly different at that level of probability.

Using the Formula 

The TTest formula for unequal variances can be calculated by using the TTestUnEqualVariances method of the BasicStatisticalFormulas class. The following table presents the details of this method. This method returns an instance of TTestResult class that stores the resultant values of this test such as means of the two series, T value, degrees of freedom, number of points in every series, T critical value and confidence level (probability).



_Table_ _159_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
TTestUnEqualVariances</td><td>
1. HypothesizedMeanDifference: A double value  that gives the difference between the means of the two input series.2. Probability: A double value  that denotes the probability that gives the confidence level.3. FirstSeries: A ChartSeries object that stores the first group of data. 4. SecondSeries: A ChartSeries object that stores the second group of data. </td><td>
A TTestResult object that has the following members:* FirstSeriesMean * SecondSeriesMean * FirstSeriesVariance * SecondSeriesVariance * Tvalue * DegreeOfFreedom * ProbabilityTOneTail * TCriticalValueOneTail * ProbabilityTTwoTail <br>TCriticalValueTwoTail </td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



TTestResult ttr = BasicStatisticalFormulas.TTestUnEqualVariances(0.2, 0.05,series1,series2);



[VB.NET]



Dim ttr As TTestResult = BasicStatisticalFormulas.TTestUnEqualVariances(0.2, 0.05, series1, series2)

#### TTest Paired

This formula is used when there is a dependency between the samples. The two possible scenarios could be when there is a single sample that is tested twice (before and after an experiment), or when there are two samples whose values can be matched. This test assumes that there is some difference between the means of two input series populations. Input series are regarded as samples from normally distributed populations. The population variances are assumed to be unequal. This test is otherwise called as Robust TTest.

Steps to perform the test

1. Specify the null hypothesis and alternate hypothesis.
* Null Hypothesis: Difference between the two means is zero.
* Alternate Hypothesis: Difference between the two means is not zero.
2. Calculate the difference between two series on each pair of values. Calculate the mean difference ( Mdiff ), ie., mean of the new series values.
3. Calculate the Standard Deviation of the differences( _Sd_ ).
4. Get the degrees of freedom.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img16.png)' | markdownify }}



5. Compute the t-statistic as given below.

_t = ( Mdiff - Md ) / [Sd * Sqrt( 1/n1 )]_



6. Construct a t-table at (n1 - 1) degrees of freedom and get the tabulated value for a given level of significance (probability).
7. If the calculated tvalue exceeds the tabulated value we can say that the means are significantly different at that level of probability.

Using the Formula

The TTest formula for dependent samples can be calculated by using the TTestPaired method of the BasicStatisticalFormulas class. The following table presents the details of this method. This method returns an instance of TTestResult class that stores the resultant values of this test such as means of the two series, T value, degrees of freedom, and number of points in every series, T critical value and confidence level (probability).



_Table_ _160_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
TTestPaired</td><td>
1. HypothesizedMeanDifference: A double value specifying the difference between two population means. 2. Probability: A double value  that denotes the probability that gives the confidence level.3. FirstSeries: A ChartSeries object that stores the first group of data. 4. SecondSeries: A ChartSeries object that stores the second group of data. </td><td>
A TTestResult object that has the following members:* FirstSeriesMean * SecondSeriesMean * FirstSeriesVariance * SecondSeriesVariance * Tvalue * DegreeOfFreedom * ProbabilityTOneTail * TCriticalValueOneTail * ProbabilityTTwoTail * TCriticalValueTwoTail</td></tr>
</table>



Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;



TTestResult ttr = BasicStatisticalFormulas.TTestPaired(0.2, 0.05, series1, series2);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics



Dim ttr As TTestResult = BasicStatisticalFormulas.TTestPaired(0.2, 0.05, series1, series2)

### Variance

Variance is a statistical formula that calculates the variance of series y values. A Variance can be defined as the square of the standard deviation of a sample.

Using the Formula

The variance can be computed for any series by using the method Variance of BasicStatisticalFormulas class. Below table shows the details of this method.



_Table_ _161_: _Variance_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Variance</td><td>
1. InputSeries: A ChartSeries object that represents the input series.2. SampleVariance: A boolean value; true if the data is a sample of a population, false if it is the entire population. </td><td>
A double that represents the variance within the group of data.</td></tr>
</table>


Example

Variance is the square of the standard deviation for the given data.   



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

............

double Variance1= BasicStatisticalFormulas.Variance(series1,false);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

.............

Dim Variance1 As Double
Variance1=BasicStatisticalFormulas.Variance (series1,false)          

### Z-Test

Z-test is a statistical formula that is used to determine if the difference between a sample mean and the population mean is large enough to be statistically significant. This test is primarily used to determine if the test scores of the samples are either within or outside the standard scores. 

Steps to perform ZTest

This test requires the sample to be random and is taken from a population that is distributed normally. In order to perform this test, the following quantities should be known.

* s (the standard deviation of the population) 
* µ (the mean of the population) 
* x (the mean of the sample) 
* n (the size of the sample) 
1. Calculate the standard error (SE) of the mean:



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img17.jpeg)' | markdownify }}





2. Then compute the z-score for the Z-test as below.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img18.jpeg)' | markdownify }}





3. Finally, the z score is compared to a Z table which contains the percent of area under the normal curve between the mean and the z score. Using this table will indicate whether the calculated z score is within the realm of chance or it is so different from the mean that the sample mean is unlikely to have happened by chance.

Using the Formula

The Z-test can be carried out on any two series values by using the ZTest method of BasicStatisticalFormuals class. Below table gives the detailed description of this method. The method returns an instance of ZTestResult object that saves the intermediate results and also the final z score of the test.



_Table_ _162_: _Z Test Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
ZTest</td><td>
1. HypothesizedMeanDifference: the difference between the population means.2. VarianceOfFirstSeries: the variance within the first series population.3. VarianceOfSecondSeries: the variance within the second series population.4. Probability: the probability that gives the confidence level.5. FirstSeries: A ChartSeries object that stores the first group of data. 6. SecondSeries: A ChartSeries object that stores the second group of data.</td><td>
An ZTestResult object that has the following members:* FirstSeriesMean * SecondSeriesMean * FirstSeriesVariance * SecondSeriesVariance * ZValue * ProbabilityZOneTail * ZCriticalValueOneTail * ProbabilityZTwoTail * ZCriticalValueTwoTail  </td></tr>
</table>



Example

Here is a code snippet that shows a sample usage.



[C#]



ZTestResult ztr = BasicStatisticalFormulas.ZTest( Convert.ToDouble(TextBox6.Text.ToString()), 

sqrtVarianceOfFirstSeries*sqrtVarianceOfFirstSeries,

sqrtVarianceOfSecondSeries* sqrtVarianceOfSecondSeries,0.05,series1,series2);



[VB.NET]



Dim ztr As ZTestResult = BasicStatisticalFormulas.ZTest(Convert.ToDouble(TextBox6.Text.ToString()), sqrtVarianceOfFirstSeries*sqrtVarianceOfFirstSeries, sqrtVarianceOfSecondSeries*sqrtVarianceOfSecondSeries, 0.05, series1, series2)



> {{ '![](Statistical-Formulas_images/Statistical-Formulas_img19.jpeg)' | markdownify }}

_Note: For programming example, refer to the following Sample:_

[Installed drive]:\Documents and Settings\[User name]\My Documents\Syncfusion\EssentialStudio\[Installed version]\Windows\Chart.Windows\Samples\2.0\Statistical Analysis\Chart Statistical Formulas

## Utility Functions

Listed below are some common statistical formulas that are implemented in the Utilities type.



_Table_ _163_: _Utilities_

<table>
<tr>
<td>
Statistical Formulas</td><td>
Description</td></tr>
<tr>
<td>
Beta Function</td><td>
The BetaFunction method returns the beta function for a given value.</td></tr>
<tr>
<td>
Beta Cumulative Distribution</td><td>
The Beta Cumulative Distribution method returns the Beta cumulative distribution for a given value.</td></tr>
<tr>
<td>
Inverse Beta Cumulative Distribution</td><td>
The Inverse Beta Cumulative Distribution method returns the Inverse Beta cumulative distribution for a given value.</td></tr>
<tr>
<td>
Gamma Function</td><td>
The GammaFunction method returns the gamma function for a given value.</td></tr>
<tr>
<td>
Gamma Cumulative Distribution</td><td>
The Gamma Cumulative Distribution method returns the Gamma cumulative distribution for a given value.</td></tr>
<tr>
<td>
FCumulative Distribution</td><td>
The F Cumulative Distribution method returns the FCumulative distribution for a given value.</td></tr>
<tr>
<td>
Inverse FCumulative Distribution</td><td>
The Inverse F Cumulative Distribution method returns the Inverse F Cumulative distribution for a given value.</td></tr>
<tr>
<td>
TCumulative Distribution</td><td>
The T Cumulative Distribution method returns the T Cumulative distribution for a given value.</td></tr>
<tr>
<td>
Inverse TCumulative Distribution</td><td>
The Inverse T Cumulative Distribution method returns the Inverse T Cumulative distribution for a given value.</td></tr>
<tr>
<td>
Normal Distribution</td><td>
The Normal Distribution method returns the Normal distribution for a given value.</td></tr>
<tr>
<td>
Inverse Normal Distribution</td><td>
Returns the inverse of the standard normal cumulative distribution. The distribution has a mean of 0 (zero) and a standard deviation of one.</td></tr>
<tr>
<td>
Normal Distribution Density</td><td>
The Normal Distribution Density method returns the Normal distribution density for a given value.</td></tr>
<tr>
<td>
Binomial</td><td>
The Binomial method returns the Binomial coefficient for a given Value.</td></tr>
<tr>
<td>
Factorial</td><td>
The Factorial method returns the Factorial for a given Value.(eg 2!=2).</td></tr>
<tr>
<td>
Error Function</td><td>
The Erf method returns the Error Function for a given Value.</td></tr>
<tr>
<td>
Inverse Error Function</td><td>
The Inverse Erf method returns the Inverse Error Function for a given Value.</td></tr>
</table>
### Beta Function 

There are two widely used utility functions, the Gamma and Beta functions, which are used in statistics to calculate distribution values. These functions always return a double value and use two double values for input. The beta function was studied by Euler and Legendre and was named by Jacques Binet. In mathematics, the beta function (occasionally written as Beta function) which, is also called the Euler integral of the first kind, is a special function defined by:



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img20.jpeg)' | markdownify }}





where G(x) is the gamma function.

Using the Formula

The Beta method of the UtilityFunctions class calculates the beta function for given two values. 



_Table_ _164_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Beta</td><td>
1. a: The first value. 2. b: The second value.</td><td>
A double that represents the beta function value.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]

using Syncfusion.Windows.Forms.Chart.Statistics;

double result = UtilityFunctions.Beta(a,b);



[VB.NET]

Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim double as result = UtilityFunctions.Beta(a,b);

### Beta Cumulative Distribution

The Beta Distribution can be defined as a family of probability distributions differing in the values of α and β. The Cumulative distribution function is given below.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img21.jpeg)' | markdownify }}



where Bx(a,ß) is the incomplete beta function and Ix(a,ß) is the regularized incomplete beta function.

Using the Formula

The BetaCumulativeDistribution method of the UtilityFunctions class returns the cumulative beta distribution for x>=0, a >0, b>0.



_Table_ _165_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
BetaCumulativeDistribution</td><td>
1. a: The lower limit.2. b: The upper limit.3. x: the value for which the distribution has to be calculated.</td><td>
A double that represents the cumulative beta distribution.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



ChartSeries series = new ChartSeries("a=b=0.5");

for(double i=0;i<=1;i=i+0.1)

{

// Calculate Beta cumulative function for a points and plot the points in chart control.

series.Points.Add(i,Syncfusion.Windows.Forms.Chart.Statistics.UtilityFunctions.BetaCumulativeDistribution(0.5,0.5,i));

}

series.Type = ChartSeriesType.Spline;

series.Tex = series.Name;

this.ChartControl1.Series.Add(series);



[VB.NET]



'Calculate Beta cumulative function for a points and plot the points in chart control.

Dim series As New ChartSeries("a=b=0.5")

For i As Double = 0 To 1 Step 0.1

series.Points.Add(i,Syncfusion.Windows.Forms.Chart.Statistics.UtilityFunctions.BetaCumulativeDistribution(0.5,0.5,i))

Next i

series.Type = ChartSeriesType.Spline

series.Text = series.Name

Me.ChartControl1.Series.Add(series)

### Binomial Coefficient 

Binomial Coefficient is an utility function used in statistical calculations. This function is used to determine the possible number of combinations of 'k' items that can be selected from a set of 'n' items. The binomial coefficient formula can be explicitly stated as given below.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img22.jpeg)' | markdownify }}





where n! denotes the factorial of n. 

An alternative name for the binomial coefficient is choose function; the binomial coefficient of n and k is often read as "n choose k". Alternative notations include C(n, k), nCk (C for combination). These numbers are called binomial coefficients because they are coefficients in binomial theorem.

Using the formula

The Binomial method of the UtilityFunctions class returns the binomial coefficient for given n and k values.



_Table_ _166_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Binomial</td><td>
1. The n value.2. The k value.</td><td>
An integer that represents the binomial coefficient  value.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]

using Syncfusion.Windows.Forms.Chart.Statistics;

int result = UtilityFunctions.Binomial(n, k);



[VB.NET]

Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim int as result = UtilityFunctions.Binomial(n, k)

### Inverse Beta Cumulative Distribution

This formula returns the inverse of Beta Cumulative Distribution.

Using the formula

The InverseBetaCumulativeDistribution method of the UtilityFunctions class returns the inverse of beta cumulative distribution ( for 1 >= p >= 0 , a > 0, b > 0 ).



_Table_ _167_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
InverseBetaCumulativeDistribution</td><td>
1. a: First Parameter of Beta function.2. b: Second Parameter of Beta function.3. p: The probability.</td><td>
A double that inverses the beta cumulative distribution value.</td></tr>
</table>
Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double result = UtilityFunctions.InverseBetaCumulativeDistribution (a, b, p);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim double as result = UtilityFunctions.InverseBetaCumulativeDistribution (a, b, p)

### Error Function

The Error function, denoted as Erf(x), gives the probability that a measurement under the influence of accidental errors has a distance less than x from the average value at the center. It is the integral of Gauss curve, that is usually normalized to one with a factor of 2/Öp. It is otherwise called as integrated Gauss function or Gauss Error function.


{{ '![](Statistical-Formulas_images/Statistical-Formulas_img23.jpeg)' | markdownify }}







Here is the plot of error function.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img24.jpeg)' | markdownify }}



Using the formula

The Erf method of the UtilityFunctions class returns integral of the Gauss curve for x > 0.



_Table_ _168_: _Utility Functions_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Erf</td><td>
x: must be greater than zero.</td><td>
A double that represents the Gauss integral.</td></tr>
</table>
Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

int double = UtilityFunctions.Erf(x);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim double as result = UtilityFunctions.Erf(x)

### Factorial

The Factorial function returns the factorial value of a given number. In mathematics, the factorial of a natural number n is the product of all positive integers less than or equal to n. It is denoted as n! and pronounced "n factorial", or colloquially "n shriek", "n bang" or "n crit". Factorial finds its main application in combinatorics like Permutations and Combinations and is also used in Number Theory.

The factorial function is defined by the following expression.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img25.jpeg)' | markdownify }}





which is equivalent to n! = n . (n-1) . ..... . 2 . 1.

The above definition incorporates the convention that the product of no numbers at all is 1, i.e., 0! = 1.

Using the formula

The Factorial method of the UtilityFunctions class returns the factorial value for any positive integer.



_Table_ _169_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Example</td></tr>
<tr>
<td>
Factorial</td><td>
n: The number whose factorial should be found out.</td><td>
An integer that returns the factorial of n.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

int result = UtilityFunctions.Factorial(int n);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim int as result = UtilityFunctions.Factorial(int n)

### F Cumulative Distribution

This formula returns cumulative F Distribution which can be defined as the ratio of two chi-square distributions. The formula can be expressed as given below.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img26.jpeg)' | markdownify }}



where,



U1 is the first chi square distribution with d1 degrees of freedom and

U2 is the second chi square distribution with d2 degrees of freedom.

Using the Formula 

FCumulativeDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes the F Cumulative distribution method.



_Table_ _170_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
FCumulativeDistribution</td><td>
1. fValue: The F value for which you want the distribution. 2. firstDegreeOfFreedom: an integer value that represents the first degree of freedom. 3. secondDegreeOfFreedom: an integer value that represents the second degree of freedom. </td><td>
A double that represents T cumulative distribution.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x = Statistics.UtilityFunctions. FCumulativelDistribution( fvalue, firstdegreeOf Freedom, secondDegreeOfFreedom );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x = Statistics.UtilityFunctions. FCumulativelDistribution(fvalue, firstdegreeOf Freedom, secondDegreeOfFreedom)

### Gamma Function

The Gamma Function is an attempt to generalize the factorial function to real and complex numbers. It is related to the factorial function by



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img27.png)' | markdownify }}





The Gamma Function

For a complex number x with a positive real part, the function can be given by



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img28.jpeg)' | markdownify }}





Special Values of gamma function

{{ '![](Statistical-Formulas_images/Statistical-Formulas_img29.jpeg)' | markdownify }}



Using the Formula

The Gamma function is calculated using the Statistics.UtilityFunctions class. The following table describes the parameters and the return value of the gamma function.



_Table_ _171_: _Statistics.UtilityFunctions_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
Gamma</td><td>
p: a value for which the gamma value is required.</td><td>
A double that represents the gamma function value.</td></tr>
</table>
Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x = Statistics.UtilityFunctions.Gamma( p );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x = Statistics.UtilityFunctions.Gamma( p )

### Gamma Cumulative Distribution

The formula for the cumulative distribution function for the gamma distribution is,



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img30.jpeg)' | markdownify }}





where is the gamma function defined above and is the incomplete gamma function. The incomplete gamma function has the formula.



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img31.jpeg)' | markdownify }}



Example

Here is a code snippet that shows a sample usage.



[C#]



ChartSeries series=new ChartSeries("a=2");

for(double i=0;i<=20;i=i+2)

{

// Calculate Gamma Cumulative function for a points and plot the points in chart control.

 series.Points.Add (i,Syncfusion.Windows.Forms.Chart.Statistics.UtilityFunctions.GammaCumulativeDistribution(2.0,i));

}

series.Type=ChartSeriesType.Spline;

series.Text=series.Name;

this.ChartControl1.Series.Add(series);



[VB.NET]



Dim series As ChartSeries=Me.ChartControl1.Model.NewSeries("a=2")

For i As Double = 0 To 20 Step 2



' Calculate Gamma Cumulative function for a points and plot the points in chart control.

series.Points.Add(i,Syncfusion.Windows.Forms.Chart.Statistics.UtilityFunctions.GammaCumulativeDistribution(2.0,i))

Next i

series.Type=ChartSeriesType.Spline

series.Text=series.Name

Me.ChartControl1.Series.Add(series)

### Inverse Error Function

The Inverse Error function, which is a rational approximation of the error function, gives the element-by-element inverse of the error function. The absolute value of the relative error is less than 1.15 -10.9 in the entire region.

Using the formula

The below table describes this function in detail.



_Table_ _172_: _Inverse Error Function_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
InverseErrorFunction</td><td>
x must be less than 1.15-10.9 </td><td>
A double that gives the inverse of error function.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

int double = UtilityFunctions.InverseErf(x);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim double as result = UtilityFunctions.InverseErf(x)

### Inverse F Cumulative Distribution

This formula returns the inverse of the F cumulative distribution.

Using the Formula 

InverseFCumulativeDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes its parameters and its values.



_Table_ _173_: _Statistics.UtilityFunctions_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
InverseFCumulativeDistribution</td><td>
1. fValue: The F value for which you need the distribution. 2. firstDegreeOfFreedom: an integer value that represents the first degree of freedom. 3. secondDegreeOfFreedom: an integer value that represents the second degree of freedom.</td><td>
A double that represents the inverse F cumulative distribution.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]


using Syncfusion.Windows.Forms.Chart.Statistics;

double x= Statistics.UtilityFunctions. InverseFCumulativelDistribution( fvalue, firstdegreeOf Freedom, secondDegreeOfFreedom );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x= Statistics.UtilityFunctions. InverseFCumulativelDistribution(fvalue, firstdegreeOf Freedom, secondDegreeOfFreedom)

### Inverse Normal Distribution

This formula returns an approximation of the inverse of the standard normal cumulative distribution. That is, for a given P, it returns an approximation to the x satisfying P=Pr {z is smaller than x} where z is a random variable from the standard normal distribution.

Using the Formula

InverseNormalDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes its parameters and its values.



_Table_ _174_: _Statistics.UtilityFunctions_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Example</td></tr>
<tr>
<td>
InverseNormalDistribution</td><td>
p: the probability at which the function value is evaluated. p must be in (0,1) range.</td><td>
A double that represents the inverse of the normal distribution function.</td></tr>
</table>


The algorithm uses a minimax approximation by rational functions and the result has a relative error whose absolute value is less than 1.15e-9.

Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x = Statistics.UtilityFunctions.InverseNormalDistribution( p );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x = Statistics.UtilityFunctions.InverseNormalDistribution( p )

### Normal Distribution

This formula yields the value of the standard normal cumulative distribution. Normal distributions are symmetric and have bell-shaped density curves with a single peak. Two factors, the mean (__) and the standard deviation (), come into place when we speak of normal distribution. The mean indicates the peak of the density curve and the standard deviation indicates the spread of the bell curve.

The normal density function is given by,



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img32.jpeg)' | markdownify }}







{{ '![](Statistical-Formulas_images/Statistical-Formulas_img33.jpeg)' | markdownify }}



_Figure_ _349_: _Normal Density Function_

Different values of __ and  yield different normal density curves and hence different normal distributions.  All normal density curves satisfy the following property which is often referred to as the__Empirical Rule.

* 68% of the observations fall within 1 standard deviation of the mean, that is, between __ -  and __ + . 
* 95% of the observations fall within 2 standard deviations of the mean, that is, between __ - 2 and __ + 2. 
* 99.7% of the observations fall within 3 standard deviations of the mean, that is, between __ - 3 and __ + 3.

Thus, for a normal distribution, almost all values lie within three standard deviations of the mean.

Using the Formula 

NormalDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes this formula's parameters and its values.



_Table_ _175_: _NormalDistribution_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
NormalDistribution</td><td>
zValue: The value for which the distribution is required. </td><td>
A double that represents the standard normal cumulative distribution value.</td></tr>
</table>
Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x = Statistics.UtilityFunctions.NormalDistribution( p );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x = Statistics.UtilityFunctions.NormalDistribution( p )



### Normal Distribution Density

In probability and statistics, the log-normal distribution is the probability of distribution of any random variable whose logarithm is normally distributed (the base of the logarithmic function is immaterial in that loga x is normally distributed if and only if logb X is normally distributed). If x is a random variable with a normal distribution, then exp(X) will have a log-normal distribution.

"Log-normal" can also be written as "log normal", "lognormal" or "logistic normal".

A variable might be modeled as log-normal if it can be thought of as the multiplicative product of many small independent factors. A typical example of this is the long-term return rate on a stock investment: it can be considered as the product of the daily return rates.

The log-normal distribution has a probability density function (pdf),



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img34.jpeg)' | markdownify }}





for x > 0, where µ and s are the median and standard deviation of the variable's logarithm. The expected value is,



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img35.jpeg)' | markdownify }}





and the variance is,



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img36.jpeg)' | markdownify }}





{{ '![](Statistical-Formulas_images/Statistical-Formulas_img37.jpeg)' | markdownify }}



Using the formula



_Table_ _176_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
NormalDistributionDensity</td><td>
1. x: the value at which the distribution density is evaluated.2. m: the expected value of distribution.3. sigma: the variance of distribution.</td><td>
A double that represents the Normal Distribution Density  function value.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double result = UtilityFunctions.NormalDistributionDensity(x, m ,sigma);



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

Dim double as result = UtilityFunctions.NormalDistributionDensity(x, m ,sigma)

### Inverse T Cumulative Distribution

This formula computes the inverse of the cumulative distribution for T-statistic.

Using the Formula 

InverseTCumulativeDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes this function's parameters and its values.



_Table_ _177_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
InverseTCumulativeDistribution</td><td>
1. p: the alpha value (probability). 2. degreeOfFreedom: an integer value that represents the degree of freedom. 3. oneTail: If true, one-tailed distribution is used; otherwise two-tailed distribution is used. </td><td>
A double that represents the Inverse of T cumulative distribution function probability.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x= Statistics.UtilityFunctions. InverseTCumulativelDistribution(p, degreeOfFreedom,OneTail );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x= Statistics.UtilityFunctions. InverseTCumulativelDistribution(p, degreeOfFreedom,OneTail )

### TCumulative Distribution

This formula will return the T cumulative distribution (student's t-distribution) for a degree of freedom > 0. When there is a need to estimate the mean of a normally distributed population for a given sample, the t-distribution comes into action. It is the basis of the popular t-tests to find out the difference between two sample means.

For a sample with size n drawn from a normal population with mean  and standard deviation . Let {{ '![](Statistical-Formulas_images/Statistical-Formulas_img38.png)' | markdownify }}

 and _s_  denote the sample mean and sample standard deviation respectively. Then the quantity 



{{ '![](Statistical-Formulas_images/Statistical-Formulas_img39.jpeg)' | markdownify }}





gives the t-distribution for n-1 degrees of freedom.

Using the Formula

TCumulativeDistribution is calculated using the Statistics.UtilityFunctions class. The following table describes this function's parameters and its values.



_Table_ _178_: _Properties_

<table>
<tr>
<td>
Method Name</td><td>
Parameters</td><td>
Return Value</td></tr>
<tr>
<td>
TCumulativeDistribution</td><td>
1. t Value: the T value for which you want the distribution. 2. degreeOfFreedom: an integer value that represents the degree of freedom. 3. oneTail: If true, one-tailed distribution is used; otherwise two-tailed distribution is used.</td><td>
A double that represents the T cumulative distribution function probability.</td></tr>
</table>


Example

Here is a code snippet that shows a sample usage.



[C#]



using Syncfusion.Windows.Forms.Chart.Statistics;

double x= Statistics.UtilityFunctions.TCumulativelDistribution(tvalue, degreeOfFreedom,OneTail );



[VB.NET]



Imports Syncfusion.Windows.Forms.Chart.Statistics

double x= Statistics.UtilityFunctions.TCumulativelDistribution(tvalue, degreeOfFreedom,OneTail )



