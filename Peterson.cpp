#include <iostream>
#include <thread>
using namespace std;

bool flag[2];  // flag[i] = true if process i wants to enter critical section
int turn;      // indicates whose turn it is

void peterson(int id) {
    int other = 1 - id;
    for (int i = 0; i < 5; ++i) {
        // Entry section
        flag[id] = true;
        turn = other;
        while (flag[other] && turn == other);  // busy wait

        // Critical section
        cout << "Process " << id << " is in critical section.\n";

        // Exit section
        flag[id] = false;

        // Remainder section (can do other work here)
    }
}

int main() {
    flag[0] = false;
    flag[1] = false;
    turn = 0;

    thread t1(peterson, 0);
    thread t2(peterson, 1);

    t1.join();
    t2.join();

    return 0;
}