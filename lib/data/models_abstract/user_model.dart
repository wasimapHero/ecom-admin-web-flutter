// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:web_by_flutter_ecom_admin/utils/constants/enums.dart';
import 'package:web_by_flutter_ecom_admin/utils/formatters/formatter.dart';

class UserModel {

  final String? id;
  String firstName;
  String lastName;
  String userName;
  String email;
  String phoneNumber;
  String profilePicture;
  AppRole role;
  DateTime? createdAt;
  DateTime? updatedAt;

  //  Constructor of UserModel
  UserModel({
    this.id,
     this.firstName ='',
     this.lastName ='',
     this.userName ='',
    required this.email,
     this.phoneNumber ='',
     this.profilePicture ='',
     this.role = AppRole.user,
    this.createdAt,
    this.updatedAt,
  });


  /// Helper methods
   String get fullName => '$firstName $lastName';
   String get formattedCreatedAtDate => TFormatter.formatDate(createdAt);
   String get formattedUpdatedAtDate => TFormatter.formatDate(updatedAt);
   String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);

   // create a empty() function of UserModel
   static UserModel empty() => UserModel(email: '');

   /// Convert model to JSON structure for storing data in Firebase
   Map<String, dynamic> toJson() {
    return {
      'FirstName' : firstName,
      'LastName' : lastName,
      'UserName' : userName,
      'Email' : email,
      'PhoneNumber' : phoneNumber,
      'ProfilePicture' : profilePicture,
      'Role' : role.name.toString(),
      'CreatedAt' : createdAt,
      'UpdatedAt' : updatedAt,
    };
   }

   /// Factory UserModel methods to return data(coming from Firebase database in Json)
   factory UserModel.fromSnapshot(DocumentSnapshot<Map<String, dynamic>> document ) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firstName: data.containsKey('FirstName') ? data['FirstName'] : '' ?? '',
        lastName: data.containsKey('LastName') ? data['LastName'] : '' ?? '',
        userName: data.containsKey('UserName') ? data['UserName'] : '' ?? '',
        email: data.containsKey('Email') ? data['Email'] : '' ?? '',
        phoneNumber: data.containsKey('PhoneNumber') ? data['PhoneNumber'] : '' ?? '',
        profilePicture: data.containsKey('ProfilePicture') ? data['ProfilePicture'] : '' ?? '',
        role: data.containsKey('Role') 
              ? // ekhane bujhacche:
                  // Role key thakleo, 
                 // data['Role'] faka thakle,     // data['Role'] faka na thakle
                                                  // check value AppRole.admin  /holey user er value = /AppRole.admin na holey user er value =
              (  (data['Role'] ?? AppRole.user) == AppRole.admin.name.toString() ? AppRole.admin : AppRole.user  ) 
              :  // Role key thakley  user er value =
              AppRole.user, 

        createdAt: data.containsKey('CreatedAt') ? data['CreatedAt']?.toDate() ?? DateTime.now() : DateTime.now(),
        updatedAt: data.containsKey('UpdatedAt') ? data['UpdatedAt'] ?.toDate() ?? DateTime.now() : DateTime.now(),
        );
    } else {
      return empty();
    }
   } 
}


