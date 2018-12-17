     H DEBUG  OPTION(*NODEBUGIO:*SRCSTMT)
      /if Defined(*CRTBNDRPG)
     H DFTACTGRP(*NO) BNDDIR('DRLUTILS')
      /endif
      /copy DrlUtilsH
     D weeknum         s              2  0
     D sdate7          s              7  0
     D WeekEndDate     s               D
     D StartDate       s               D
     C     *entry        plist
     C                   parm                    indate           10
      /free
         // Get Friday on or after Startdate
         startdate = %date('01.04.' + %subst(indate:1:4):*eur);
         weekenddate = %date(indate:*iso);
         sdate7 = %dec(%char(startdate :*cymd0):7:0);
                dow getdayNofweek(sdate7) <> 6;
                 startdate = startdate + %days(1);
                 sdate7 = %dec(%char(startdate :*cymd0):7:0);
                enddo;
                // Get Saturday before - Start of Expert Year
             startdate = startdate - %days(6);
             if startdate > weekenddate;
                startdate = %date('01.04.' + %subst(indate:1:4):*eur) -
                            %years(1);
                sdate7 = %dec(%char(startdate :*cymd0):7:0);
                dow getdayNofweek(sdate7) <> 6;
                 startdate = startdate + %days(1);
                 sdate7 = %dec(%char(startdate :*cymd0):7:0);
                enddo;
                startdate = startdate - %days(6);
             EndIf;
             weeknum = (%diff(weekenddate:startdate:*days) / 7) + 1;
       dsply startdate;
       dsply weeknum;
       *inlr = *on;
       return;
