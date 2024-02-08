#include <stdio.h>

// Function prototypes
void printPermutation(int p[], int size);
int flipCount(int *p, int size);

void fannkuch(int n) {
    int maxFlipsCount = 0;
    int printCount = 0;
    int permutations[6][3] = {
        {1, 2, 3}, {1, 3, 2}, {2, 1, 3},
        {2, 3, 1}, {3, 1, 2}, {3, 2, 1}
    };

    for (int i = 0; i < 6; i++) {
        int p[3];
        for (int j = 0; j < 3; j++) {
            p[j] = permutations[i][j];
        }

        int flips = flipCount(p, 3);
        if (flips > maxFlipsCount) {
            maxFlipsCount = flips;
        }
        if (printCount < 30) {
            printPermutation(p, 3);
            printCount++;
        }
    }

    printf("Max Flips: %d\n", maxFlipsCount);
}

void printPermutation(int p[], int size) {
    for (int i = 0; i < size; i++) {
        printf("%d ", p[i]);
    }
    printf("\n");
}

int flipCount(int *p, int size) {
    int flips = 0;
    while (p[0] != 1) {
        int k = p[0];
        for (int i = 0; i < k; i++) {
            if (i >= k / 2) break;
            int temp = p[i];
            p[i] = p[k - i - 1];
            p[k - i - 1] = temp;
        }
        flips++;
    }
    return flips;
}

int main() {
    fannkuch(3);
    return 0;
}
