#include <iostream>

extern int setBit(int a, int b){
return a | (1 << b);
};

extern int clearBit(int a, int b){
return a & ((1 << b)^0xFFFFFFFF);
};

extern int flip(int a, int b){
return a ^ (1 << b);
};

extern int replaceBits(int a, int b, int c){
  return (a & b) | c;
};

extern int buildColor(int r, int g, int b){
int color = 0x00000000;
color = color | (r << 16);
color = color | (g << 8);
color = color | b;
return color;
};

extern double choose(int a, int b){
    double num = 1;
    double numFactor = a;
    double dem = 1;
    for (int i = 1; i <= b; i++) {
        num *= numFactor;
        numFactor--;
        dem *= i;
 }
    return num/dem;
};