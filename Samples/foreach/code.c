#include <stdio.h>

int main() {
    int arr[] = {10, 20, 30, 40, 60};
    int count = sizeof(arr) / sizeof(arr[0]);

    for (int i = 0; i < count; i++) {
        printf("%d\n", arr[i]);
    }

    return 0;
}
