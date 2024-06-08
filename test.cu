#include "cuda_runtime.h"
#include "device_launch_parameters.h"
#include <stdio.h>
#include <iostream>
#include <testhead.h>


int main() {

    int a[] = {1, 2, 3};
    int b[] = {4, 5, 3};
    int c[sizeof(a) / sizeof(int)] = {0};

    int* cudaA = 0;
    int* cudaB = 0;
    int* cudaC = 0;

    cudaMalloc(&cudaA, sizeof(a));
    cudaMalloc(&cudaB, sizeof(b));
    cudaMalloc(&cudaC, sizeof(c));

    cudaMemcpy(cudaA, a, sizeof(a), cudaMemcpyHostToDevice);
    cudaMemcpy(cudaB, b, sizeof(b), cudaMemcpyHostToDevice);
    
    V_Add_and_Two<<< 1, sizeof(a) / sizeof(int)>>>(cudaA, cudaB, cudaC);

    cudaMemcpy(c, cudaC, sizeof(c), cudaMemcpyDeviceToHost);
    printf("{1,2,3} + {4,5,3} = {%d,%d,%d}\n",
        c[0], c[1], c[2]);

    cudaFree(cudaA);
    cudaFree(cudaB);
    cudaFree(cudaC);

    return 0;
}