     D LDA           E DS                  EXTNAME(LDA) DTAARA(*LDA)
      *  Retrieve LDA values
     C                   IN        LDA
      *
     C                   MOVEL     *BLANKS       P#SUSP
     C                   MOVEL     *BLANKS       P#ERRC
     C                   MOVEL     '  '          L#RTCD
     C                   MOVEL     *BLANKS       P#C301
     C                   MOVEL(P)  'CTCSCL'      P#C301
     C                   MOVE      'CPCU'        P#C301
     C                   MOVEL     'DRL'         P#CUSN
     C                   MOVEL     '000'         P#DSEQ
     C                   Z-ADD     0             P#VLIN
     C                   OUT       LDA
     C                   CALL      'OE301'
      /COPY OECOPYSRC,EFOE301
     C                   IN        LDA
     C                   RETURN
