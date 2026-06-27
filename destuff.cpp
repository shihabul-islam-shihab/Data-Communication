#include <bits/stdc++.h>
using namespace std;

int main() {
    string stuffedInput;

    cout << "Enter a stuffed bit sequence: ";
    cin >> stuffedInput;

    string input=stuffedInput;

    int c = 0;
    for (int i = 0; i < input.size(); i++) {
        if (input[i] == '1') {
            c++;}

        if (c == 5) {
            input.erase(i + 1, 1);
            c = 0;
        }}
    cout << endl;
    cout << "Destuffed bit sequence: " << input << endl;

    return 0;
}



