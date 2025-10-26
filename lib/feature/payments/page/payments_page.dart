import 'package:flutter/material.dart';
import 'package:sagmal_mobil/feature/payments/widgets/build_customer_list.dart';
import 'package:sagmal_mobil/feature/payments/widgets/build_filter_chips.dart';
import 'package:sagmal_mobil/feature/payments/widgets/build_header_cards.dart';


const Color primaryBlue = Color(0xFF1565C0);   
const Color lightBlue = Color(0xFF42A5F5);    
const Color colorRed = Color(0xFFE57373);     
const Color colorYellow = Color(0xFFFFCC80);  
const Color colorGreen = Color(0xFF81C784);   
const Color textPrimary = Color(0xFF212121);
const Color textSecondary = Color(0xFF757575);
const Color cardBackground = Colors.white;

class PaymentsPage extends StatelessWidget {
  const PaymentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      body: Column(
        children: [
         
          buildHeaderCards(context),

         
          buildFilterChips(),

         
          Expanded(
            child: buildCustomerList(),
          ),
        ],
      ),
    );
  }

 

  
 

}

class CustomerTile extends StatelessWidget {
  final String name;
  final String lastTransaction;
  final String amount;
  final String status;
  final Color statusColor;
  final Color amountColor;

  const CustomerTile({super.key, 
    required this.name,
    required this.lastTransaction,
    required this.amount,
    required this.status,
    required this.statusColor,
    required this.amountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      elevation: 1,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: textPrimary),
        ),
        subtitle: Text(
          'Son işlem: $lastTransaction',
          style: const TextStyle(fontSize: 13, color: textSecondary),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '₺ $amount',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 18,
                    color: amountColor,
                  ),
                ),
                const SizedBox(height: 4),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: statusColor.withValues(alpha: .15),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(width: 8),
           
            const Icon(Icons.add_circle_outline, color: primaryBlue),
          ],
        ),
        onTap: () {
         
        },
      ),
    );
  }
}