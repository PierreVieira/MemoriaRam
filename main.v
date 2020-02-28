module main(address, clock, data, wren, q); 

	//memoria_ram
	input	 [4:0]  address;
	input	 clock;
	input	 [7:0]  data;
	input	 wren;
	output [7:0]  q;
	
	memoria_ram BlOCO0(address, clock, data, wren, q);
	
	//Display
	
	//Valor do endereço
	DecodDisplay BLOCO1(address[3], address[2], address[1], address[0],HEX7); //Display mais à esquerda
	DecodDisplay BLOCO2(0, 0, 0, address[4] , HEX6); //Display mais à esquerda
	
	//Dados introduzidos na memoria
	DecodDisplay BLOCO3(data[3], data[2], data[1], data[0], HEX5);
	DecodDisplay BLOCO4(data[7], data[6], data[5], data[4], HEX4);
	
	//Dados lidos da memoria
	DecodDisplay BLOCO5(q[3], q[2], q[1], q[0], HEX1);
	DecodDisplay BLOCO6(q[7], q[6], q[5], q[4], HEX0);
	
endmodule 