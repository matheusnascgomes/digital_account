import 'dart:convert';

import 'package:conta_digital/http/webclient.dart';
import 'package:conta_digital/models/transaction.dart';

class TransactionClient {
  Future<List<Transaction>> findTransaction() async {
    var response = await client.get(Uri.parse('$baseUrl/transaction'));
    List<dynamic> result = jsonDecode(response.body);

    return result
        .map((e) =>
            Transaction(e['id'], e['userName'], e['value'], e['createdAt']))
        .toList();
  }
}
