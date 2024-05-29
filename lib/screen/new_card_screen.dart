import 'package:co_payment_niyo/screen/activity_screen.dart';
import 'package:co_payment_niyo/screen/custom_bottom_bar.dart';
import 'package:co_payment_niyo/widget/half_circle.dart';
import 'package:country_picker/country_picker.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';

import '../util/my_color.dart';

List<List<Color>> cardColor = [
  [MyColor.secondaryColor, MyColor.mainColor],
  [Colors.blue, Colors.green],
  [Colors.red, Colors.yellow],
];

class NewCardScreen extends StatefulWidget {
  const NewCardScreen({super.key});

  @override
  State<NewCardScreen> createState() => _NewCardScreenState();
}

class _NewCardScreenState extends State<NewCardScreen> {
  int selectedCard = 0;
  String countryValue = 'Select Country';
  String countryFlag = '🇺🇸';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  width: MediaQuery.of(context).size.width * .42,
                )
              ],
            ),
            const SizedBox(height: 10.0),
            // container for card
            Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: height * .38,
                  color: Colors.grey[200],
                ),
                // main card
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    width: MediaQuery.of(context).size.width * .9,
                    height: height * .25,
                    child: CreditCard(
                      selectedCard: selectedCard,
                    ),
                  ),
                ),
                // colors choice
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    margin: const EdgeInsets.only(top: 70.0),
                    height: 170,
                    width: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCard = 0;
                            });
                          },
                          child: HalfFilledCircle(
                            // Add HalfFilledCircle
                            firstColor: MyColor.secondaryColor,
                            secondColor: MyColor.mainColor,
                            isSelectd: selectedCard == 0,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCard = 1;
                            });
                          },
                          child: HalfFilledCircle(
                            firstColor: Colors.blue,
                            secondColor: Colors.green,
                            isSelectd: selectedCard == 1,
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              selectedCard = 2;
                            });
                          },
                          child: HalfFilledCircle(
                            firstColor: Colors.red,
                            secondColor: Colors.yellow,
                            isSelectd: selectedCard == 2,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15.0),
            // card detil text with text field
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Card Details',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 15.0),
                    // card number text field
                    TextField(
                      decoration: InputDecoration(
                        //round corner
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        suffixIcon: const Icon(Icons.credit_card),

                        labelText: 'Card Number',
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: InputBorder.none, // No underline
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true, // Optional: adds background color
                        fillColor:
                            Colors.grey[200], // Optional: background color
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
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              labelText: 'Expire Date',
                              labelStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none, // No underline
                              contentPadding: EdgeInsets.all(10.0),
                              filled: true, // Adds background color
                              fillColor: Colors.grey[200], // Background color
                            ),
                          ),
                        ),
                        const SizedBox(
                            width:
                                10.0), // Add some space between the text fields
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
                                borderSide:
                                    BorderSide(color: Colors.transparent),
                              ),
                              labelText: 'CVV',
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
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide:
                              const BorderSide(color: Colors.transparent),
                        ),

                        labelText: 'Card Holder',
                        labelStyle: const TextStyle(color: Colors.grey),
                        border: InputBorder.none, // No underline
                        contentPadding: const EdgeInsets.all(10.0),
                        filled: true, // Optional: adds background color
                        fillColor:
                            Colors.grey[200], // Optional: background color
                      ),
                    ),
                    const SizedBox(height: 15.0),
                    // for  showing the country
                    InkWell(
                      onTap: () {
                        showCountryPicker(
                          context: context,
                          showPhoneCode:
                              false, // optional. Shows phone code before the country name.
                          onSelect: (Country country) {
                            setState(() {
                              countryValue = country.name;
                              countryFlag = country.flagEmoji;
                            });
                            print('Select country: ${country.flagEmoji}');
                          },
                        );
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              const Icon(Icons.location_on_outlined),
                              const SizedBox(width: 10.0),
                              Text(countryValue),
                              const Spacer(),
                              const Icon(Icons.keyboard_arrow_down_outlined),
                            ],
                          ),
                        ),
                      ),
                      // child: TextField(
                      //   readOnly: true,
                      //   decoration: InputDecoration(
                      //     //round corner
                      //     enabledBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       borderSide: const BorderSide(color: Colors.transparent),
                      //     ),
                      //     focusedBorder: OutlineInputBorder(
                      //       borderRadius: BorderRadius.circular(10.0),
                      //       borderSide: const BorderSide(color: Colors.transparent),
                      //     ),
                      //     suffixIcon: const Icon(Icons.keyboard_arrow_down_outlined),

                      //     labelText: 'Card Number',
                      //     labelStyle: const TextStyle(color: Colors.grey),
                      //     border: InputBorder.none, // No underline
                      //     contentPadding: const EdgeInsets.all(10.0),
                      //     filled: true, // Optional: adds background color
                      //     fillColor: Colors.grey[200], // Optional: background color
                      //   ),
                      // ),
                    ),

                    // CSCPicker(
                    //   // initial country selection

                    //   defaultCountry: CscCountry.Afghanistan,
                    //   dropdownDecoration: BoxDecoration(
                    //     borderRadius:
                    //         const BorderRadius.all(Radius.circular(10)),
                    //     color: Colors.grey[200],
                    //   ),
                    //   onCountryChanged: (value) async {
                    //     setState(() {
                    //       print(value);

                    //     });
                    //   },
                    //   showCities: false,
                    //   showStates: false,
                    // ),
                    const SizedBox(
                      height: 15.0,
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
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                const CustomBottomNavigationBar(),
                          ),
                        );
                      },
                      child: const Text("Save"),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}

class CreditCard extends StatelessWidget {
  final int selectedCard;
  const CreditCard({
    required this.selectedCard,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 7,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              color: cardColor[selectedCard][0],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.credit_card,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10.0,
                        ),
                        // rotatte the icon to 90 degree
                        Transform.rotate(
                          angle: 1.5708,
                          child: const Icon(
                            Icons.wifi_outlined,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Text(
                      '0000 0000 0000 0000',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(10.0),
                bottomRight: Radius.circular(10.0),
              ),
              color: cardColor[selectedCard][1],
            ),
            child: Row(
              children: [
                const SizedBox(width: 20.0),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Your Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '00/00',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.only(right: 40.0),
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Icon(
                    Icons.credit_card,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
