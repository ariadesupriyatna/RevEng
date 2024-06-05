#include <stdio.h>
 
int main() {
    char password[] = "p@ssw0rd";
    char input[20];
 
    printf("Masukkan password: ");
    scanf("%s", input);
 
    if(strcmp(input, password) == 0) {
        printf("Password benar!\n");
    } else {
        printf("Password salah!\n");
    }
 
    return 0;
}
