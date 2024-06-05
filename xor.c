#include <stdio.h>
#include <string.h>

void enD(char *t, int k) {
    while (*t) {
        *t = *t ^ k;
        t++;
    }
}

int main() {
    char kunci[20];

    char sT[] = {0x66, 0x7E, 0x68, 0x7F, 0x76, 0x78, 0x72, 0x7F, 0x7C, 0x77, 0x7D, 0x7D, 0};
    char fT[] = {0x74, 0x74, 0x7A, 0x7C, 0x7F, 0x7D, 0x7D, 0x7C, 0x63, 0x63, 0x60, 0x61, 0x65, 0x7E, 0};

    printf("Masukkan kata sandi: ");
    scanf("%s", kunci);

    enD(sT, 0x07);
    enD(fT, 0x07);

    if (strcmp(kunci, sT) == 0) {
        printf("Selamat! Bendera: %s\n", fT);
    } else {
        printf("Kata sandi salah!\n");
    }

    return 0;
}
