#include<stdlib.h>
#include<stdio.h>
  int matriz [3][3] = {10,20,30,40,50,60,70,80,90};
  
  int soma [2][2];
  int nova[2][2];
  
 int mut[2][2];
 int novam[2][2];
 
 int div[2][2];
 int novad[2][2];
 
 int men[2][2];
 int novan[2][2];
 
  int c,l;

main(){
	 
	  for(l=0; l<2;l++){
	   	 
	  	 for(c=0; c<2; c++){
	  	 	  printf("linha:[ %i ] coluna:[ %i ] ",l,c);
  		 	  scanf("%i",&nova[l][c]);
  			   };
	  };
	
	   for(l=0; l<2;l++){
	  	 for(c=0; c<2; c++){
	  	 	  printf("%i \t",nova[l][c]);
		   };
	  };
	  
	   // Preenchendo a matriz 'soma' com valores fornecidos pelo usuário e somando com 'nova'
    printf("\nPreencha outra matriz para somar com 'nova':\n");
    for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("linha:[ %i ] coluna:[ %i ] ", l, c);
            scanf("%i", &soma[l][c]);
            soma[l][c] += nova[l][c]; // Somando com a matriz 'nova'
        };
    };

    // Imprimindo a matriz 'soma'
    printf("\nMatriz resultante da soma:\n");
    for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("%i \t", soma[l][c]);
        }
        printf("\n");
    };
    
    /////////////////////multiplicação//////////////////////
     for(l=0; l<2;l++){
	   	 
	  	 for(c=0; c<2; c++){
	  	 	  printf("linha:[ %i ] coluna:[ %i ] ",l,c);
  		 	  scanf("%i",&novam[l][c]);
  			   };
	  };
	
	   for(l=0; l<2;l++){
	  	 for(c=0; c<2; c++){
	  	 	  printf("%i \t",novam[l][c]);
		   };
	  };
	  
    printf("\nPreencha outra matriz para multiplicar com 'nova':\n");
    for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("linha:[ %i ] coluna:[ %i ] ", l, c);
            scanf("%i", &mut[l][c]);
            mut[l][c] *= novam[l][c]; 
        };
    };
     // Imprimindo a matriz 'soma'
      printf("\nMatriz resultante da soma:\n");
      for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("%i \t", mut[l][c]);
        }
        printf("\n");
    };
////////////////////////////////////////////////////////////////////	

      /////////////////////Divisão//////////////////////
     for(l=0; l<2;l++){
	   	 
	  	 for(c=0; c<2; c++){
	  	 	  printf("linha:[ %i ] coluna:[ %i ] ",l,c);
  		 	  scanf("%f",&novad[l][c]);
  			   };
	  };
	
	   for(l=0; l<2;l++){
	  	 for(c=0; c<2; c++){
	  	 	  printf("%i \t",novad[l][c]);
		   };
	  };
	  
    printf("\nPreencha outra matriz para dividir com 'nova':\n");
    for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("linha:[ %i ] coluna:[ %i ] ", l, c);
            scanf("%i", &divv
			[l][c]);
            divv[l][c] /= novad[l][c]; 
        };
    };
     // Imprimindo a matriz 'soma'
      printf("\nMatriz resultante da soma:\n");
      for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("%i \t", div[l][c]);
        }
        printf("\n");
    };
////////////////////////////////////////////////////////////////////  

   /////////////////////subtração//////////////////////
     for(l=0; l<2;l++){
	   	 
	  	 for(c=0; c<2; c++){
	  	 	  printf("linha:[ %i ] coluna:[ %i ] ",l,c);
  		 	  scanf("%i",&novan[l][c]);
  			   };
	  };
	
	   for(l=0; l<2;l++){
	  	 for(c=0; c<2; c++){
	  	 	  printf("%i \t",novan[l][c]);
		   };
	  };
	  
    printf("\nPreencha outra matriz para subtração com 'nova':\n");
    for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("linha:[ %i ] coluna:[ %i ] ", l, c);
            scanf("%i", &men[l][c]);
            men[l][c] *= novan[l][c]; // Somando com a matriz 'nova'
        };
    };
     // Imprimindo a matriz 'soma'
      printf("\nMatriz resultante da soma:\n");
      for (l = 0; l < 2; l++) {
        for (c = 0; c < 2; c++) {
            printf("%i \t", men[l][c]);
        }
        printf("\n");
    };
////////////////////////////////////////////////////////////////////
	  
	  
	  

};
