import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/constants/size_constant.dart';
import 'package:flutter/material.dart';

class PriceWidget extends StatefulWidget {
  const PriceWidget({
    this.balance = "",
    super.key,
  });
  final String balance;

  @override
  State<PriceWidget> createState() => _PriceWidgetState();
}

class _PriceWidgetState extends State<PriceWidget> {
  bool showPrice = true;
  toggleshowPrice() {
    showPrice = !showPrice;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConstant.size.width * 0.9,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: ColorConstants.primaryColor,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Balance",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    toggleshowPrice();
                  },
                  icon: Icon(
                    !showPrice ? Icons.visibility_off : Icons.visibility,
                    color: Colors.white,
                    size: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Text(
            showPrice ? "*********" : "N${widget.balance}",
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
