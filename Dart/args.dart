const defaultArgs = ['report.text', '--verbose'];

void main(List<String> args) {
  final effective = args.isEmpty ? defaultArgs : args;

  print(args.isEmpty ? '입력 인자 0개 -> 기본값 사용' : '입력 인자 ${args.length}개');
  print('파일: ${effective.first}');
  print('verbose: ${effective.contains('--verbose')}');
}
