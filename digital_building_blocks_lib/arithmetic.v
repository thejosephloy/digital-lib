module HalfAdder(a, b, cout, out);
   input wire a, b;
   output wire cout, out;
   
   assign out = a ^ b;
   assign cout = a & b;
   

endmodule // HalfAdder

module FullAdder(a, b, cin, cout, out);
   parameter n = 8;
   
   input wire [n-1:0] a, b;
   input wire	 cin;
   output wire	 cout;
   output wire [n-1:0] out;
   
   assign {cout, out} = a + b + cin;
   
endmodule // FullAdder


module AddSub1(a, b, sub, ovf, out);
   parameter n = 8;

   input wire [n-1:0] a, b;
   input wire	 sub;
   output wire [n-1:0] out;
   output wire	  ovf;
   wire		  c1, c2;
   assign ovf = c1 ^ c2;

   FullAdder #(n-1) fa1(a[n-2:0], b[n-2:0] ^ {n-1{sub}}, sub, c1, out[n-2:0]);
   FullAdder #(1) fa2(a[n-1], b[n-1] ^ sub, c1, c2, out[n-1]);
   
endmodule // AddSub1

module AddSub2(a, b, sub, ovf, out);
   parameter n = 8;

   input [n-1:0] a, b;
   input	 sub;
   output [n-1:0] out;
   output	  ovf;
   wire		  c1, c2;
   wire		  ovf = c1 ^ c2;

   assign {c1, out[n-2:0]} = a[n-2:0] + (b[n-2:0] ^ {n-1{sub}}) + sub;
   assign {c2, out[n-1]} = a[n-1] + (b[n-1] ^ sub) + c1;
   
   
endmodule // AddSub2

