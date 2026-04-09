
const version = '0.0.1';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help'){
    printUsage();
  }else if (arguments.first == 'version'){
    print('cli version is $version');
  } else {
    printUsage();
  }
}

void printUsage(){
  print("the following comand are valid: 'help', 'version', 'search'");
}