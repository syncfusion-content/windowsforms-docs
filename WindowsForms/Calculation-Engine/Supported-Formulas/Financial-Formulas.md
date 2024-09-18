---
layout: post
title: Financial Formulas in WinForms Calculation Engine|Syncfusion
description: Learn about Financial Formulas support in Syncfusion Windows Forms Calculation Engine (Calculate) control and more.
platform: windowsforms
control: Calculate
documentation: ug
---

# Financial Formulas in Windows Forms Calculation Engine (Calculate)



## PMT

The `PMT` function calculates the payment for a loan based on constant payments and constant interest rate.

**Syntax:**

_PMT(rate, nper, pv, [fv], [type])_

**Where:**

* rate is the interest rate for the loan.

* nper is the total number of payments for the loan.

* pv is the present value, or the total amount that a series of future payments is worth now.

* fv is the future value, or a cash balance you want to attain after the last payment is made. If Fv is omitted, it is assumed to be zero.

* type is the number 0 or 1 and indicates when payments are due.

  <table>
	<tr>
	<th>
	<b>Set type equal to</b></th><th>
	<b>If payments are due</b></th></tr>
	<tr>
	<td>
	0 or omitted</td><td>
	At the end of the period</td></tr>
	<tr>
	<td>
	1</td><td>
	At the beginning of the period.</td></tr>
  </table>



## PV



Calculates the present value of an investment (i.e. the total amount that a series of future payments is worth now).



**Syntax:**



_PV(rate, nper, pmt, [fv], [type])_



**where:**

* rate is the interest rate per period.

* nper is the total number of payment periods in an annuity.

* pmt is the payment made each period and cannot change over the life of the annuity.

* fv is the future value, or a cash balance you want to attain after the last payment is made.

* type is the number 0 or 1 and indicates when payments are due.



## DB

Calculates the depreciation of an asset for a specified period, using the fixed-declining balance method.

**Syntax:**

_DB(cost, salvage, life, period, [month])_

**where:**

* cost denotes the initial cost of the asset.

* salvage denotes the value at the end of the depreciation (sometimes called the salvage value of the asset).

* life denotes the number of periods over which the asset is being depreciated (sometimes called the useful life of the asset).

* period denotes the period for which you want to calculate the depreciation. Period must use the same units as life.

* month denotes the number of months in the first year. If month is omitted, it is assumed to be 12.



## DDB

Calculates the depreciation of an asset for a specified period, using the fixed-declining balance method.

**Syntax:**

_DDB(cost, salvage, life, period, [month])_

**where:**

* cost denotes the initial cost of the asset.

* salvage denotes the value at the end of the depreciation (sometimes called the salvage value of the asset).

* life denotes the number of periods over which the asset is being depreciated (sometimes called the useful life of the asset).

* period denotes the period for which you want to calculate the depreciation. Period must use the same units as life.

* month denotes the number of months in the first year. If month is omitted, it is assumed to be 12.

## FV



Calculates the future value of an investment with periodic constant payments and a constant interest rate.



**Syntax:**



_FV(rate,nper,pmt,[pv],[type])_



**where:**



* rate denotes the interest rate per period.



* nper denotes the total number of payment periods in an annuity.



* pmt denotes the payment made each period; it cannot change over the life of the annuity. Typically, pmt contains principal and interest but no other fees or taxes. If pmt is omitted, you must include the pv argument.



## IRR

Calculates the internal rate of return for a series of cash flows.

**Syntax:**

_IRR(values, [guess])_

**where:**

* `values` denotes an array or a reference to cells that contain numbers for which you want to calculate the internal rate of return.

	* Values must contain at least one positive value and one negative value to calculate the internal rate of return.

	* IRR uses the order of values to interpret the order of cash flows. Be sure to enter your payment and income values in the sequence you want.

	* If an array or reference argument contains text, logical values, or empty cells, those values are ignored.

