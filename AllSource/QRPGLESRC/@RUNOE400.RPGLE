     D LDA           E DS                  EXTNAME(LDA) DTAARA(*LDA)
      *  Retrieve LDA values
     C                   IN        LDA
     C                   MOVE      'DRL'         Q#CUSN
     C                   MOVE      '001'         Q#DSEQ
     C                   MOVE      '1105363'     Q#ORDN
     C                   MOVE      *blanks       Q#LSTH
      * others - n/a this txn type: or only on certain
      *  CALL's (in which case setup in mainline)
     C                   MOVE      *BLANKS       Q#CATN
     C                   MOVE      *ZEROS        Q#QTY
     C                   MOVE      *ZEROS        Q#ORDL
     C                   MOVE      *BLANKS       Q#INVN
     C                   MOVE      *BLANKS       Q#ORDX
     C                   MOVE      *ZEROS        Q#ORLX
     C                   MOVE      *BLANKS       Q#LIST
     C                   MOVE      *ZEROS        Q#PRCH
     C                   MOVE      *ZEROS        Q#UPRC
     C                   MOVE      *BLANKS       Q#CORI
     C                   Z-ADD     1             P#VALU
     C                   MOVEL     'STD'         P#VCOD
     C                   MOVE      '1'           P#ITMT
     C                   eval      P#ITEM='5055205044729'
     C                   MOVE      'GBP'         P#CURN
     C                   eval      Q#CATN='5055205044729'
     C                   Z-ADD     1             Q#QTY
     C                   Z-ADD     1             Q#ORDL
     C                   Z-ADD     1130826       P#DATE
     C                   MOVE      *blanks       Q#LIST
     C                   Z-ADD     0             Q#PRCH
     C                   Z-ADD     0             Q#UPRC
     C                   MOVEL     '*'           Q#ORDX
     C                   MOVE      '1'           OE400             1
      *
     C                   OUT       LDA
      /COPY OECOPYSRC,EVOE400
     C                   IN        LDA
     C                   RETURN
