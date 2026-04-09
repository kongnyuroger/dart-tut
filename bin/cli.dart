import 'dart:io';

const version = '0.0.1';
void main(List<String> arguments) {
  if (arguments.isEmpty || arguments.first == 'help'){
    printUsage();
  }else if (arguments.first == 'version'){
    print('cli version is $version');
  }else if (arguments.first == 'search'){
    final inputArgs= arguments.length > 1 ? arguments.sublist(1) :<String>[];
    searchWikipidia(inputArgs);
    }
    else {
    printUsage();
  }
}

void searchWikipidia(List<String> arguments){ 
       final String articleTitle;


  if (arguments.isEmpty) {
    print('Please provide an article title.');
    // Await input and provide a default empty string if the input is null.
    articleTitle = stdin.readLineSync() ?? '';
  } else {
    // Otherwise, join the arguments into a single string.
    articleTitle = arguments.join(' ');
  }

  print ('looking for an article about $articleTitle, please wait');
  print('here you go ');
  print('pretend this is and article about $articleTitle. enjoy;');
}

void printUsage(){
  print("the following comand are valid: 'help', 'version', 'search <ARTICLE-TITLE>'");
}