* `guess` denotes a number that you guess is close to the result of IRR.

	* Microsoft Excel uses an iterative technique for calculating IRR. Starting with guess, IRR cycles through the calculation until the result is accurate within 0.00001 percent. If IRR can't find a result that works after 20 tries, the `#NUM!` error value is returned.

	* In most cases you do not need to provide guess for the IRR calculation. If guess is omitted, it is assumed to be 0.1 (10 percent).

	* If IRR gives the `#NUM!	 error value, or if the result is not close to what you expected, try again with a different value for guess.



## ISPMT

Returns the interest paid during a specified period of an investment.

**Syntax:**

_ISPMT(rate, per, nper, pv)_

**where:**

* rate denotes the interest rate for the investment.

* per denotes the period for which you want to find the interest, and must be between 1 and Nper.

* nper denotes the total number of payment periods for the investment.

* pv denotes the present value of the investment. For a loan, Pv is the loan amount.



## MIRR

Calculates the internal rate of return for a series of periodic cash flows, considering the cost of the investment and the interest on the reinvestment of cash.

**Syntax:**

_MIRR(values, finance_rate, reinvest_rate)_

**where:**

* `values` denotes an array or a reference to cells that contain numbers. These numbers represent a series of payments (negative values) and income (positive values) occurring at regular periods.

	* Values must contain at least one positive value and one negative value to calculate the modified internal rate of return. Otherwise, MIRR returns the #DIV/0! error value.

	* If an array or reference argument contains text, logical values, or empty cells, those values are ignored; however, cells with the value zero are included.

* `finance_rate` denotes the interest rate you pay on the money used in the cash flows.

* `reinvest_rate` denotes the interest rate you receive on the cash flows as you reinvest them.



## NPER

Returns the number of periods for an investment with periodic constant payments and a constant interest rate.

**Syntax:**

_NPER(rate,pmt,pv,[fv],[type])_

**where:**

* rate denotes the interest rate per period.

* pmt denotes the payment made each period; it cannot change over the life of the annuity. Typically, pmt contains principal and interest but no other fees or taxes.

* pv denotes the present value, or the lump-sum amount that a series of future payments is worth right now.

* fv denotes the future value, or a cash balance you want to attain after the last payment is made. If fv is omitted, it is assumed to be 0 (the future value of a loan, for example, is 0).

* type denotes the number 0 or 1 and indicates when payments are due.

## NPV

Calculates the net present value of an investment, based on a supplied discount rate, and a series of future payments and income.

**Syntax:**

_NPV(rate,value1,[value2],...)_

**where:**

* rate denotes the rate of discount over the length of one period.

* value1, value2, ...    Value1 is required, subsequent values are optional. 1 to 254 arguments representing the payments and income.

	* value1, value2, ... must be equally spaced in time and occur at the end of each period.

	* NPV uses the order of value1, value2, ... to interpret the order of cash flows. Be sure to enter your payment and income values in the correct sequence.

	* Arguments that are empty cells, logical values, or text representations of numbers, error values, or text that cannot be translated into numbers are ignored.

	* If an argument is an array or reference, only numbers in that array or reference are counted. Empty cells, logical values, text, or error values in the array or reference are ignored.



## PPMT

Calculates the payment on the principal for a given investment, with periodic constant payments and a constant interest rate

**Syntax:**

_PPMT(rate, per, nper, pv, [fv], [type])_

**where:**

* rate denotes the interest rate per period.

* per denotes to specifies the period and must be in the range 1 to nper.

* nper denotes the total number of payment periods in an annuity.

* pv denotes the present value — the total amount that a series of future payments is worth now.

* fv denotes the future value, or a cash balance you want to attain after the last payment is made. If fv is omitted, it is assumed to be 0 (zero), that is, the future value of a loan is 0.

* type denotes the number 0 or 1 and indicates when payments are due.

## RATE

Calculates the interest rate required to pay off a specified amount of a loan, or reach a target amount on an investment over a given period

**Syntax:**

_RATE(nper, pmt, pv, [fv], [type], [guess])_

**where:**

* nper denotes the total number of payment periods in an annuity.

* pmt denotes the payment made each period and cannot change over the life of the annuity. Typically, pmt includes principal and interest but no other fees or taxes. If pmt is omitted, you must include the fv argument.

* pv denotes  the present value — the total amount that a series of future payments is worth now.

* fv denotes the future value, or a cash balance you want to attain after the last payment is made. If fv is omitted, it is assumed to be 0 (the future value of a loan, for example, is 0). If fv is omitted, you must include the pmt argument.

* type denotes the number 0 or 1 and indicates when payments are due.

* guess in an optional. If guess is omitted, it is assumed to be 0.1 (10 percent).

## SLN

Returns the straight-line depreciation of an asset for one period

**Syntax:**

_SLN(cost, salvage, life)_

**where:**

* cost denotes the initial cost of the asset.

* salvage denotes the value at the end of the depreciation (sometimes called the salvage value of the asset).

* life denotes the number of periods over which the asset is depreciated (sometimes called the useful life of the asset).

## SYD

Returns the sum-of-years digits depreciation of an asset for a specified period

**Syntax:**

_SYD(cost, salvage, life, per)_

**where:**

* cost denotes the initial cost of the asset.

* salvage denotes the value at the end of the depreciation (sometimes called the salvage value of the asset).

* life denotes the number of periods over which the asset is depreciated (sometimes called the useful life of the asset).

* per denotes the period and must use the same units as life.

## VDB

Returns the depreciation of an asset for a specified period, (including partial periods), using the double-declining balance method or another user-specified method.

**Syntax:**

_VDB(cost, salvage, life, start_period, end_period, [factor], [no_switch])_

**where:**

* cost denotes the initial cost of the asset.

* salvage denotes the value at the end of the depreciation (sometimes called the salvage value of the asset). This value can be 0.

* life denotes the number of periods over which the asset is depreciated (sometimes called the useful life of the asset).

* start_period  denotes the starting period for which you want to calculate the depreciation. Start_period must use the same units as life.

* end_period  denotes. the ending period for which you want to calculate the depreciation. End_period must use the same units as life.

* factor denotes the rate at which the balance declines. If factor is omitted, it is assumed to be 2 (the double-declining balance method). Change factor if you do not want to use the double-declining balance method. For a description of the double-declining balance method, see DDB.

* no_switch denotes a  logical value specifying whether to switch to straight-line depreciation when depreciation is greater than the declining balance calculation.

	* If no_switch is TRUE, Microsoft Excel does not switch to straight-line depreciation even when the depreciation is greater than the declining balance calculation.
	
	* If no_switch is FALSE or omitted, Excel switches to straight-line depreciation when depreciation is greater than the declining balance calculation.



## DOLLARDE

Converts a dollar price expressed as a fraction, into a dollar price expressed as a decimal.

**Syntax:**

_DOLLARDE(fractional_dollar, fraction)_

**where:**

* fractional_dollar denotes a number expressed as an integer part and a fraction part, separated by a decimal symbol.

* fraction denotes the integer to use in the denominator of the fraction.

**Remarks:**

* If fraction is not an integer, it is truncated.

* If fraction is less than 0, DOLLARDE returns the #NUM! error value.

* If fraction is greater than or equal to 0 and less than 1, DOLLARDE returns the #DIV/0! error value.

## DOLLARFR

Converts a dollar price expressed as a decimal, into a dollar price expressed as a fraction

**Syntax:**

_DOLLARFR(decimal_dollar, fraction)_

**where:**

* decimal_dollar  denotes a decimal number.
  
* fraction denotes the integer to use in the denominator of a fraction.

**Remarks:**

* If fraction is not an integer, it is truncated.

* If fraction is less than 0, DOLLARFR returns the #NUM! error value.

* If fraction is 0, DOLLARFR returns the #DIV/0! error value.

## DURATION

Calculates the Macaulay duration of a security with an assumed par value of $100

**Syntax:**

_DURATION(settlement, maturity, coupon, yld, frequency, [basis])_

**where:**

* settlement denotes the security's settlement date. The security settlement date is the date after the issue date when the security is traded to the buyer.

* maturity denotes the security's maturity date. The maturity date is the date when the security expires.

* coupon denotes the security's annual coupon rate.

* yld denotes the security's annual yield.

* frequency denotes the number of coupon payments per year. For annual payments, frequency = 1; for semiannual, frequency = 2; for quarterly, frequency = 4.

* basis denotes the type of day count basis to use.

## RRI

Calculates an equivalent interest rate for the growth of an investment

**Syntax:**

_RRI(nper, pv, fv)_

**where:**

* nper is the number of periods for the investment.

* pv is the present value of the investment.

* fv is the future value of the investment.

## FVSCHEDULE

Calculates the future value of an initial principal, after applying a series of compound interest rates.

**Syntax:**

_FVSCHEDULE(principal, schedule)_

**where:**

* principal denotes the present value.

* schedule denotes an array of interest rates to apply.

## DISC

Calculates the discount rate for a security.

**Syntax:**

_DISC(settlement, maturity, pr, redemption, [basis])_

**where:**

* settlement denotes the security's settlement date. The security settlement date is the date after the issue date when the security is traded to the buyer.

* maturity denotes the security's maturity date. The maturity date is the date when the security expires.

* pr denotes the security's price per $100 face value.

* redemption denotes the security's redemption value per $100 face value.

* basis denotes the type of day count basis to use.

## INTRATE

Calculates the interest rate for a fully invested security.

**Syntax:**

_INTRATE(settlement, maturity, investment, redemption, [basis])_

**where:**

* settlement denotes the security's settlement date. The security settlement date is the date after the issue date when the security is traded to the buyer.

* maturity denotes the security's maturity date. The maturity date is the date when the security expires.

* investment denotes the amount invested in the security.

* redemption denotes the amount to be received at maturity.

* basis  denotes the type of day count basis to use.

## CUMIPMT

Calculates the cumulative interest paid between two specified periods.

**Syntax:**

_CUMIPMT(rate, nper, pv, start_period, end_period, type)_

**where:**



* rate denotes the interest rate.

* nper denotes the total number of periods.

* pv denotes the present value.

* start_period  denotes the first period in the calculation. Payment periods are numbered beginning with 1.

* end_period denotes the last period in the calculation.

* type denotes the timing of the payment.

## CUMPRINC

Calculates the cumulative principal paid on a loan, between two specified periods.

**Syntax:**

_CUMPRINC(rate, nper, pv, start_period, end_period, type)_

**where:**

* rate denotes the interest rate.

* nper denotes the total number of payment periods.

* pv denotes the present value.

* start_period denotes the first period in the calculation. Payment periods are numbered beginning with 1.

*  end_period  denotes the last period in the calculation.

* type denotes the timing of the payment.

## RECEIVED

Calculates the amount received at maturity for a fully invested Security

**Syntax:**

_RECEIVED(settlement, maturity, investment, discount, [basis])_

**where:**

* settlement denotes the security's settlement date. The security settlement date is the date after the issue date when the security is traded to the buyer.

* maturity denotes the security's maturity date. The maturity date is the date when the security expires.

* investment denotes the amount invested in the security.

* discount denotes the security's discount rate.

* basis is the value that is type of day count basis to use.

## ACCRINTM


The `ACCRINTM` returns the accrued interest for a security that pays interest at maturity.


**Syntax:**

_ACCRINTM(issue, settlement, rate, par, [basis])_

**where:**

* issue denotes the security's issue date.

* settlement denotes the security's maturity date.

* rate denotes the security's annual coupon rate.

* par denotes the security's par value. If you omit par, ACCRINTM uses $1,000.

* basis denotes the type of day count basis to use.



## IPMT


The `IMPT` calculates the interest payment, during a specific period of a loan or investment that is paid in constant periodic payments, with a constant interest rate.

**Syntax:**

_IPMT(rate, per, nper, pv, [fv], [type])_

**where:**

* Rate: The interest rate per period..

* Per : The period for which the interest payment is to be calculated and must be in the range 1 to nper.

* Nper : The total number of payment periods(the loan or investment) in an annuity.

* Pv   :  The present value, of the loan or investment.

* Fv (optional):The future value of the loan or investment. If fv is omitted, it is assumed to be 0.

* Type(optional) :The number 0 or 1 and indicates when payments are due. If type is omitted, it is assumed to be 0.The number is 0 the payment is calculate end of the period.The number is 1 the payment calculate start of the period.



## XIRR 


The `XIRR` returns the internal rate of return for a series of cash flows that is not necessarily periodic. 


**Syntax:**

_XIRR(values, dates, [guess])_

**where:**

* Values : Array or reference to cells that represent the series of cash flows.

* Dates  : Array or reference to cells that represent the dates that correspond to the series of cash flows.

* Guess (optional) : A number that you guess is close to the result of XIRR.Default  value is .1 (10%)

**Remarks:**

* Numbers in dates are truncated to integers.

* `XIRR` expects at least one positive cash flow and one negative cash flow; otherwise, It returns the `#NUM!` error message.

