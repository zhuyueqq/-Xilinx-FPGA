module led_run(
    clk,
    rstn,
    led
    );
    
    input clk;
    input rstn;
    output reg [7:0] led;
    
    reg[24:0] counter;
    
always@(posedge clk or negedge rstn) begin
    if(!rstn)
        counter <= 0;
//ʵ����1�룬������ʱ����һ��
//     else if(counter == 25'd24999999)   
    else if(counter == 25'd24999)
        counter <= 0;      
      else
        counter <= counter + 1'b1;
end
      
always@(posedge clk or negedge rstn)    begin
     if(!rstn)
        led <= 8'b0000_0001;
//    else if(counter == 25'd2499_9999)begin
     else if(counter == 25'd24999) 
  /*       д��һ
   begin
        if (led ==8'b1000_0000)
                 led <= 8'b0000_0001;
             else
                  led <= led<<1;
            end
  */
 //д����
        led <= {led[6:0],led[7]};    
      else
         led <=led;
end
      
      
//д����������38����������8��״̬ʵ����ˮ��
/*reg [2:0] cnt2;
always@(posedge clk or negedge rstn) begin
    if(!rstn)
        cnt2 <= 0; 
      else if(counter == 25'd24999) 
        cnt2 <= cnt2 + 1'b1;
end    

decoder38 decoder38(
	.a(cnt2[2]),
	.b(cnt2[1]),
	.c(cnt2[0]),
	.data(led)//led��decode����ײ�ģ�������Ѿ�����Ϊreg�ˣ��������ģ���ﲻ�ܶ���Ϊreg
);
  
  */    
endmodule

