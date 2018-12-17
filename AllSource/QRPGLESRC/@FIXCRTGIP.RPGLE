     Fcrtgilf07 uf   e           k disk
     Foep40l02  if   e           k disk
      /free
        cono40 = 'IA';
        cusngi = 'DRL';
        adddgi = 1130727;
        setll (cusngi:adddgi) rcrtgi;
        reade (cusngi:adddgi) rcrtgi;
        dow not %eof(crtgilf07);
         if ordngi='*ERR-40';
          chain (cono40:cusogi) oer40;
          if %found;
           ordngi = ordn40;
           update rcrtgi;
          endif;
         endif;
        reade (cusngi:adddgi) rcrtgi;
        enddo;
        *inlr = *on;
        return;
