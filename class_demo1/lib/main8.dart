 void main(){
 calculateInterest(5000, 10, 1);

 print(calculateCircleArea(5.0));
 print(calculateRectangleArea(3.0, 4.0));
}
 // 간단한 이자를 계산하는 함수 만들어 보기
 // interest - 이자
 // 원금, 이자율, 기간
 // 이자 = 원금 * 이자율 * 시간
void calculateInterest(double principal, double rate, double year) {
  double interest = (principal * rate * year) / 100; //
  print("간단한 이자 계산 금액은 ${interest}입니다.");

}
// 원의 면적
double calculateCircleArea(double radius){
  return 3.14 * radius * radius;
}

// 직사각형의 면적
double calculateRectangleArea(double width, double height){
  return width * height;
}
