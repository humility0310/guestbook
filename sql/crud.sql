INSERT INTO guestbook
     VALUES (guestbook_seq.NEXTVAL,
             '둘리',
             '호이',
             '1234',
             SYSDATE);

INSERT INTO guestbook
     VALUES (guestbook_seq.NEXTVAL,
             '마이콜',
             '라면엔 구공탄',
             '1234',
             SYSDATE);

DELETE FROM GUESTBOOK
      WHERE NO = 2 AND PASSWORD = 1234;

  SELECT no,
         name,
         content,
         password,
         TO_CHAR (reg_day, 'yyyy-mm-dd hh:mi:ss')
    FROM GUESTBOOK
ORDER BY reg_day DESC;

select * FROM GUESTBOOK;

commit;