* If number in dates is not a valid date, It returns the `#VALUE!` error message.

* If number in dates precedes the starting date, it returns the `#NUM!` error message.

* If values and dates(arguments) contain a different number of values, it returns the `#NUM!` error message.



## ACCRINT  


The `ACCRINT` returns the accrued interest for a security that pays periodic interest on a periodic basis.


**Syntax:**

_ACCRINT(issue, first_interest, settlement, rate, par, frequency, [basis], [calc_method])_

**where:**

* issue : The issue date of the security.

* First_interest  :The first interest date of the security.

* Settlement :The settlement date of the security. 

* Rate : Annual coupon rate for the security.

* Par  :The par value of the security .If you omit the par value, par is set to $1,000.

* Frequency :The frequency of the interest payments for the security., frequency = 1; for semiannual, frequency = 2; for quarterly, frequency = 4.   

* Basis  (optional) : The type of day count basis to use.

**Remarks:**

* Issue, first_interest, settlement, frequency, and basis are truncated to integers.

* If issue, first_interest, or settlement is not a valid date format, it returns the `#VALUE!` error message.

* The argument (rate) ≤ 0 or the argument (par) ≤ 0, it returns the `#NUM!` error message.

* The argument (frequency) is any number other than 1, 2, or 4, it returns the `#NUM!` error message.

