/*Faça algoritmo que receba um valor que foi depositado e exiba o valor com rendimento após um
mês.
— Considere fixo o juro da poupança em 0,70% a. m.*/
programa
{
    
    funcao inicio()
    {
        const real jurosFixo = 1.007
        real saldo
        
        escreva("Valor a ser depositado: ")
        leia(saldo)
        limpa()

        saldo = saldo * jurosFixo

        escreva("Um mês depois", "\nSaldo: ", saldo)
    }
// Autor: umsimplesrodrigo
}
