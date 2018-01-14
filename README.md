# Tangente Hiperbolica
Implementação de Tangente Hiperbólica em VHDL. Abordagem: linearização da função.

### Autor:

* **José João Silva** - [jjoaosilva](https://github.com/jjoaosilva/)

## Sobre
Em um dos meus trabalhos feitos em VHDL, fui surpreendido com a seguinte tarefa: implementar a função tangente hiperbólica. 

Na época uma das propostas feitas foi a que vou apresentá-los: linearizar a função, pois, na época, já tinha em mãos componentes que multiplicavam e somavam.

Dois detalhes devem ser lembrados: o formato e tamanho dos números foram feitos de acordo com o meu problema, mais adiante darei detalhes sobre isso; outro fator que deve ser lembrado é o range de entrada da minha função: de -5 a +5. 

## Como foi feita
Observando o comportamento da função com entradas de -5 a +5 podemos observar que o seguinte: entradas de -5 a 0 e de 0 a +5 possuem mesma saída porém com sinais opostos. Por exemplo, a tanh(1) = 0.7615941559557649, já a tanh(-1) = -0.7615941559557649. Com isso podemos concluir que: precisamos linearizar apenas metade da função e quando sugir algum número que faça parte da outra metade, basta inverter seu sinal.

Usando qualquer ferramenta matemática, como Matlab, podemos fazer a linearização. Nessa caso, ficou assim:

![alt text](https://github.com/jjoaosilva/TangenteHiperbolica/blob/master/imgs/TanhLinearizada.png?raw=true)

Para uma boa precisão, fora usadas 9 retas (equações do primeiro grau) para representar a função.

## Implementações

### Python
Para testes rápidos e validação, na pasta 'Python' contém a implementação função Tangente Hiperbólica Linearizada fazendo comparativo com a Tangente hiperbólica da Math do próprio Python.

![alt text](https://github.com/jjoaosilva/TangenteHiperbolica/blob/master/imgs/python.png?raw=true)

### VHDL
Para implementação em VHDL, foram feitos os seguintes componentes:
* Func1Grau
* HalfAdder1
* Somador
* TanhL
* Multiplicador

O componente mais externo é o TanhL. Nele se faz a lógica de verificar a qual equação a entrada pertence. Sabendo com equação pertence, uma equação do 1 grau é montada para o componente Func1Grau. Nela é realizada a multiplicação e a soma. A saida do componente é tratada pelo componente TanhL e daí temos a tangente hiperbólica do valor pedido.

#### A entrada do componente possui 25 bits: 
* bit mais significativo: sinal => 0 para positivo, 1 para negativo
* Os próximos 8 bits para a parte inteira
* Os próximos 16 bits para a parte fracionária

Obs: Caso o bit mais significativo seja igual a 1, o que diz que o valor é negativo, é necessário fazer o complemento de dois para que seja obtido o valor real no número.

#### A saída do componente possui 16 bits: 
* bit mais significativo: sinal => 0 para positivo, 1 para negativo
* Os próximos 3 bits para a parte inteira
* Os próximos 12 bits para a parte fracionária