int fiboncci(int n){
    if(n<=1){ return n;}
    else{
    return fiboncci(n-1)+fiboncci(n-2);
    }
}

void main(){
    var result= fiboncci(10);

    print(result);
}