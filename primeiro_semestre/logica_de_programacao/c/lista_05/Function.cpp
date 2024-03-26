#include<stdio.h>
#include<stdlib.h>
#include <locale.h>


float total (float valor1, float valor2 ){ 
	
	float media;
	media = (valor1+valor2)/2;
	printf("\n Sua media  %.2f \n\n ",media);
  
   
     if( media >= 7){
   	 printf("\n Aprovado");
   }else{
   	   printf("\nReprovado");
   };
   return(media);
};
 



main(){
	
	
	//char produto[50];
	float n1,n2;
	
	//printf("Informe produto ");
	//scanf("%s",&produto);
	//fflush(stdin);
	printf("Informe NOTA 1: ");
	scanf("%f",&n1);
	fflush(stdin);
	printf(" Informe NOTA 2 %: ");
	scanf("%f",&n2);
	fflush(stdin);
	
	total(n1,n2);
	

};
