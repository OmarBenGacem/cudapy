#pragma once

__global__ void Vmult(int* a, int* b, int* c){
    int i = threadIdx.x;
    c[i] = a[i] * b[i];
    return;
}

__global__ void V_Add_and_Two(int* a, int* b, int* c){
    int i = threadIdx.x;
    c[i] = a[i] + b[i] + 2;
    return;
}