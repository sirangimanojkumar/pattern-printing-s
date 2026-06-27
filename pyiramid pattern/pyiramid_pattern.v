
module pattern ;
  integer i,j,k;
  
  initial begin 
    for (i = 1;i<=5;i=i+1)begin 
      // print leading spaces to center the row
      for(j=1;j<=5-i;j=j+1)begin
        $write(" ");
      end
     // print stars for this row
      for(k=1;k<=2*i-1;k=k+1)begin
        $write("*");
    end
      $write("\n");
    end
  end
endmodule 
