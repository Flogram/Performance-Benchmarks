#include <stdio.h>
#include <stdlib.h>
#include <string.h>

// Function to calculate the reverse complement of a DNA sequence
char* reverse_complement(const char* sequence) {
    size_t len = strlen(sequence);
    char* rev_comp = (char*)malloc(len + 1); // +1 for the null terminator

    if (rev_comp == NULL) {
        perror("Failed to allocate memory");
        exit(EXIT_FAILURE);
    }

    for (size_t i = 0; i < len; i++) {
        switch (sequence[i]) {
            case 'A': rev_comp[len - 1 - i] = 'T'; break;
            case 'T': rev_comp[len - 1 - i] = 'A'; break;
            case 'C': rev_comp[len - 1 - i] = 'G'; break;
            case 'G': rev_comp[len - 1 - i] = 'C'; break;
            default: 
                printf("Invalid character in sequence: %c\n", sequence[i]);
                free(rev_comp);
                exit(EXIT_FAILURE);
        }
    }
    rev_comp[len] = '\0'; // Null-terminate the string
    return rev_comp;
}

int main(int argc, char **argv) {
    if (argc != 2) {
        fprintf(stderr, "Usage: %s <DNA sequence>\n", argv[0]);
        exit(EXIT_FAILURE);
    }

    char* rev_comp = reverse_complement(argv[1]);
    printf("Reverse complement: %s\n", rev_comp);

    free(rev_comp); // Don't forget to free the allocated memory!

    return EXIT_SUCCESS;
}
