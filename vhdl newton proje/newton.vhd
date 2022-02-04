library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.numeric_std.all;
use ieee.float_pkg.all;


Entity newton is

End newton;


Architecture Behv of newton is
  
------------------------------------------------------------ 

--x ve y sinyalleri tanimlama

signal x0,x1,x2,x3,x4,x5,x6,x7: real;

signal y0,y1,y2,y3,y4,y5,y6,y7: real;
------------------------------------------------------------  
--ilk pay ve paydalar
signal b10pay,b20pay,b30pay,b40pay,b50pay,b60pay,b70pay:real;
signal b10payda,b20payda,b30payda,b40payda,b50payda,b60payda,b70payda:real;
--1. turev degerleri
signal b10,b20,b30,b40,b50,b60,b70: real;   
------------------------------------------------------------  
--ikinci pay ve paydalar
signal b21pay,b31pay,b41pay,b51pay,b61pay,b71pay:real;
signal b21payda,b31payda,b41payda,b51payda,b61payda,b71payda:real;
--ikinci turev degerleri
signal b21,b31,b41,b51,b61,b71: real;
------------------------------------------------------------
--ucuncu pay ve paydalar
signal b32pay,b42pay,b52pay,b62pay,b72pay:real;
signal b32payda,b42payda,b52payda,b62payda,b72payda:real;
--ucuncu turev degerleri
signal b32,b42,b52,b62,b72: real;
------------------------------------------------------------
--dorduncu pay ve paydalar
signal b43pay,b53pay,b63pay,b73pay:real;
signal b43payda,b53payda,b63payda,b73payda:real;
--dorduncu turev degerleri
signal b43,b53,b63,b73: real;
------------------------------------------------------------
--besinci pay ve paydalar
signal b54pay,b64pay,b74pay:real;
signal b54payda,b64payda,b74payda:real;
--besinci turev degerleri
signal b54,b64,b74: real;
------------------------------------------------------------
--altinci pay ve paydalar
signal b65pay,b75pay:real;
signal b65payda,b75payda:real;
--altinci turev degerlerii
signal b65,b75: real;
------------------------------------------------------------
--yedinci pay ve paydalar
signal b76pay:real;
signal b76payda:real;
--yedinci turev degerleri
signal b76: real;
------------------------------------------------------------
------------------------------------------------------------
------------------------------------------------------------

 
Begin  --architecture


----proces'ler baslangici 
 
birinci_denklem_part1:Process               
Begin 
    

     b10pay<=y1-y0  ;
     b10payda<=x1-x0  ;
     ------------------------
     b20pay<=y2-y1  ;
     b20payda<=x2-x1  ;
     ------------------------
     b30pay<=y3-y2  ;
     b30payda<=x3-x2  ;
     ------------------------
     b40pay<=y4-y3  ;
     b40payda<=x4-x3  ;
     ------------------------
     b50pay<=y5-y4  ;
     b50payda<=x5-x4  ;
     ------------------------
     b60pay<=y6-y5  ;
     b60payda<=x6-x5  ;
     ------------------------
     b70pay<=y7-y6  ;
     b70payda<=x7-x6  ;
     
    wait;
    end process; 
------------------------------------------   

  birinci_denklem_part2:Process 
  Begin  
     
     wait on b10pay;
     
     b10<=b10pay/b10payda ;
     b20<=b20pay/b20payda ;
     b30<=b30pay/b30payda ;
     b40<=b40pay/b40payda ;
     b50<=b50pay/b50payda ;
     b60<=b60pay/b60payda ;
     b70<=b70pay/b70payda ;
     
    wait;
    end process; 
   
     
 ---------------------------------------------------------------------------    
  ikinci_denklem_part1:Process 
  Begin  
      
      wait on b10;
    
     b21pay<=b20-b10  ;
     b21payda<=x2-x0  ;
     ------------------------
     b31pay<=b30-b20  ;
     b31payda<=x3-x1  ;
     ------------------------
     b41pay<=b40-b30  ;
     b41payda<=x4-x2  ;
     ------------------------
     b51pay<=b50-b40  ;
     b51payda<=x5-x3  ;
     ------------------------
     b61pay<=b60-b50  ;
     b61payda<=x6-x4  ;
     ------------------------
     b71pay<=b70-b60  ;
     b71payda<=x7-x5  ;
     wait;
    end process; 
    
    
  ikinci_denklem_part2:Process 
  Begin  
     
     wait on b21pay;
   
     b21<=b21pay/b21payda ;
     b31<=b31pay/b31payda ;
     b41<=b41pay/b41payda ;
     b51<=b51pay/b51payda ;
     b61<=b61pay/b61payda ;
     b71<=b71pay/b71payda ;
     wait;
    end process;
    
 --------------------------------------------------------------------   
  ucuncu_denklem_part1:Process 
  Begin  
      
      wait on b21;
     
     b32pay<=b31-b21 ;
     b32payda<=x3-x0 ;
     ------------------------
     b42pay<=b41-b31 ;
     b42payda<=x4-x1 ;
     ------------------------
     b52pay<=b51-b41 ;
     b52payda<=x5-x2 ;
     ------------------------
     b62pay<=b61-b51 ;
     b62payda<=x6-x3 ;
     ------------------------
     b72pay<=b71-b61 ;
     b72payda<=x7-x4 ;
     wait;
    end process;
    
