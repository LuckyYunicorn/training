// import 'dart:isolate';
//
// void heavyTask(SendPort sendPort) {
//   int sum = 0;
//   for (int i = 0; i < 10000000; i++) {
//     sum += i;
//   }
//   sendPort.send(sum); // result bhejte hain
// }
//
// void main() async {
//   ReceivePort receivePort = ReceivePort(); // communication channel
//
//   await Isolate.spawn(heavyTask, receivePort.sendPort);
//
//   var result = await receivePort.first; // result wait karo
//   print("Sum: $result");
// }

import 'dart:isolate';

void heavyTask(SendPort sendPort){
  int count = 0;
  for(int i=0; i<9999999999; i++){
    count+=10;
  }
  sendPort.send(count);
}

void main()async{
  ReceivePort receivePort = ReceivePort();
  await Isolate.spawn(heavyTask, receivePort.sendPort);
  var val = await receivePort.first;
  print(val);
}