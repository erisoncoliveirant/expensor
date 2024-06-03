import 'package:flutter/material.dart';

class AccountButton extends StatelessWidget {
  final String text;
  final bool loading;
  final VoidCallback onTap;
  final String? tag;
  const AccountButton({super.key, required this.text, required this.loading, required this.onTap,this.tag});

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag?? "TAG",
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 45,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.blue,
          ),
          child: loading ? const SizedBox(
            height: 15,
            width: 15,
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          ) : Material(
            color: Colors.transparent,
            child: Text(
              text,
              style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold
              ),
            ),
          ),
        ),
      ),
    );
  }
}
