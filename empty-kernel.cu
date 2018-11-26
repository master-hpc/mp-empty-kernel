//
// TP: Lancer un kernel vide sur le GPU
//

#include <iostream>

__global__ void emptyKernel ();

int main(int argc, char** argv) {

  cudaSetDevice(0);

  emptyKernel<<<1,1>>>();

  cudaDeviceSynchronize();
  std::cout << "Hello, CUDA!" << std::endl; 
  return 0;
}

__global__ void emptyKernel(){
  // Empty
}
