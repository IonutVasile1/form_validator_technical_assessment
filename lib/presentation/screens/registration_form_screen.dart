import 'package:flutter/material.dart';
import 'package:form_validator_technical_assessment/core/utils/validators.dart';
import 'package:form_validator_technical_assessment/presentation/widgets/custom_text_field.dart';
import 'package:form_validator_technical_assessment/presentation/widgets/form_submit_button.dart';

class RegistrationFormScreen extends StatefulWidget {
  const RegistrationFormScreen({super.key});

  @override
  _RegistrationFormScreenState createState() => _RegistrationFormScreenState();
}

class _RegistrationFormScreenState extends State<RegistrationFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              CustomTextField(
                controller: _firstNameController,
                label: 'First name',
                validator: Validators.validateFirstName,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _lastNameController,
                label: 'Last name',
                validator: Validators.validateLastName,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _emailController,
                label: 'Email',
                validator: Validators.validateEmail,
              ),
              const SizedBox(height: 16),
              CustomTextField(
                controller: _passwordController,
                label: 'Password',
                validator: Validators.validatePassword,
                obscureText: true,
              ),
              const SizedBox(height: 24),
              FormSubmitButton(
                onPressed: _handleSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _handleSubmit() async {
    // Uncomment the line below to simulate a delay
    // await Future.delayed(const Duration(seconds: 2));

    // Validate form
    final isValid = _formKey.currentState?.validate() ?? false;

    if (isValid) {
      // remove focus
      FocusScope.of(context).unfocus();
      // clear form
      _formKey.currentState?.reset();
      // show confirmation snackbar
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Form submitted'),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
        ),
      );
    }
  }
}
