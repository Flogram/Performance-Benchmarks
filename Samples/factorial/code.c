int factorial(int a){
    if (a == 0){
        return 1;
    }
    return a * factorial(a - 1);
}

int main(){
    int n = 20;
    return factorial(n);
}