import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/constants/size_constant.dart';
import 'package:cashir/models/transaction.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    required this.transaction,
    super.key,
  });
  final TransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeConstant.size.width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.desc ?? "",
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  transaction.date ?? "",
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "N${transaction.amount}",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: transaction.type == "debit"
                  ? Colors.red
                  : ColorConstants.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
