int main (){
    int a = 0;
    int b = 1;
    int c = 0;
    int i = 0;
    int n = 10;
    for (i = 0; i < n; i++){
        c = a + b;
        a = b;
        b = c;
    }
    return a;
}