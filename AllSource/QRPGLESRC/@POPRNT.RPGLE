     F@POPRNT   IF   E           K disk    rename(RPOPRNT:SPOPRNT)
     FPOPRNT    O    E           K disk
     Fdrluniqp  O    E           K disk

     D x               S              3  0
     D z               S              3  0
     C                   read      @poprnt
     C                   dow       not %eof
     C                   z-add     linqty        z
     C                   for       x = 1 to z
     C                   call      'DRLUNIGR'
     C                   parm                    puid             14
     C                   movel     puid          uniqno
     C                   z-add     1             linqty
     C                   write     rpoprnt
     C                   movel     prodcd        unprod
     C                   eval      unean = %char(ean)
     C                   movel     puid          uniqid
     C                   movel     ordrno        unuord
     C                   movel     whsecd        untstr
     C                   write     uniqr
     C                   endfor
     C                   read      @poprnt
     C                   enddo
     C                   seton                                        lr
     C                   return
