module fulladder(input 	a, b, cin,
                 output     cout, sum);
	wire c1, c2, s1;

	half_adder HA1(.a(a), .b(b), .c(c1), .s(s1));
	half_adder HA2(.a(s1), .b(cin), .c(c2), .s(sum));

	assign cout = c1 | c2;
endmodule
