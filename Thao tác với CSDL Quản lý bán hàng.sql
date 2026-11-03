USE quanlybanhang;

INSERT INTO Customer (cName, cAge)
VALUES ('Minh Quan', 10),
('Ngoc Oanh', 20),
('Hong Ha', 50);

INSERT INTO `Order` (oID, cID, oDate, oTotalPrice)
VALUES (1, 1, '2006-3-21', NULL),
(2, 2, '2006-3-23', NULL),
(3, 1, '2006-3-16', NULL);

INSERT INTO Product (pName, pPrice)
VALUES ('May Giat', 3),
('Tu Lanh', 5),
('Dieu Hoa', 7),
('Quat', 1),
('Bep Dien', 2);

INSERT INTO OrderDetail (oID, pID, odQTY)
VALUES (1, 1, 3),
(1, 3, 7),
(1, 4, 2),
(2, 1, 1),
(3, 1, 8),
(2, 5, 4),
(2, 3, 3);

SELECT 
	oID, 
	oDate, 
    oTotalPrice
FROM `Order`;

-- khach hang da mua, danh sach san pham mua boi khach

SELECT DISTINCT 
	C.cName, 
    P.pName
FROM Customer C
INNER JOIN `Order` O ON O.cID = C.cID
INNER JOIN OrderDetail OD ON OD.oID = O.oID
INNER JOIN Product P ON P.pID = OD.pID;

SELECT 
	C.cName
FROM Customer C
LEFT JOIN `Order` O ON C.cID = O.cID
WHERE O.oID = NULL;

SELECT 
	O.oID, 
    O.oDate, 
    SUM(OD.odQTY * P.pPrice) AS oTotalPrice
FROM `Order` O
INNER JOIN OrderDetail OD ON OD.oID = O.oID
INNER JOIN Product P ON P.pID = OD.pID
GROUP BY O.oID, O.oDate;