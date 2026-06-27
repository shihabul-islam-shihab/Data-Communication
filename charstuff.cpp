#include <bits/stdc++.h>
using namespace std;

int main() {
    string input;
    string flag = "flag";
    string esc = "esc";

    cout << "Enter the data to be transmitted: ";
    getline(cin, input);

    string stuffed = "";

    for (size_t i = 0; i < input.size(); i++) {
        if (input.substr(i, flag.size()) == flag) {
            stuffed += esc;
            stuffed += input.substr(i, flag.size());
            i += flag.size() - 1;
        } else if (input.substr(i, esc.size()) == esc) {
            stuffed += esc;
            stuffed += input.substr(i, esc.size());
        } else {
            stuffed += input[i];
        }}
    stuffed = flag + stuffed + flag;

    cout << "Stuffed and framed data: " << stuffed << endl;
    return 0;
}



