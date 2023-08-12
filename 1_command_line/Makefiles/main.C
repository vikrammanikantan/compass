#include <iostream>
#include "myheader.h"

int main()
{
  std::cout << "Hello World!"<<std::endl;
  std::cout << "I am a C++ Program that adds two numbers"<<std::endl;
  double a=0,b=0, r=0;
  a=32.3;
  b=23.4;
  
  addition(a,b,r);
  
  std::cout << "Adding a,b="<< a << "," << b << " yields " << r <<std::endl;
}

