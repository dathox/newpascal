{
    This file is part of the Free Pascal Sinclair QL support package.
    Copyright (c) 2020 by Karoly Balogh

    Interface QDOS OS functions for applications

    See the file COPYING.FPC, included in this distribution,
    for details about the copyright.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

 **********************************************************************}

unit qdos;


interface

type
  Tchanid = longint;
  Tjobid = longint;
  Ttimeout = smallint;


const
  ERR_NC = -1;   { Operation not complete }
  ERR_NJ = -2;   { Not a (valid) job. }
  ERR_OM = -3;   { Out of memory. }
  ERR_OR = -4;   { Out of range. }
  ERR_BO = -5;   { Buffer overflow. }
  ERR_NO = -6;   { Channel not open. }
  ERR_NF = -7;   { File or device not found. }
  ERR_FX = -8;   { File already exists. }
  ERR_IU = -9;   { File or device already in use. }
  ERR_EF = -10;  { End of file. }
  ERR_DF = -11;  { Drive full. }
  ERR_BN = -12;  { Bad device. }
  ERR_TE = -13;  { Transmission error. }
  ERR_FF = -14;  { Format failed. }
  ERR_BP = -15;  { Bad parameter. }
  ERR_FE = -16;  { File error. }
  ERR_EX = -17;  { Expression error. }
  ERR_OV = -18;  { Arithmetic overflow. }
  ERR_NI = -19;  { Not implemented. }
  ERR_RO = -20;	 { Read only. }
  ERR_BL = -21;  { Bad line of Basic. }


{ the functions declared as external here are implemented in the system unit. They're included
  here via externals, do avoid double implementation of assembler wrappers (KB) }

function mt_alchp(size: dword; sizegot: pdword; jobid: Tjobid): pointer; external name '_mt_alchp';
procedure mt_rechp(area: pointer); external name '_mt_rechp';

function io_sbyte(chan: Tchanid; timeout: Ttimeout; c: char): longint; external name '_io_sbyte';
function io_sstrg(chan: Tchanid; timeout: Ttimeout; buf: pointer; len: smallint): smallint; external name '_io_sstrg';


implementation

end.
