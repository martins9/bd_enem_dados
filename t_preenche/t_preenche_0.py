#!/usr/bin/python
# -*- coding: utf-8 -*-

arquivoentrada = open ('microdados_enem_2014.csv', 'r')
arquivosaida = open ('t_preenche_2014_0.csv', 'w')

for linha in arquivoentrada:
	texto = linha.split(",")
		
	arquivosaida.writelines (texto[0]+",1,"+texto[93]+'\n')
	arquivosaida.writelines (texto[0]+",2,"+texto[90]+'\n')
	arquivosaida.writelines (texto[0]+",3,"+texto[91]+'\n')
	arquivosaida.writelines (texto[0]+",4,"+texto[92]+'\n')
	arquivosaida.writelines (texto[0]+",5,"+texto[94]+'\n')
	arquivosaida.writelines (texto[0]+",6,"+texto[95]+'\n')
	arquivosaida.writelines (texto[0]+",7,"+texto[111]+'\n')
	arquivosaida.writelines (texto[0]+",8,"+texto[96]+'\n')
	arquivosaida.writelines (texto[0]+",9,"+texto[97]+'\n')
	arquivosaida.writelines (texto[0]+",10,"+texto[98]+'\n')
	arquivosaida.writelines (texto[0]+",11,"+texto[99]+'\n')
	arquivosaida.writelines (texto[0]+",12,"+texto[100]+'\n')
	arquivosaida.writelines (texto[0]+",13,"+texto[101]+'\n')
	arquivosaida.writelines (texto[0]+",14,"+texto[102]+'\n')
	arquivosaida.writelines (texto[0]+",15,"+texto[103]+'\n')
	arquivosaida.writelines (texto[0]+",16,"+texto[104]+'\n')
	arquivosaida.writelines (texto[0]+",17,"+texto[105]+'\n')
	arquivosaida.writelines (texto[0]+",18,"+texto[106]+'\n')
	arquivosaida.writelines (texto[0]+",19,"+texto[107]+'\n')
	arquivosaida.writelines (texto[0]+",20,"+texto[108]+'\n')
	arquivosaida.writelines (texto[0]+",21,"+texto[109]+'\n')
	arquivosaida.writelines (texto[0]+",22,"+texto[110]+'\n')
	arquivosaida.writelines (texto[0]+",23,"+texto[112]+'\n')
	arquivosaida.writelines (texto[0]+",24,"+texto[113]+'\n')
	arquivosaida.writelines (texto[0]+",25,"+texto[114]+'\n')
	arquivosaida.writelines (texto[0]+",26,"+texto[115]+'\n')
	arquivosaida.writelines (texto[0]+",27,"+texto[116]+'\n')
	arquivosaida.writelines (texto[0]+",28,"+texto[117]+'\n')
	arquivosaida.writelines (texto[0]+",29,"+texto[118]+'\n')
	arquivosaida.writelines (texto[0]+",30,"+texto[119]+'\n')
	arquivosaida.writelines (texto[0]+",31,"+texto[117]+'\n')
	arquivosaida.writelines (texto[0]+",32,"+texto[121]+'\n')
	arquivosaida.writelines (texto[0]+",33,"+texto[122]+'\n')
	arquivosaida.writelines (texto[0]+",34,"+texto[123]+'\n')
	arquivosaida.writelines (texto[0]+",35,"+texto[124]+'\n')
	arquivosaida.writelines (texto[0]+",36,"+texto[125]+'\n')
	arquivosaida.writelines (texto[0]+",37,"+texto[126]+'\n')
	arquivosaida.writelines (texto[0]+",38,"+texto[127]+'\n')
	arquivosaida.writelines (texto[0]+",39,"+texto[128]+'\n')
	arquivosaida.writelines (texto[0]+",40,"+texto[129]+'\n')
	arquivosaida.writelines (texto[0]+",41,"+texto[130]+'\n')
	arquivosaida.writelines (texto[0]+",42,"+texto[131]+'\n')
	arquivosaida.writelines (texto[0]+",43,"+texto[132]+'\n')
	arquivosaida.writelines (texto[0]+",44,"+texto[133]+'\n')
	arquivosaida.writelines (texto[0]+",45,"+texto[134]+'\n')
	arquivosaida.writelines (texto[0]+",46,"+texto[135]+'\n')
	arquivosaida.writelines (texto[0]+",47,"+texto[136]+'\n')
	arquivosaida.writelines (texto[0]+",48,"+texto[137]+'\n')
	arquivosaida.writelines (texto[0]+",49,"+texto[138]+'\n')
	arquivosaida.writelines (texto[0]+",50,"+texto[139]+'\n')
	arquivosaida.writelines (texto[0]+",51,"+texto[140]+'\n')
	arquivosaida.writelines (texto[0]+",52,"+texto[141]+'\n')
	arquivosaida.writelines (texto[0]+",53,"+texto[142]+'\n')
	arquivosaida.writelines (texto[0]+",54,"+texto[143]+'\n')
	arquivosaida.writelines (texto[0]+",55,"+texto[144]+'\n')
	arquivosaida.writelines (texto[0]+",56,"+texto[145]+'\n')
	arquivosaida.writelines (texto[0]+",57,"+texto[146]+'\n')
	arquivosaida.writelines (texto[0]+",58,"+texto[147]+'\n')
	arquivosaida.writelines (texto[0]+",59,"+texto[148]+'\n')
	arquivosaida.writelines (texto[0]+",60,"+texto[149]+'\n')
	arquivosaida.writelines (texto[0]+",61,"+texto[150]+'\n')
	arquivosaida.writelines (texto[0]+",62,"+texto[151]+'\n')
	arquivosaida.writelines (texto[0]+",63,"+texto[153]+'\n')
	arquivosaida.writelines (texto[0]+",64,"+texto[154]+'\n')
	arquivosaida.writelines (texto[0]+",65,"+texto[155]+'\n')
	arquivosaida.writelines (texto[0]+",66,"+texto[157]+'\n')
	arquivosaida.writelines (texto[0]+",67,"+texto[159]+'\n')
	arquivosaida.writelines (texto[0]+",68,"+texto[160]+'\n')
	arquivosaida.writelines (texto[0]+",69,"+texto[161]+'\n')
	arquivosaida.writelines (texto[0]+",70,"+texto[162]+'\n')
	arquivosaida.writelines (texto[0]+",71,"+texto[163]+'\n')
	arquivosaida.writelines (texto[0]+",72,"+texto[165])
	arquivosaida.writelines (texto[0]+",73,"+texto[152]+'\n')
	arquivosaida.writelines (texto[0]+",74,"+texto[156]+'\n')
	arquivosaida.writelines (texto[0]+",75,"+texto[158]+'\n')
	arquivosaida.writelines (texto[0]+",76,"+texto[164]+'\n')

arquivoentrada.close()
arquivosaida.close()
