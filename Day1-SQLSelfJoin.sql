
CREATE TABLE sensitivity(
    id NUMBER ,
    is_Sensitive VARCHAR2(1) NOT NULL,
    Value NUMBER
);

Insert into sensitivity values(1,'Y',123);
Insert into sensitivity values(1,'N',145);
Insert into sensitivity values(2,'Y',234);
Insert into sensitivity values(2,'N',246);
Insert into sensitivity values(3,'Y',349);
Insert into sensitivity values(3,'N',380);

Select * from sensitivity;

SELECT a.ID,VALUE_SENSITIVE,VALUE_NONSENSITIVE
FROM
    (Select ID,VALUE as VALUE_SENSITIVE
        FROM SENSITIVITY a
        WHERE IS_SENSITIVE = 'Y')a
    INNER JOIN
    (Select ID,VALUE as VALUE_NONSENSITIVE
        FROM SENSITIVITY a
        WHERE IS_SENSITIVE = 'N')b
    ON a.ID= b.ID