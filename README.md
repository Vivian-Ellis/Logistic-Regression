# Logistic Regression
## Original Date June 2018
<p><span style="font-size:11pt;">The purpose of logistic regression is to determine whether differences in the perceptions of HBAT exist between customer regions. The customer region is determined by whether a customer resides in North America or outside of North America. I will use stepwise logistic regression to control for multicollinearity. The three variables that have a variance inflation factor &gt; 10 are Prod_line, Price_flex, and Del_speed with a VIF of 37.97842, 33.33234, and 44.00376 respectively. &nbsp;The preliminary analysis will provide insight as to which metric independent variables might help in predicting the dependent variable, region. Using the F test,&nbsp;</span></p>
<p style="text-align: center;"><span style="font-size:11pt;">H</span><span style="font-size:11pt;">o</span><span style="font-size:11pt;">:&nbsp;</span><span style="font-size:11pt;">0</span><span style="font-size:11pt;">2</span><span style="font-size:11pt;">=</span><span style="font-size:11pt;">1</span><span style="font-size:11pt;">2</span></p>
<p style="text-align: center;"><span style="font-size:11pt;">H</span><span style="font-size:11pt;">a</span><span style="font-size:11pt;">:&nbsp;</span><span style="font-size:11pt;">0</span><span style="font-size:11pt;">2</span><span style="font-size:11pt;">1</span><span style="font-size:11pt;">2</span></p>
<p><span style="font-size:11pt;">To determine if the variances are equal. F(60,38)= 2.85, with a p-value=0.0008, and the null hypothesis is accepted. The table below gives a summary of the T-tests on each of the 13 metric independent variables.&nbsp;</span></p>
<div align="left">
    <table style="border:none;border-collapse:collapse;">
        <tbody>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Variable</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">T Value</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Df</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">p-value</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Product Quality&nbsp;</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">5.95</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">98</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">&lt;.0001</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Ecommerce&nbsp;</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">-1.89</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">84.496</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.0618</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Tech Support</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">1.80</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">87.403</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.0757</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Complaint</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">.10</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">87.881</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.9227</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Advertising</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">-2.01</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">88.389</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">0.0476</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Product Line</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">6.49</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">98</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">&lt;.0001</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Sales Image</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">-4.48</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">89.158</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">&lt;.0001</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Pricing</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">-6.42</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">79.479</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">&lt;.0001</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Warranty</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">1.53</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">87.386</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.1305</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">New Product</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">-1.10</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">83.93</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.2726</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Ordering&nbsp;</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">-.38</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">98</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.7027</span></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">Price Flex</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">-7.75</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">98</span></em></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><strong><em><span style="font-size:11pt;">&lt;.0001</span></em></strong></p>
                </td>
            </tr>
            <tr>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">Delivery Speed</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">-.19</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">95.131</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p><span style="font-size:11pt;">0.8474</span></p>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<p><br></p>
