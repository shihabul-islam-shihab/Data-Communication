#include <bits/stdc++.h>
using namespace std;

  int main() {
    string input;
    string flag = "flag";
    string escape = "esc";

    cout << "Enter the stuffed data to be destuffed: ";
    getline(cin, input);

    if (input.substr(0, flag.size()) == flag) {
        input = input.substr(flag.size());
    }
    if (input.substr(input.size() - flag.size()) == flag) {
        input = input.substr(0, input.size() - flag.size());
    }
    string destuffed = "";
    bool escapeFound = false;

    for (size_t i = 0; i < input.size(); i++) {

        if (escapeFound) {
            destuffed += input[i];
        }

        else if (input.substr(i, escape.size()) == escape) {
            escapeFound = true;
            i += escape.size() - 1;
        } else {
            destuffed += input[i];
        }}

    cout << "Destuffed data: " << destuffed << endl;

    return 0;
}

