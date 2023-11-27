import 'package:cashir/components/constants/colors.dart';
import 'package:cashir/components/constants/size_constant.dart';
import 'package:flutter/material.dart';

class UserDashBoard extends StatelessWidget {
  const UserDashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        physics: const BouncingScrollPhysics(),
        child: FutureBuilder(
          builder: (context, child) {
            return const Column(
              children: [
                ProfileWidget(),
                SizedBox(height: 20),
                PriceWidget(
                  balance: "500,000",
                ),
                SizedBox(height: 20),
                Row(
                  children: [
                    Text(
                      "Transactions",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: ColorConstants.primaryColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                TransactionWidget(),
                SizedBox(height: 40),
              ],
            );
          },
        ),
      ),
    );
  }
}

class TransactionWidget extends StatelessWidget {
  const TransactionWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: SizeConstant.size.width * 0.6,
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "savings savings savings savings savings savings",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Text(
                  "20/10/2023",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
          ),
          const Text(
            "N500.00",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 18,
              color: ColorConstants.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}

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
          Row(
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
          const SizedBox(height: 5),
          Text(
            showPrice ? "*********" : "N ${widget.balance}",
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

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, bottom: 20),
      height: 150,
      width: 600,
      child: const Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundColor: ColorConstants.primaryColor,
          ),
          SizedBox(width: 20),
          Text(
            "Hi user\n welcome let us make some payment",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 14,
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
