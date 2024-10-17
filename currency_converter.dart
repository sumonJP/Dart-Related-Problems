import 'dart:convert';
import 'package:http/http.dart' as http;
import 'dart:io';

void main() async {
  print('Enter the amount you want to convert:');
  String? amountInput = stdin.readLineSync();
  double? amount = double.tryParse(amountInput ?? '');

  if (amount == null) {
    print('Invalid amount. Please enter a number.');
    return;
  }

  print('Enter the source currency (e.g., USD):');
  String? sourceCurrency = stdin.readLineSync()?.toUpperCase();

  print('Enter the target currency (e.g., BDT):');
  String? targetCurrency = stdin.readLineSync()?.toUpperCase();

  if (sourceCurrency != null &&
      targetCurrency != null &&
      sourceCurrency.isNotEmpty &&
      targetCurrency.isNotEmpty) {
    await convertCurrency(amount, sourceCurrency, targetCurrency);
  } else {
    print('Currency codes cannot be empty.');
  }
}

Future<void> convertCurrency(
    double amount, String source, String target) async {
  String apiKey = 'your_api_key'; // Replace with your API key
  String url = 'https://v6.exchangerate-api.com/v6/$apiKey/latest/$source';

  try {
    var response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      if (data['conversion_rates'].containsKey(target)) {
        double rate = data['conversion_rates'][target];
        double convertedAmount = amount * rate;

        print(
            '$amount $source is equivalent to ${convertedAmount.toStringAsFixed(2)} $target.');
      } else {
        print('Invalid target currency code.');
      }
    } else {
      print(
          'Failed to fetch exchange rate data. Error: ${response.statusCode}');
    }
  } catch (e) {
    print('Error fetching data: $e');
  }
}