* The argument (basis) is not equal to 0,1,2,3 or 4 it returns the `#NUM!` error message.

* The argument(issue) ≥ settlement, it returns the `#NUM`! error message.

## EFFECT   


The `EFFECT` calculate the effective annual interest rate, given the nominal annual interest rate and the number of compounding periods per year.


**Syntax:**

_EFFECT(nominal_rate, npery)_

**where:**

* Nominal_rate  : The nominal interest rate.it must be a numeric value(0 to 1).

* Npery      : The number of compounding periods per year.it must be a positive number.

**Remarks:**

* Npery is truncated to an integer.

* If one or both argument is non-numeric, it returns the `#VALUE!` error message.

* The argument (nominal_rate) ≤ 0 or the argument (npery) < 1, it returns the `#NUM!` error message.



## INTRATE    


The `INTRATE` calculates the interest rate for a fully invested security.


**Syntax:**

_INTRATE(settlement, maturity, investment, redemption, [basis])_

**where:**

* Settlement   : The  settlement date of the security.

* Maturity     : The maturity date of the security.. The maturity date is the date when the security expires.

* Investment    : The initial amount invested in the security.

* Redemption    :The amount to be received at maturity.

* Basis    :    The type of specifies the day count basis to used in the calculation.



## NOMINAL

