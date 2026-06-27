#include <bits/stdc++.h>
using namespace std;

int main() {
    int decimal;

    cout << "Enter a decimal number: ";
    cin >> decimal;

    string binary = "";

    if (decimal == 0) {
        binary =  "0";
    }

    while (decimal > 0) {
        binary = to_string(decimal % 2) + binary;
        decimal /= 2;
    }
    cout << "The binary equivalent is: " << binary << endl;

    return 0;
}

