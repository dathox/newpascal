{ This is an automatically created file, so don't edit it }
unit cp646;

  interface

  implementation

  uses
     charset;

  const
     map : array[0..127] of tunicodecharmapping = (
       (unicode : 0; flag : umf_noinfo; reserved: 0),
       (unicode : 1; flag : umf_noinfo; reserved: 0),
       (unicode : 2; flag : umf_noinfo; reserved: 0),
       (unicode : 3; flag : umf_noinfo; reserved: 0),
       (unicode : 4; flag : umf_noinfo; reserved: 0),
       (unicode : 5; flag : umf_noinfo; reserved: 0),
       (unicode : 6; flag : umf_noinfo; reserved: 0),
       (unicode : 7; flag : umf_noinfo; reserved: 0),
       (unicode : 8; flag : umf_noinfo; reserved: 0),
       (unicode : 9; flag : umf_noinfo; reserved: 0),
       (unicode : 10; flag : umf_noinfo; reserved: 0),
       (unicode : 11; flag : umf_noinfo; reserved: 0),
       (unicode : 12; flag : umf_noinfo; reserved: 0),
       (unicode : 13; flag : umf_noinfo; reserved: 0),
       (unicode : 14; flag : umf_noinfo; reserved: 0),
       (unicode : 15; flag : umf_noinfo; reserved: 0),
       (unicode : 16; flag : umf_noinfo; reserved: 0),
       (unicode : 17; flag : umf_noinfo; reserved: 0),
       (unicode : 18; flag : umf_noinfo; reserved: 0),
       (unicode : 19; flag : umf_noinfo; reserved: 0),
       (unicode : 20; flag : umf_noinfo; reserved: 0),
       (unicode : 21; flag : umf_noinfo; reserved: 0),
       (unicode : 22; flag : umf_noinfo; reserved: 0),
       (unicode : 23; flag : umf_noinfo; reserved: 0),
       (unicode : 24; flag : umf_noinfo; reserved: 0),
       (unicode : 25; flag : umf_noinfo; reserved: 0),
       (unicode : 26; flag : umf_noinfo; reserved: 0),
       (unicode : 27; flag : umf_noinfo; reserved: 0),
       (unicode : 28; flag : umf_noinfo; reserved: 0),
       (unicode : 29; flag : umf_noinfo; reserved: 0),
       (unicode : 30; flag : umf_noinfo; reserved: 0),
       (unicode : 31; flag : umf_noinfo; reserved: 0),
       (unicode : 32; flag : umf_noinfo; reserved: 0),
       (unicode : 33; flag : umf_noinfo; reserved: 0),
       (unicode : 34; flag : umf_noinfo; reserved: 0),
       (unicode : 35; flag : umf_noinfo; reserved: 0),
       (unicode : 36; flag : umf_noinfo; reserved: 0),
       (unicode : 37; flag : umf_noinfo; reserved: 0),
       (unicode : 38; flag : umf_noinfo; reserved: 0),
       (unicode : 39; flag : umf_noinfo; reserved: 0),
       (unicode : 40; flag : umf_noinfo; reserved: 0),
       (unicode : 41; flag : umf_noinfo; reserved: 0),
       (unicode : 42; flag : umf_noinfo; reserved: 0),
       (unicode : 43; flag : umf_noinfo; reserved: 0),
       (unicode : 44; flag : umf_noinfo; reserved: 0),
       (unicode : 45; flag : umf_noinfo; reserved: 0),
       (unicode : 46; flag : umf_noinfo; reserved: 0),
       (unicode : 47; flag : umf_noinfo; reserved: 0),
       (unicode : 48; flag : umf_noinfo; reserved: 0),
       (unicode : 49; flag : umf_noinfo; reserved: 0),
       (unicode : 50; flag : umf_noinfo; reserved: 0),
       (unicode : 51; flag : umf_noinfo; reserved: 0),
       (unicode : 52; flag : umf_noinfo; reserved: 0),
       (unicode : 53; flag : umf_noinfo; reserved: 0),
       (unicode : 54; flag : umf_noinfo; reserved: 0),
       (unicode : 55; flag : umf_noinfo; reserved: 0),
       (unicode : 56; flag : umf_noinfo; reserved: 0),
       (unicode : 57; flag : umf_noinfo; reserved: 0),
       (unicode : 58; flag : umf_noinfo; reserved: 0),
       (unicode : 59; flag : umf_noinfo; reserved: 0),
       (unicode : 60; flag : umf_noinfo; reserved: 0),
       (unicode : 61; flag : umf_noinfo; reserved: 0),
       (unicode : 62; flag : umf_noinfo; reserved: 0),
       (unicode : 63; flag : umf_noinfo; reserved: 0),
       (unicode : 64; flag : umf_noinfo; reserved: 0),
       (unicode : 65; flag : umf_noinfo; reserved: 0),
       (unicode : 66; flag : umf_noinfo; reserved: 0),
       (unicode : 67; flag : umf_noinfo; reserved: 0),
       (unicode : 68; flag : umf_noinfo; reserved: 0),
       (unicode : 69; flag : umf_noinfo; reserved: 0),
       (unicode : 70; flag : umf_noinfo; reserved: 0),
       (unicode : 71; flag : umf_noinfo; reserved: 0),
       (unicode : 72; flag : umf_noinfo; reserved: 0),
       (unicode : 73; flag : umf_noinfo; reserved: 0),
       (unicode : 74; flag : umf_noinfo; reserved: 0),
       (unicode : 75; flag : umf_noinfo; reserved: 0),
       (unicode : 76; flag : umf_noinfo; reserved: 0),
       (unicode : 77; flag : umf_noinfo; reserved: 0),
       (unicode : 78; flag : umf_noinfo; reserved: 0),
       (unicode : 79; flag : umf_noinfo; reserved: 0),
       (unicode : 80; flag : umf_noinfo; reserved: 0),
       (unicode : 81; flag : umf_noinfo; reserved: 0),
       (unicode : 82; flag : umf_noinfo; reserved: 0),
       (unicode : 83; flag : umf_noinfo; reserved: 0),
       (unicode : 84; flag : umf_noinfo; reserved: 0),
       (unicode : 85; flag : umf_noinfo; reserved: 0),
       (unicode : 86; flag : umf_noinfo; reserved: 0),
       (unicode : 87; flag : umf_noinfo; reserved: 0),
       (unicode : 88; flag : umf_noinfo; reserved: 0),
       (unicode : 89; flag : umf_noinfo; reserved: 0),
       (unicode : 90; flag : umf_noinfo; reserved: 0),
       (unicode : 91; flag : umf_noinfo; reserved: 0),
       (unicode : 92; flag : umf_noinfo; reserved: 0),
       (unicode : 93; flag : umf_noinfo; reserved: 0),
       (unicode : 94; flag : umf_noinfo; reserved: 0),
       (unicode : 95; flag : umf_noinfo; reserved: 0),
       (unicode : 96; flag : umf_noinfo; reserved: 0),
       (unicode : 97; flag : umf_noinfo; reserved: 0),
       (unicode : 98; flag : umf_noinfo; reserved: 0),
       (unicode : 99; flag : umf_noinfo; reserved: 0),
       (unicode : 100; flag : umf_noinfo; reserved: 0),
       (unicode : 101; flag : umf_noinfo; reserved: 0),
       (unicode : 102; flag : umf_noinfo; reserved: 0),
       (unicode : 103; flag : umf_noinfo; reserved: 0),
       (unicode : 104; flag : umf_noinfo; reserved: 0),
       (unicode : 105; flag : umf_noinfo; reserved: 0),
       (unicode : 106; flag : umf_noinfo; reserved: 0),
       (unicode : 107; flag : umf_noinfo; reserved: 0),
       (unicode : 108; flag : umf_noinfo; reserved: 0),
       (unicode : 109; flag : umf_noinfo; reserved: 0),
       (unicode : 110; flag : umf_noinfo; reserved: 0),
       (unicode : 111; flag : umf_noinfo; reserved: 0),
       (unicode : 112; flag : umf_noinfo; reserved: 0),
       (unicode : 113; flag : umf_noinfo; reserved: 0),
       (unicode : 114; flag : umf_noinfo; reserved: 0),
       (unicode : 115; flag : umf_noinfo; reserved: 0),
       (unicode : 116; flag : umf_noinfo; reserved: 0),
       (unicode : 117; flag : umf_noinfo; reserved: 0),
       (unicode : 118; flag : umf_noinfo; reserved: 0),
       (unicode : 119; flag : umf_noinfo; reserved: 0),
       (unicode : 120; flag : umf_noinfo; reserved: 0),
       (unicode : 121; flag : umf_noinfo; reserved: 0),
       (unicode : 122; flag : umf_noinfo; reserved: 0),
       (unicode : 123; flag : umf_noinfo; reserved: 0),
       (unicode : 124; flag : umf_noinfo; reserved: 0),
       (unicode : 125; flag : umf_noinfo; reserved: 0),
       (unicode : 126; flag : umf_noinfo; reserved: 0),
       (unicode : 127; flag : umf_noinfo; reserved: 0)
     );

     unicodemap : tunicodemap = (
       cpname : 'ISO646-US';
       cp : 20127;
       map : @map;
       lastchar : 127;
       next : nil;
       internalmap : true
     );

  begin
     registermapping(@unicodemap)
  end.
