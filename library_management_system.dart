import 'dart:io';
import 'dart:convert';

// Book class
class Book {
  String title;
  String author;
  String isbn;
  int publishedYear;

  Book(this.title, this.author, this.isbn, this.publishedYear);

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'isbn': isbn,
      'publishedYear': publishedYear,
    };
  }

  @override
  String toString() {
    return 'Title: $title, Author: $author, ISBN: $isbn, Published Year: $publishedYear';
  }
}

// Library class
class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
    print('Book added: ${book.title}');
  }

  void viewBooks() {
    if (books.isEmpty) {
      print('No books available.');
    } else {
      print('Books in the library:');
      for (var book in books) {
        print(book);
      }
    }
  }

  void searchBook(String query) {
    var foundBooks = books
        .where((book) =>
            book.title.toLowerCase().contains(query.toLowerCase()) ||
            book.author.toLowerCase().contains(query.toLowerCase()))
        .toList();

    if (foundBooks.isEmpty) {
      print('No books found for query: $query');
    } else {
      print('Found books:');
      for (var book in foundBooks) {
        print(book);
      }
    }
  }

  void deleteBook(String isbn) {
    books.removeWhere((book) => book.isbn == isbn);
    print('Book with ISBN $isbn deleted.');
  }

  void saveToFile(String filePath) {
    var jsonBooks = jsonEncode(books.map((book) => book.toJson()).toList());
    File(filePath).writeAsStringSync(jsonBooks);
    print('Books saved to $filePath');
  }

  void loadFromFile(String filePath) {
    if (File(filePath).existsSync()) {
      var jsonData = File(filePath).readAsStringSync();
      var decodedData = jsonDecode(jsonData) as List;
      books = decodedData
          .map((data) => Book(data['title'], data['author'], data['isbn'],
              data['publishedYear']))
          .toList();
      print('Books loaded from $filePath');
    } else {
      print('File not found: $filePath');
    }
  }
}

// Main function
void main() {
  Library library = Library();
  String filePath = 'books.json';

  // Load books from file
  library.loadFromFile(filePath);

  while (true) {
    print('\nLibrary Management System');
    print('1. Add Book');
    print('2. View All Books');
    print('3. Search Book');
    print('4. Delete Book');
    print('5. Save Books to File');
    print('6. Exit');
    stdout.write('Choose an option: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter title: ');
        String title = stdin.readLineSync()!;
        stdout.write('Enter author: ');
        String author = stdin.readLineSync()!;
        stdout.write('Enter ISBN: ');
        String isbn = stdin.readLineSync()!;
        stdout.write('Enter published year: ');
        int publishedYear = int.parse(stdin.readLineSync()!);
        library.addBook(Book(title, author, isbn, publishedYear));
        break;
      case '2':
        library.viewBooks();
        break;
      case '3':
        stdout.write('Enter title or author to search: ');
        String query = stdin.readLineSync()!;
        library.searchBook(query);
        break;
      case '4':
        stdout.write('Enter ISBN of the book to delete: ');
        String isbnToDelete = stdin.readLineSync()!;
        library.deleteBook(isbnToDelete);
        break;
      case '5':
        library.saveToFile(filePath);
        break;
      case '6':
        print('Exiting...');
        return;
      default:
        print('Invalid option, please try again.');
    }
  }
}