The `NOMINAL` function returns the nominal annual interest rate, given the effective rate and the number of compounding periods per year.

**Syntax:**

_NOMINAL(effect_rate, npery)_

**Where:**

* effect_rate: The effective interest rate.

* npery: The number of compounding periods per year.

**Remarks:**

* npery is truncated to an integer.

* If either argument is non-numeric, `NOMINAL` returns the `#VALUE!` error.

* If effect_rate is less than or equal to 0 or if npery is less than 1, `NOMINAL` returns the `#NUM!` error value.

* The `NOMINAL` function is related to the `EFFECT` function, which calculates the effective annual interest rate based on the nominal rate and the number of compounding periods.



## MDURATION

The `MDURATION` function returns the modified Macaulay duration for a security with an assumed par value of $100.

**Syntax:**  

_MDURATION(settlement, maturity, coupon, yld, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* coupon: The security's annual coupon rate.

* yld: The security's annual yield.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day-count convention to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is a not valid date, `MDURATION` returns the `#VALUE!` error. 

* If yld or coupon less than 0, or if frequency is not 1, 2, or 4, `MDURATION` returns the `#NUM!` error. 

* If basis is outside the range 0-4, it returns the `#NUM!` error.

* If settlement is greater than or equal to maturity, `MDURATION` returns the `#NUM!` error. 

* `MDURATION` adjusts the Macaulay duration to account for changes in interest rates.



## PDURATION

The `PDURATION` function returns the number of periods required by an investment to reach a specified value.

**Syntax:**

_PDURATION(rate, pv, fv)_

**Where:**

* rate: The interest rate per period.

* pv: The present value of the investment.

* fv: The desired future value of the investment.

**Remarks:**

* If rate is less than or equal to 0, or if pv or fv is less than or equal to 0, `PDURATION` returns the `#NUM!` error.

* If any argument is non-numeric, `PDURATION` returns the `#VALUE!` error.

* `PDURATION` calculates how many periods are needed for an investment to grow from its present value to the desired future value, based on the specified interest rate.



## COUPDAYS

The `COUPDAYS` function returns the number of days in the coupon period that contains the settlement date.

**Syntax:**

_COUPDAYS(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use:

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPDAYS` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPDAYS` returns `#NUM!`.

* If basis is outside the range 0-4, `COUPDAYS` returns `#NUM!`.

* If settlement is greater than or equal to maturity, `COUPDAYS` returns `#NUM!`.



## COUPDAYBS

The `COUPDAYBS` function returns the number of days from the beginning of a coupon period until its settlement date.

**Syntax:**

_COUPDAYBS(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPDAYBS` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPDAYBS` returns `#NUM!`.

* If basis is outside the range 0-4, it returns `#NUM!`.

* If settlement is greater than or equal to maturity, it returns `#NUM!`.



## COUPDAYSNC

The function `COUPDAYSNC` returns the number of days from the settlement date to the next coupon date.

**Syntax:**

_COUPDAYSNC(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPDAYSNC` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPDAYSNC` returns `#NUM!`.

* If basis is outside the range 0-4, it returns `#NUM!`.

* If settlement is greater than or equal to maturity, it returns `#NUM!`.



## COUPPCD

The function `COUPPCD` returns a number that represents the previous coupon date before the settlement date.

**Syntax:**

_COUPPCD(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPPCD` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPPCD` returns `#NUM!`.

* If basis is outside the range 0-4, it returns `#NUM!`.

* If settlement is greater than or equal to maturity, it returns `#NUM!`.



## COUPNCD

The function `COUPNCD` returns a number that represents the next coupon date after the settlement date.

**Syntax:**

_COUPNCD(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPNCD` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPNCD` returns `#NUM!`.

* If basis is outside the range 0-4, it returns `#NUM!`.

* If settlement is greater than or equal to maturity, it returns `#NUM!`.



## COUPNUM

The function `COUPNUM` returns the number of coupons payable between the settlement date and maturity date, rounded up to the nearest whole coupon.

**Syntax:**

_COUPNUM(settlement, maturity, frequency, [basis])_

**Where:**

* settlement: The security's settlement date.

* maturity: The security's maturity date.

* frequency: The number of coupon payments per year (1 for annual, 2 for semiannual, 4 for quarterly).

* basis (Optional): The day count basis to use (default is 0: US (NASD) 30/360):

  * 0 or omitted: US (NASD) 30/360

  * 1: Actual/actual

  * 2: Actual/360

  * 3: Actual/365

  * 4: European 30/360

**Remarks:**

* Dates are stored as serial numbers. (e.g., January 1, 1900, is represented as 1).

* If settlement or maturity is not a valid date, `COUPNUM` returns `#VALUE!`.

* If frequency is any number other than 1, 2, or 4, `COUPNUM` returns `#NUM!`.

* If basis is outside the range 0-4, `COUPNUM` returns `#NUM!`.

* If settlement is greater than or equal to maturity, `COUPNUM` returns `#NUM!`.

* The argument is non-numeric, it returns the `#VALUE!` error message.
