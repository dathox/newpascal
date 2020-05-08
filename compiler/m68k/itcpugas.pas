{
    Copyright (c) 1998-2002 by Florian Klaempfl

    This unit contains the m68k GAS instruction tables

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program; if not, write to the Free Software
    Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.

 ****************************************************************************
}
unit itcpugas;

{$i fpcdefs.inc}

interface

    uses
      cpubase,cgbase;

    const
      gas_op2str : op2strtable = {$i m68kstd.inc}

    function gas_regnum_search(const s:string):Tregister;
    function gas_regname(r:Tregister):string;
    function gas_regfullname(r:Tregister):string;

  implementation

    const
      gas_regname_table : array[tregisterindex] of string[7] = (
        {r68kgas.inc contains the name of each register.}
        {$i r68kgas.inc}
      );

      gas_regfullname_table : array[tregisterindex] of string[7] = (
        {r68kgasf.inc contains the "full" name of each register.}
        {$i r68kgasf.inc}
      );

      gas_regname_index : array[tregisterindex] of tregisterindex = (
        {r68kgri.inc contains an index which sorts gas_regname_table by name }
        {$i r68kgri.inc}
      );


    function findreg_by_gasname(const s:string):byte;
      var
        i,p : tregisterindex;
      begin
        {Binary search.}
        p:=0;
        i:=regnumber_count_bsstart;
        repeat
          if (p+i<=high(tregisterindex)) and (gas_regname_table[gas_regname_index[p+i]]<=s) then
            p:=p+i;
          i:=i shr 1;
        until i=0;
        if gas_regname_table[gas_regname_index[p]]=s then
          findreg_by_gasname:=gas_regname_index[p]
        else
          findreg_by_gasname:=0;
      end;


    function gas_regnum_search(const s:string):Tregister;
      begin
        result:=regnumber_table[findreg_by_gasname(s)];
      end;


    function gas_regname(r:Tregister):string;
      var
        p : tregisterindex;
      begin
        p:=findreg_by_number(r);
        if p<>0 then
          result:=gas_regname_table[p]
        else
          result:='%'+generic_regname(r);
      end;

    function gas_regfullname(r:Tregister):string;
      var
        p : tregisterindex;
      begin
        p:=findreg_by_number(r);
        if p<>0 then
          result:=gas_regfullname_table[p]
        else
          result:='%'+generic_regname(r);
      end;

end.
