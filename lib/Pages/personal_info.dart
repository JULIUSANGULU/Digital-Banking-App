import 'package:digital_banking_app/Components/button_lg.dart';
import 'package:digital_banking_app/Components/header_one.dart';
import 'package:digital_banking_app/Components/inputfield.dart';
import 'package:digital_banking_app/Components/inputfield_dropdown.dart';
import 'package:digital_banking_app/Components/progressbar.dart';
import 'package:digital_banking_app/Components/subheader_text.dart';
import 'package:digital_banking_app/Routes/routers.dart';
import 'package:digital_banking_app/blocs/auth_bloc/auth_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  String selectedNationality = "Select your nationality";
  String selectedAccountType = "Personal"; // Default to Personal account

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>?;

    if (args != null && args.containsKey("accountType")) {
      setState(() {
        selectedAccountType = args["accountType"] ?? "Personal";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is AuthAuthenticated) {
          Navigator.pushReplacementNamed(context, '/home');
        } else if (state is AuthError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(state.message)),
          );
        }
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(0, 70, 0, 0),
                child: StepProgressIndicator(
                  totalSteps: 5,
                  currentStep: 0,
                ),
              ),
              const SizedBox(height: 20),
              const HeaderOne(
                header: 'Tell Us About Yourself',
                textcolor: Color(0xFF979797),
              ),
              const SubheaderText(
                text: 'We need a few details to set up your account.',
                textcolor: Color(0xFF212121),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Inputfield(
                      label: 'First Name',
                      placeholder:
                          'Enter your first name as it appears on your ID',
                      controller: nameController,
                    ),
                    const SizedBox(height: 10),
                    Inputfield(
                      label: 'Last Name',
                      placeholder:
                          'Enter your Last name as it appears on your ID',
                      controller: lastNameController,
                    ),
                    const SizedBox(height: 10),
                    Inputfield(
                      label: 'Email Address',
                      placeholder: 'youremail@example.com',
                      controller: emailController,
                    ),
                    const SizedBox(height: 10),
                    InputfieldDropdown(
                      label: 'Nationality',
                      placeholder: 'Select your country',
                      options: [
                        DropdownItem(
                          svgPath: 'assets/icons/personal.svg',
                          text: 'Afghanistan',
                          id: '1',
                        ),
                        DropdownItem(
                          svgPath: 'assets/images/Nigeria.svg',
                          text: 'Nigeria',
                          id: '2',
                        ),
                      ],
                      onChanged: (DropdownItem? selected) {
                        if (selected != null) {
                          setState(() {
                            selectedNationality = selected.text;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    Inputfield(
                      label: 'Phone Number',
                      placeholder: '+234 901 744 6760',
                      controller: phoneController,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 44),
              GestureDetector(
                onTap: () {
                  BlocProvider.of<AuthBloc>(context).add(AuthSignUpRequested(
                    name: nameController.text.trim(),
                    username:
                        "${nameController.text.trim()}${lastNameController.text.trim()}",
                    email: emailController.text.trim(),
                    password: "temporaryPassword",
                    accountType: selectedAccountType,
                  ));

                  Navigator.pushNamed(context, AppRoutes.verifyyouridentity);
                },
                child: const ButtonLg(
                  name: 'Proceed',
                  color: Color(0xFF1976D2),
                  textColor: Color(0xFFF5F5F5),
                ),
              ),
              const SizedBox(height: 16),
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const ButtonLg(
                  name: 'Go back',
                  color: Color(0xFFF5F5F5),
                  textColor: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
