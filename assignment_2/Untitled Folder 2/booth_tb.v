


module booth_tb () ;
   reg signed [7:0] a;
   reg  [2:0] b3;
     
   wire signed[15:0] ans;


   booth dut(	 .a(a[7:0]),
		 .b3(b3[2:0]),
		 .ans(ans[15:0]));
		
   
initial begin
      #5
      a = 10;
      #5
      b3 = 0;
     #5       $display($time, " a = %d, b = %d, p = %d", a, b3, ans);
      #5
//      a = 10;
      b3 = 2;
     #5
      $display($time, " a = %d, b = %d, p = %d", a, b3, ans);

      #5
//      a = 10;
      b3 = 3;
       #5     $display($time, " a = %d, b = %d, p = %d", a, b3, ans);

      #5
//      a = 20;
      b3 = 0;
      
      #5 $display($time, " a = %d, b = %d, p = %d", a, b3, ans);

           $stop;
      
   end
   
endmodule 
