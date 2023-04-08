module tt( );
integer i,j,k;
reg  [64:1]data [199936:1];
reg  [64:1]cipher_data[199936:1];
reg [64:1]d5,d6;
reg [64:1]text;
reg [64:1]key;
wire [64:1]cipher_text;

encryption2 r1 (text, key, cipher_text);
initial
   begin
     k=$fopen("C:\\Users\\aarushi\\Downloads\\retreive.txt","w");
     i=$fopen("i.mem","r");
     $fscanf(i,"%h",data);
  
     for(j=1;j<=199936;j=j+1)
         begin
            d5=data[j][64:1];
            if(d5!=0) 
                 begin
                 text=data[j][64:1];
                 key=64'b0101010101010101010101010101010101010101010101010101010101010101;
                 #20
                 cipher_data[j][64:1]=cipher_text;
                 d6=cipher_data[j][64:1];
                 $fwrite(k,"%h",d6[64:1]);
                 end
            else 
                  begin
                  d5=data[j-1][64:1];
                  j=199936;  
                  end
         end
      $fclose(i);
       $fclose(k);
    end
endmodule
