#include <iostream>
#include <math.h>
using namespace std;

int main() {
	int a = rand()%100 + 1;
	int b = rand()%10 + 1;
	
	cout << a << endl;
	cout << b << endl;
	
	int result = a+b;
	
	cout << result << endl;
	
	return 0;
}