#include <stdio.h>

void enkripsi_xor(char *teks, int kunci) {
    while (*teks) {
        *teks = *teks ^ kunci;
        teks++;
    }
}

int main() {
    char kunci[20];
    char flag[20];

    char sandi_terenkripsi[] = {0x66, 0x7E, 0x68, 0x7F, 0x76, 0x78, 0x72, 0x7F, 0x7C, 0x77, 0x7D, 0x7D, 0};
    char flag_terenkripsi[] = {0x74, 0x74, 0x7A, 0x7C, 0x7F, 0x7D, 0x7D, 0x7C, 0x63, 0x63, 0x60, 0x61, 0x65, 0x7E, 0};

    printf("Masukkan kata sandi: ");
    scanf("%s", kunci);

    enkripsi_xor(sandi_terenkripsi, 0x07);
    enkripsi_xor(flag_terenkripsi, 0x07);

    if (strcmp(kunci, sandi_terenkripsi) == 0) {
        printf("Selamat! Bendera: %s\n", flag_terenkripsi);
    } else {
        printf("Kata sandi salah!\n");
    }

    return 0;
}
