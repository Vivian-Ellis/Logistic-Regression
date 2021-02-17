ods rtf file='N:\Multivariate Data Analysis DSCI 449\Week 7\Logistic Regression1.rtf';

*Using Logistic Regression on HBAT data;
*For my binary dependent variable, I used region where 1=yes, would consider strategic alliance or regionship, 0 = would not consider;

*YOU WILL CHOOSE A DICOTOMOUS DEPENDENT VARIABLE FOR YOUR MODEL;
*REPLACE MY DEPDENT VARIABLE, region, WITH YOUR CHOSEN DEPENDENT VARIABLE;

*Using reg ONLY to check for bivariate outliers and multicollinearity;
*Reg not appropriate for anything else since region is dichotomous var; 
proc reg data=sasuser.hbat;
   model region = prod_qual -- del_speed /vif;
   output out=new student=sresid cookd=cd;
proc gplot data=new;
   plot cd*id;
   plot sresid*id;
run;
ods rtf close;

ods rtf file='N:\Multivariate Data Analysis DSCI 449\Week 7\Logistic Regression2.rtf';
*preliminary check to determine if differences exist by region;
*suppressing the production of histograms and quantile plots;
proc ttest data=sasuser.hbat plots=none;
   class region;
   var prod_qual -- del_speed;
run;
ods rtf close;

ods rtf file='N:\Multivariate Data Analysis DSCI 449\Week 7\Logistic Regression3.rtf';
*Running logistic regression on full model;
proc logistic data=sasuser.hbat simple;
   model region=prod_qual -- del_speed/lackfit rsquare;
run;
ods rtf close;

ods rtf file='N:\Multivariate Data Analysis DSCI 449\Week 7\Logistic Regression4.rtf';
*Logistic regression using stepwise to build model;
proc logistic data=sasuser.hbat;
   model region=prod_qual -- del_speed/selection=stepwise lackfit rsquare;
   output out=new2 prob=prob;
*The output statement above creates a new temporary data set named new2;
*This data set contains all the data in HBAT plus the probabilities of group 0;
run;

ods rtf close;
