from math import tanh

def funTanh(num):
    resposta = 0
    sinal = 1         ## POSITIVO
    if num < 0:
        sinal = -1    ## NEGATIVO
        num *= -1
        
    if num == 0:
        return 0

    elif ( num > 0 ) and (num <= 0.4806):       ## RETA 01
        resposta = num * 0.9298

    elif ( num > 0.4806 ) and (num <= 0.6976):  ## RETA 02
        resposta = (num * 0.7193) + 0.1010

    elif ( num > 0.6976 ) and (num <= 1):       ## RETA 03
        resposta = (num * 0.5248) + 0.2367

    elif ( num > 1 ) and (num <= 1.264):        ## RETA 04
        resposta = (num * 0.3431) + 0.4184

    elif ( num > 1.264 ) and (num <= 1.6):      ## RETA 05
        resposta = (num * 0.2068) + 0.5907

    elif ( num > 1.6 ) and (num <= 1.9401):     ## RETA 06
        resposta =(num * 0.1114) + 0.7431

    elif ( num > 1.9401 ) and (num <= 2.434):   ## RETA 07
        resposta = (num * 0.0510) + 0.8605

    elif ( num > 2.434 ) and (num <= 3):        ## RETA 08
        resposta = (num * 0.0181) + 0.9407

    elif ( num > 3 ) and (num <= 5):            ## RETA 09
        resposta = (num * 0.0024) + 0.9879

    else:
        return 1 * sinal

    return resposta * sinal

while True:
    entrada = float(input("Insira o valor: "))
    print("Resposta Tangente hiperbolica Linearizada: " + str(funTanh(entrada)))
    print("Resposta Tangente hiperbolica Math: " + str(tanh(entrada)))
