import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

import '../util/my_color.dart';

class NewCardScreen extends StatefulWidget {
  const NewCardScreen({super.key});

  @override
  State<NewCardScreen> createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // virtual card
          const SizedBox(height: 50.0),
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(left: 10.0),
                height: 35,
                width: 35,
                //border
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: Colors.grey), // Add border color
                ),

                child: InkWell(
                  onTap: () {
                    // Handle back button press
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_outlined,
                    size: 20,
                    // Change color as needed
                  ),
                ),
              ),
              const Spacer(),
              const Text(
                'New Card',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .35,
              )
            ],
          ),
          const SizedBox(height: 10.0),
          // container foir card
          Container(
            height: 300,
            color: Colors.grey[200],
          ),
          const SizedBox(height: 15.0),
          // card detil text with text field
          Padding(
            padding: const EdgeInsets.all(10.0),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Text(
                'Card Details',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 15.0),
              // card number text field
              TextField(
                decoration: InputDecoration(
                  //round corner
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  suffixIcon: const Icon(Icons.credit_card),

                  labelText: 'Card Number',
                  labelStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none, // No underline
                  contentPadding: const EdgeInsets.all(10.0),
                  filled: true, // Optional: adds background color
                  fillColor: Colors.grey[200], // Optional: background color
                ),
              ),

              const SizedBox(
                  height: 15.0), // Add some space between the text fields
              // expiry date and cvv text field
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        labelText: 'First Field',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none, // No underline
                        contentPadding: EdgeInsets.all(10.0),
                        filled: true, // Adds background color
                        fillColor: Colors.grey[200], // Background color
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10.0), // Add some space between the text fields
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: BorderSide(color: Colors.transparent),
                        ),
                        labelText: 'Second Field',
                        labelStyle: TextStyle(color: Colors.grey),
                        border: InputBorder.none, // No underline
                        contentPadding: EdgeInsets.all(10.0),
                        filled: true, // Adds background color
                        fillColor: Colors.grey[200], // Background color
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15.0),
              // card holder text field
              TextField(
                decoration: InputDecoration(
                  //round corner
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.transparent),
                  ),
                  suffixIcon: const Icon(Icons.credit_card),

                  labelText: 'Card Holder',
                  labelStyle: const TextStyle(color: Colors.grey),
                  border: InputBorder.none, // No underline
                  contentPadding: const EdgeInsets.all(10.0),
                  filled: true, // Optional: adds background color
                  fillColor: Colors.grey[200], // Optional: background color
                ),
              ),
              const SizedBox(height: 15.0),
              CSCPicker(
                // initial country selection

                defaultCountry: CscCountry.Afghanistan,
                dropdownDecoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  color: Colors.grey[200],
                ),
                onCountryChanged: (value) {
                  setState(() {});
                },
                showCities: false,
                showStates: false,
              ),

              // button for moving to next screen

              MaterialButton(
                height: 50,
                minWidth: double.infinity,
                color: MyColor.secondaryColor,
                textColor: Colors.white,
                padding: const EdgeInsets.all(15),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {},
                child: const Text("Save"),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
