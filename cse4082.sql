insert into Branch values('&branchname', '&branchcity', &assest);
select *from Branch;
insert into Accounts values(&Accno,'&branchname',&balance);
select *from Accounts;
insert into Depositor values('&customer_name',&Accno);
select *from Depositor;
insert into Customer values('&Customer_name','&cust_street','&cust_city');
select *from Customer;
insert into loan values(&loanno,'&branchname',&amount);
select *from loan;
insert into borrower values('&cust_name',&loanno);
select *from borrower;


SELECT D.CUSTOMER_NAME
FROM DEPOSITOR D,ACCOUNTS A,BRANCH B
WHERE B.BRANCHCITY='CHEENAI' AND A.BRANCHNAME = B.BRANCHNAME AND A.ACCNO=D.ACCNO;


select d.customer_name
from depositor d,accounts a, branch b
where b.branchcity='bangalore' and a.branchname=b.branchname and a.accno=d.accno;



select d.customer_name
from depositor d
where  d.accno in(select a.accno
from accounts a,branch b
where  b.branchcity='bangalore' and a.branchname=b.branchname);