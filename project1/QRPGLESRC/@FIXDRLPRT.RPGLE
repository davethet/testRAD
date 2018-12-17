     Fdrlprnt   uf   e           k disk
     Fdrluniqp  uf   e           k disk    prefix(U_)
     Foep40l02  if   e           k disk
     Fordxref   if   e           k disk
     Fdeladds   if   e           k disk
      /free
        // was project 1
        cono40 = 'IA';
        seqn45 = 001;
        read drlprnt;
        dow not %eof(drlprnt);
         if ordsts='?';
          chain (ordrno) ordxref;
          if %found(ordxref);
           ordrno = cusoxr;
          endif;
          chain (cono40:ordrno) oer40;
          if %found;
           promdt = %date(dtdr40:*cymd);
           ordsts = stat40;
           chain (cono40:ordn40:seqn45) deladds;
           if %found;
            cusnam = onam45;
            pstcde = opst45;
           endif;
           update rdrlprnt;
          chain (UNIQNO) drluniqp;
           if %found;
            u_unordn = ordn40;
            u_unords = ordsts;
            u_uncuso = ordrno;
            update uniqr;
           endif;
           endif;
          endif;
        read drlprnt;
        enddo;
        *inlr = *on;
        return;
