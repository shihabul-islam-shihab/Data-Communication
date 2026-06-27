#include <bits/stdc++.h>
using namespace std;
int main()
{
    string input;
    cout << "Enter a bit sequence: ";
    cin >> input;

    int c = 0;
    for (int i = 0; i < input.size(); i++) {
        if (input[i] == '1') {
            c++;}

        if (c == 5) {
            input.insert(i + 1, "0");
            c = 0; i++;
        }
    }

    string framedOutput = "01111110 " + input + " 01111110";
    cout<<"final stuffed: "<< input<<endl;
    cout << "Stuffed and framed bit sequence: " << framedOutput << endl;

    return 0;
}