------------------------------------------     
   ucuncu_denklem_part2:Process 
  Begin  
      
     wait on b32pay; 
     
     b32<=b32pay/b32payda ;
     b42<=b42pay/b42payda ;
     b52<=b52pay/b52payda ;
     b62<=b62pay/b62payda ;
     b72<=b72pay/b72payda ;
     wait;
    end process;
     
------------------------------------------------------------------------------------
  dorduncu_denklem_part1:Process 
  Begin  
      
      wait on b32;
     
     b43pay<=b42-b32  ;
     b43payda<=x4-x0  ;
     ------------------------
     b53pay<=b52-b42  ;
     b53payda<=x5-x1  ;
     ------------------------
     b63pay<=b62-b52  ;
     b63payda<=x6-x2  ;
     ------------------------
     b73pay<=b72-b62  ;
     b73payda<=x7-x3  ;
     
     wait;
    end process;
     
------------------------------------------------------------------------------------------------------------    
  dorduncu_denklem_part2:Process 
  Begin  
      
      wait on b43pay;
     
     
     b43<=b43pay/b43payda ;
     b53<=b53pay/b53payda ;
     b63<=b63pay/b63payda ;
     b73<=b73pay/b73payda ;
     wait;
    end process;
     
    
----------------------------------------------------------------------------- 
  besinci_denklem_part1:Process 
  Begin  
     
      wait on b43;
       
    
     b54pay<=b53-b43 ;
     b54payda<=x5-x0 ;
     ------------------------
     b64pay<=b63-b53 ;
     b64payda<=x6-x1 ;
     ------------------------
     b74pay<=b73-b63 ;
     b74payda<=x7-x2 ;
     
     wait;
    end process;
     
     
     
  besinci_denklem_part2:Process 
  Begin  
      
      wait on b54pay;
       
     b54<=b54pay/b54payda ;
     b64<=b64pay/b64payda ;
     b74<=b74pay/b74payda ;
      wait;
    end process;
     
    
----------------------------------------------------------------------------- 
  altinci_denklem_part1:Process 
  Begin  
    
    wait on b54;
     
     b65pay<=b64-b54;
     b65payda<=x6-x0;
     ------------------------
     b75pay<=b74-b64;
     b75payda<=x7-x1;
     
     wait;
    end process;
    
----------------------------    
  altinci_denklem_part2:Process 
  Begin  
   
   wait on b65pay; 
     
     b65<=b65pay/b65payda;
     b75<=b75pay/b75payda; 
    wait;
    end process;
    
   
     
-----------------------------------------------------------------------------
  yedinci_denklem_part1:Process 
  Begin  
    
     wait on b65;
     
     b76pay<=b75-b65 ;
     b76payda<=x7-x0 ;
     wait;
    end process;
    
     
  yedinci_denklem_part2:Process 
  Begin  
     
      wait on b76pay;
     
     b76<=b76pay/b76payda ; 
     wait;
    end process;
    
    
    --bulunmasi gereken katsayilar sunlar:
    --y0
    --b10
    --b21
    --b32
    --b43
    --b54
    --b65
    --b76
     
    
  yazdirma : process 
  begin
    
    wait on b76;
    report "1. Denklem = " & real'image(y0)  severity note;
    ---------------------------------------------------------------------------------------
    report "2.Denklem = " & real'image(b10)  &    "*(x-"   & real'image(x0)  &  ")"      severity note;
    ---------------------------------------------------------------------------------------
    report "3.Denklem = " & real'image(b21)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  severity note;
    ---------------------------------------------------------------------------------------
    report "4.Denklem = " & real'image(b32)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  & "*(x-" & real'image(x2)  & ")"   severity note;
    ---------------------------------------------------------------------------------------
    report "5.Denklem = " & real'image(b43)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  & "*(x-" & real'image(x2)  & ")" 
    & "*(x-" & real'image(x3)  & ")"   severity note;
    ---------------------------------------------------------------------------------------
    report "6.Denklem = " & real'image(b54)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  & "*(x-" & real'image(x2)  & ")" 
    & "*(x-" & real'image(x3)  & ")"     & "*(x-" & real'image(x4)  & ")"   severity note;
    ---------------------------------------------------------------------------------------
    report "7.Denklem = " & real'image(b65)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  & "*(x-" & real'image(x2)  & ")" 
    & "*(x-" & real'image(x3)  & ")"     & "*(x-" & real'image(x4)  & ")"   
    & "*(x-" & real'image(x5)  & ")"  severity note;
    ---------------------------------------------------------------------------------------
    report "8.Denklem = " & real'image(b76)  &    "*(x-"   
    & real'image(x0)  &  ")" & "*(x-" & real'image(x1)  & ")"  & "*(x-" & real'image(x2)  & ")" 
    & "*(x-" & real'image(x3)  & ")"     & "*(x-" & real'image(x4)  & ")"   
    & "*(x-" & real'image(x5)  & ")"   & "*(x-" & real'image(x6)  & ")"    severity note;
    ---------------------------------------------------------------------------------------
    wait;
    end process;
     

  
End Behv ; --mimari sonu