<p><span style="font-size:11pt;">There are six variables, product quality, advertising, product line, sales image, pricing, and price flex that have significantly different means from region at alpha=.05. For each of these six variables the mean for region group 1 is higher than the mean for region group 0. &nbsp;Respondents who reside outside of North America do not want to partner with HBAT have lower average perceptions of HBAT on those six variables when compared to respondents who reside in North America. These six variables are potential predictor or discriminating variables to predict or group the response variable region.</span></p>
<p><span style="font-size:11pt;">Using the overall model test let,</span></p>
<p><span style="font-size:11pt;">Ho: &nbsp;None of the independent variables help to explain region</span></p>
<p><span style="font-size:11pt;">Ha: &nbsp;at least one independent variable helps</span></p>
<p><span style="font-size:11pt;">Then using the likelihood ratio test, &nbsp;</span><span style="font-size:11pt;">2</span><span style="font-size:11pt;">13</span><span style="font-size:11pt;">=102.9607</span><span style="font-size:11pt;">&nbsp;and p-value&lt;.0001 the null hypothesis is rejected and at least one independent variable helps to explain region. The Hosmer and Lemeshow Goodness-of-Fit test is used to assess how well the logistic model fits the data. Let,</span></p>
<p><span style="font-size:11pt;">Ho: &nbsp;The model fits the data</span></p>
<p><span style="font-size:11pt;">Ha: &nbsp;The model does not fit the data</span></p>
<p><span style="font-size:11pt;">2</span><span style="font-size:11pt;">7</span><span style="font-size:11pt;">=4.4072</span><span style="font-size:11pt;">&nbsp;and p-value=0.7319 we fail to reject the null hypothesis. Thus, the model fits the data. The following table gives the logistic regression model and the individual parameter test using the Wald Chi-square test. All variables are highly significant.&nbsp;</span></p>
<div align="center">
    <table style="border:none;border-collapse:collapse;">
        <thead>
            <tr>
                <th colspan="6" style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.75pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p style="text-align: center;"><strong><span style="font-size:11pt;">Analysis of Maximum Likelihood Estimates</span></strong></p>
                </th>
            </tr>
            <tr>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p><strong><span style="font-size:11pt;">Parameter</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border: solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">DF</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border: solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Estimate</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border: solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Standard</span></strong><strong><span style="font-size:11pt;"><br></span></strong><strong><span style="font-size:11pt;">Error</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border: solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Wald</span></strong><strong><span style="font-size:11pt;"><br></span></strong><strong><span style="font-size:11pt;">Chi-Square</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Pr&nbsp;&gt;&nbsp;ChiSq</span></strong></p>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p><strong><span style="font-size:11pt;">Intercept</span></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">3.4071</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">3.6412</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.8755</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.3494</span></p>
                </td>
            </tr>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p><strong><span style="font-size:11pt;">Ecommerce</span></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">4.0558</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1.2920</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">9.8547</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.0017</span></p>
                </td>
            </tr>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p><strong><span style="font-size:11pt;">Adv</span></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1.2507</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.5647</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">4.9063</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.0268</span></p>
                </td>
            </tr>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p><strong><span style="font-size:11pt;">Prod_Line</span></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">2.5162</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.7859</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">10.2496</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.0014</span></p>
                </td>
            </tr>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p><strong><span style="font-size:11pt;">Sales_Image</span></strong></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">-5.5335</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1.7723</span></p>
                </td>
                <td style="border: solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">9.7479</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.0018</span></p>
                </td>
            </tr>
            <tr>
                <td style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p><strong><span style="font-size:11pt;">Price_Flex</span></strong></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">1</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">-2.5699</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.8453</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">9.2435</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.0024</span></p>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<p><br></p>
<p><span style="font-size:11pt;">The following table shows the Hosmer and Lemeshow Test is used to test the overall fit of the model. Let,</span></p>
<p><span style="font-size:11pt;">Ho: &nbsp;The model fits the data</span></p>
<p><span style="font-size:11pt;">Ha: &nbsp;The model does not fit the data</span></p>
<p><span style="font-size:11pt;">&chi;^2 (8)=6.7285 and p-value=</span><span style="font-size:10pt;">0.5662&nbsp;</span><span style="font-size:11pt;">we fail to reject the null hypothesis. Thus, the model fits the data.</span></p>
<div align="center">
    <table style="border:none;border-collapse:collapse;">
        <thead>
            <tr>
                <th colspan="3" style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.75pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p style="text-align: center;"><strong><span style="font-size:11pt;">Hosmer and Lemeshow Goodness-of-Fit Test</span></strong></p>
                </th>
            </tr>
            <tr>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Chi-Square</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border: solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">DF</span></strong></p>
                </th>
                <th style="color:#bbbbbb;background-color:#bbbbbb;border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.5pt;" scope="col">
                    <p style="text-align: right;"><strong><span style="font-size:11pt;">Pr&nbsp;&gt;&nbsp;ChiSq</span></strong></p>
                </th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td style="border-left:solid #000000 0.75pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">6.7285</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.5pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">8</span></p>
                </td>
                <td style="border-left:solid #000000 0.5pt;border-right:solid #000000 0.75pt;border-top:solid #000000 0.5pt;border-bottom:solid #000000 0.75pt;">
                    <p style="text-align: right;"><span style="font-size:10pt;">0.5662</span></p>
                </td>
            </tr>
        </tbody>
    </table>
</div>
<p><br></p>
<p><br></p>
