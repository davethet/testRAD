       ctl-opt DEBUG  OPTION(*NODEBUGIO:*SRCSTMT);
      /if Defined(*CRTBNDRPG)
       ctl-opt DFTACTGRP(*NO) BNDDIR('DRLUTILS');
      /endif
      //****************************************************************
      //
      //  TITLE........:
      //
      //  PROGRAM......:                 PROJECT....:
      //
      //  DATE.........:
      //
      //  AUTHOR.......:
      //
      //  DESCRIPTION..:    Compile and run with EXPERTARCH
      //
      //****************************************************************
      //  Amendments
      //  xx/xx/xxxx xxxxxxxxxxxxxx
      //  xxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
      //****************************************************************
       dcl-f text keyed usage(*input:*delete);
       dcl-f bkpinp40 usage(*input:*output) rename(inr40:binr40);
       dcl-f ordhdord keyed;
       dcl-f cr02rthd keyed;
      // ----------------------- Main procedure interface
       dcl-pi @PRGTEXTR;
       end-pi;

       // Purge Y type by reading through Text file and deleting if first
       // 7 characters arent a Order or Return
       cono40 = 'IA';
       ttyp40 = 'Y';
       setll (cono40:ttyp40) text;
       reade (cono40:ttyp40) text;
       dow not %eof(text);
         ordn40 = %subst(tref40:1:7);
          chain (cono40:ordn40) ordhdord;
          if not %found(ordhdord);
           chain (cono40:ordn40) cr02rthd;
          endif;
          if not %found;
            write binr40;
            delete inr40;
          EndIf;
       reade (cono40:ttyp40) text;
       EndDo;

       *inlr = *on;
       return;
