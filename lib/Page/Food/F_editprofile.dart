import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:citycart/Page/Food/Food_Bottom_navbar.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  File? _profileImage;
  File? _backgroundImage;

  Future<void> _pickImage(ImageSource source, bool isProfileImage) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      setState(() {
        if (isProfileImage) {
          _profileImage = File(pickedFile.path);
        } else {
          _backgroundImage = File(pickedFile.path);
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus(); // Unfocus any text field
        },
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
                children: [
                  _buildHeaderImage(),
                  const SizedBox(height: 130), // Space for the profile image
                  _buildProfileForm(),
                  const SizedBox(height: 20),
                  _buildSaveButton(),
                ],
              ),
              _buildProfileEditButton(context),
            ],
          ),
        ),
      ),
      bottomNavigationBar:  BottomNavigation(),
    );
  }

  Widget _buildHeaderImage() {
    return Stack(
      children: [
        _backgroundImage != null
            ? Image.file(
          _backgroundImage!,
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        )
            : Image.asset(
          'assets/images/cake.png',
          width: double.infinity,
          height: 180,
          fit: BoxFit.cover,
        ),
        Positioned(
          bottom: 10,
          right: 10,
          child: GestureDetector(
            onTap: () {
              _showImagePickerDialog(context, isProfileImage: false);
            },
            child: const Icon(Icons.edit, color: Colors.white, size: 24),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileForm() {
    final formFields = [
      _buildFormField('Name', 'Utibeobong Joseph Udoh'),
      _buildFormField('Gender', 'Male'),
      _buildFormField('Age', '25'),
      _buildFormField('Nationality', 'Delhi, India'),
      _buildFormField('Phone Number', '+91-3245112345'),
      _buildFormField('Email ID', 'xyz@gmail.com'),
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: formFields,
      ),
    );
  }

  Widget _buildFormField(String label, String initialValue) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label),
        TextFormField(
          initialValue: initialValue,
          decoration: const InputDecoration(
            suffixIcon: Icon(Icons.edit, size: 20),
          ),
        ),
        const SizedBox(height: 12),
      ],
    );
  }
  Widget _buildSaveButton() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xFF40AB32), Color(0xFF1A4514)],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: ElevatedButton(
            onPressed: () {
              // Handle save action
            },
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white, backgroundColor: Colors.transparent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 150.0, vertical: 8.0),
              shadowColor: Colors.transparent, // Remove shadow
            ),
            child: const Text('Save'),
          ),
        ),
      ),
    );
  }

  Widget _buildProfileEditButton(BuildContext context) {
    return Positioned(
      top: 100,
      left: MediaQuery.of(context).size.width / 2 - 60,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              _showImagePickerDialog(context, isProfileImage: true);
            },
            child: CircleAvatar(
              radius: 60,
              backgroundImage: _profileImage != null
                  ? FileImage(_profileImage!)
                  : const AssetImage('assets/user.png') as ImageProvider,
            ),
          ),
          const SizedBox(height: 8),
          GestureDetector(
            onTap: () {
              _showImagePickerDialog(context, isProfileImage: true);
            },
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.edit, color: Colors.green, size: 24), // Edit icon
                const SizedBox(width: 8), // Adjust spacing as needed
                const Text(
                  'Edit Profile',
                  style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }




  void _showImagePickerDialog(BuildContext context, {required bool isProfileImage}) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Select Image Source'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.camera, isProfileImage);
              },
              child: const Text('Camera'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                _pickImage(ImageSource.gallery, isProfileImage);
              },
              child: const Text('Gallery'),
            ),
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Cancel'),
            ),
          ],
        );
      },
    );
  }
}
