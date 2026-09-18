<<<<<<< HEAD
const defaultArgs = ['report.text', '--verbose'];
=======
const defaultArgs = ['report.txt', '--verbose'];
>>>>>>> 55edb8e (c)

void main(List<String> args) {
  final effective = args.isEmpty ? defaultArgs : args;

  print(args.isEmpty ? '입력 인자 0개 -> 기본값 사용' : '입력 인자 ${args.length}개');
  print('파일: ${effective.first}');
  print('verbose: ${effective.contains('--verbose')}');
<<<<<<< HEAD
}
=======
}
>>>>>>> 55edb8e (c)
