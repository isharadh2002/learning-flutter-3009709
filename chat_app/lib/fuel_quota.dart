import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class VehicleOwnerPage extends StatefulWidget {
  @override
  _VehicleOwnerPageState createState() => _VehicleOwnerPageState();
}

class _VehicleOwnerPageState extends State<VehicleOwnerPage> {
  TextEditingController _fuelController = TextEditingController();
  double _remainingFuelQuota = 40.0; // Weekly allowed quota
  double _pumpedFuel = 0.0;

  void _updateFuelQuota() {
    setState(() {
      double enteredFuel = double.tryParse(_fuelController.text) ?? 0.0;
      _pumpedFuel = enteredFuel;
      _remainingFuelQuota = (_remainingFuelQuota - enteredFuel).clamp(0.0, 50.0);
      _fuelController.clear();
    });
  }

  @override
  Widget build(BuildContext context) {
    double percentageRemaining = (_remainingFuelQuota / 50.0);

    return Scaffold(
      backgroundColor: Color(0xFFEAF4EC), // green-50
      appBar: AppBar(
        title: Text(
          "Vehicle Owner Information",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xFF2D7D56), // green-600
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            color: Colors.white,
            elevation: 4,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Owner Information
                  Text(
                    'John Doe',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1F4C27), // green-800
                    ),
                  ),
                  Text(
                    'johndoe@example.com',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF4C9143), // green-300
                    ),
                  ),
                  Divider(thickness: 1, height: 24, color: Color(0xFF4C9143)),

                  Text(
                    'Honda Accord - ABC-1234',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF4C9143),
                    ),
                  ),

                  SizedBox(height: 24),

                  // Circular Progress Indicator
                  CircularPercentIndicator(
                    radius: 100.0,
                    lineWidth: 12.0,
                    percent: percentageRemaining,
                    center: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "${_remainingFuelQuota.toStringAsFixed(1)} L",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D7D56), // green-600
                          ),
                        ),
                        Text(
                          "Remaining",
                          style: TextStyle(
                            fontSize: 14,
                            color: Color(0xFF4C9143), // green-300
                          ),
                        ),
                      ],
                    ),
                    progressColor: Color(0xFF2D7D56), // green-600
                    backgroundColor: Color(0xFFD1E7D3), // green-100
                    circularStrokeCap: CircularStrokeCap.round,
                  ),

                  SizedBox(height: 24),

                  // Fuel Input
                  TextField(
                    controller: _fuelController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: 'Enter Pumped Fuel (L)',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      filled: true,
                      fillColor: Color(0xFFEAF4EC), // green-50
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xFF2D7D56)), // green-600
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),

                  // Update Button
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: _updateFuelQuota,
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF2D7D56), // green-600
                        padding: EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Text(
                        'Update Fuel Quota',
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
