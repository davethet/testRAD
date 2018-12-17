     H DEBUG  OPTION(*NODEBUGIO:*SRCSTMT)
      /if Defined(*CRTBNDRPG)
     H DFTACTGRP(*NO) BNDDIR('DRLUTILS')
      /endif
      /define EditString
      /copy DrlUtilsH
     D Phone           s             12a   inz('01282707946')
     D Format          s             14a   inz('(&&&&&) &&&&&&')
     D NicePhone       s             14a

       NicePhone = EditString(phone:format);
       dsply NicePhone;
       *inlr = *on;
       return;
