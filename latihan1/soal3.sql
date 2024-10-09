SELECT C.custid, C.companyname, O.orderid, O.orderdate 
FROM Sales.Customers AS C   
INNER JOIN Sales.Orders AS O     
ON C.custid = O.custid;


---Query ini menampilkan kolom customer id dari table sales.customers, kolom nama perusahaan dari table sales.customers---
---kolom order id dari table sales.orders dan kolom tanggal pemesanan dari table sales.orders lalu dicocokan kedua table tersebut berdasarkan customer id nya----