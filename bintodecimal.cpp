
 #include <bits/stdc++.h>
 using namespace std;



 int main() {
    string binary;

    cout << "Enter a binary number: ";
    cin >> binary;

    int decimal = 0;
    int length = binary.length();

    for (int i = 0; i < length; i++) {
        if (binary[length - 1 - i] == '1') {
            decimal += pow(2, i);
        }}

    cout << "The decimal equivalent is: " << decimal << endl;

    return 0;
  }
