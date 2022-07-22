// ignore_for_file: file_names

class User {
  String name;
  String email;
  String mobileNo;
  String address;
  String password;
  User(
      {required this.name,
      required this.email,
      required this.mobileNo,
      required this.address,
      required this.password});
  String getName() {
    return name;
  }

  String getEmail() {
    return email;
  }

  String getMobileNo() {
    return mobileNo;
  }

  String getAddress() {
    return address;
  }

  String getPassword() {
    return password;
  }

  void setName(String name) {
    this.name = name;
  }

  void setEmail(String email) {
    this.email = email;
  }

  void setMobileNo(String mobileNo) {
    this.mobileNo = mobileNo;
  }

  void setAddress(String address) {
    this.address = address;
  }

  void setPassword(String password) {
    this.password = password;
  }
}
