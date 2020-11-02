/*
SPECIFICATIONS
GPU Memory 1GB DDR3
Memory Interface 128-bit
Memory Bandwidth 29.0GB/s
CUDA Cores 192
Graphics APIs Shader Model 5.0, OpenGL 4.4, DirectX 11
Compute APIs CUDA, DirectCompute,OpenCL
*/

/*
Build
nvcc -o teste.out teste.cu

Teste
sudo nvprof ./teste.bin
*/

#include <cuda.h>
#include <stdio.h>
#include <string>
using namespace std;


int main(void) {
  // Estrutura
  // Tamanho
  // Dado


  string data[4][3];

  // dados
  data[0][0] = "test";
  data[1][0] = "casa";
  data[2][0] = "gato";
  data[3][0] = "foto";
  // size
  data[0][1] = "4";
  data[1][1] = "4";
  data[2][1] = "4";
  data[3][1] = "4";
  // hash sum
  data[0][2] = "4";
  data[1][2] = "4";
  data[2][2] = "4";
  data[3][2] = "4";

  string alvo = "gato";

  for(int i = 0; i < 4;i++){
    // pegando tamanho do dado ta tabela
    unsigned int sizeData = atoi(data[i][1].c_str());
    // Verificando o tamanho dos dados
    if(alvo.size() == sizeData){
      // Verificação linear dos dados
      for(int ind = 0; ind < sizeData; ){
        if(alvo.at(ind) == data[i][0].at(ind)){
          if(ind < sizeData - 1){
            printf("%s \n", data[i][0].c_str());
          }
          i++;
        } else {
          ind = sizeData;
        }
      } 
    }
  }
  return 0;
}
