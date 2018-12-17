     H DEBUG  OPTION(*NODEBUGIO:*SRCSTMT)
      /if Defined(*CRTBNDRPG)
     H DFTACTGRP(*NO) BNDDIR('DRLUTILS')
      /endif
      /define FixPostCode
      /copy DrlUtilsH
     D Postcode        s             12a
      /free
       Postcode = FixPostcode('bb11 4hd');
       dsply postcode;
       Postcode = FixPostcode('bb11  4hd');
       dsply postcode;
       Postcode = FixPostcode('bb2 1dd');
       dsply postcode;
       Postcode = FixPostcode('bb21dd');
       dsply postcode;
       Postcode = FixPostcode('bb21  dd');
       dsply postcode;
       Postcode = FixPostcode('bb21   dd');
       dsply postcode;
       *inlr = *on;
       return;
