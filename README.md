# 📱 School Management Mobile App (Flutter + Firebase)

This mobile application enhances the existing ASP.NET-based School Management ERP by offering a user-friendly mobile interface for **teachers** and **parents**. Built with **Flutter** and integrated with **Firebase**, it facilitates real-time communication, assignment management, attendance tracking, fee management, and more.

## 🚀 Features

### 👨‍🏫 Teacher Module
- **Teacher Login** – Secure authentication using Firebase Auth.
- **Profile Management** – View personal and class details.
- **Attendance Management**
  - Mark daily attendance.
  - Submit or save as draft.
  - Auto-notify parents of absentees.
  - Generate attendance reports.
- **Assignment Management**
  - Upload assignments with due dates.
  - Track student submissions.
- **Gate Pass** – Issue and manage student gate passes.
- **Bulk SMS** – Send SMS to selected groups using templates or custom messages.

### 👨‍👩‍👧 Parent Module
- **Parent Login** – Secure login with Firebase Auth.
- **Student Profile** – View student data, emergency contacts, and medical info.
- **Attendance Tracking**
  - Real-time view of current day’s attendance.
  - Monthly/yearly reports.
- **Fee Management**
  - View due and paid fees.
  - Pay fees via integrated Razorpay gateway.
  - Download fee receipts.
- **Assignment Upload** – View and submit student assignments.
- **Timetable** – Access weekly schedules.
- **Examination Module**
  - Check exam schedules and results.
  - Download result PDFs.

### 🔔 Notifications
- SMS/Email/Push notifications for:
  - Attendance updates
  - Assignments
  - Fees
  - Exams and results

### 🔧 Admin Panel
- Manage app configurations and user data.
- Control access via roles and permissions.

## 🛠 Tech Stack

- **Frontend**: Flutter (Dart)
- **Backend**: Firebase (Auth, Firestore, Cloud Functions, Storage)
- **Integration**: Razorpay (Payment Gateway)
- **Notifications**: Firebase Cloud Messaging (FCM) / Twilio / SMS Gateway

## 🔐 Security
- Role-based access control.
- Encrypted data transmission and storage.
- Firebase Authentication for user verification.

## 🔗 Integration with ASP.NET ERP
- REST APIs are used to sync data with the school’s existing ERP (attendance, profiles, assignments, fee data, etc.).

## 📱 Platform Support
- Android
- iOS

## 📂 Project Structure
![Side menu bar](https://github.com/user-attachments/assets/8e8914ae-3c4e-4d0e-abb2-7c3590450346)
![OTP](https://github.com/user-attachments/assets/00e12fb4-3bd0-417c-bc85-84d75af5e7a5)
![Notifications Page](https://github.com/user-attachments/assets/306649eb-b4c5-4582-9c2b-9f89060707db)
![Fee Structure](https://github.com/user-attachments/assets/04937f74-258f-471c-9239-64b6d3b13012)
![Fee Details](https://github.com/user-attachments/assets/289f79f8-ac23-4184-a22a-e09f9b68da5c)
![Dashboard](https://github.com/user-attachments/assets/78de4f8e-a6d2-4b66-98e9-c0413f5bc3c7)
![Attendance _Year](https://github.com/user-attachments/assets/6f41b1a8-a589-4b5a-9561-ca6ecc829973)
![Attendance _month](https://github.com/user-attachments/assets/46028724-e1c6-4632-928f-434733afb057)
![Assignment Online Recent](https://github.com/user-attachments/assets/a0f771b0-50d2-4dc8-b375-4712ae801f80)
![Assignment Online Current](https://github.com/user-attachments/assets/ff893160-74c0-4e03-b3ac-53648ae80d19)
![Assignment Online Current  Upload](https://github.com/user-attachments/assets/fe70acab-d3ed-47fd-859f-3b4ea64abd33)
![Assignment offline Current-1](https://github.com/user-attachments/assets/1f876d5d-8464-42bf-9be7-bffc6c34f32f)
![Assignment offline Current](https://github.com/user-attachments/assets/2ebb8016-f706-4556-8a8b-5b8e7458b54b)
![Approval Dashboard](https://github.com/user-attachments/assets/913a0562-5a12-4e9b-8f20-46738ecd42d7)
![Splash-1](https://github.com/user-attachments/assets/c55eac8c-f163-44a3-a3aa-79fe7bbfd504)
![Splash](https://github.com/user-attachments/assets/d5018b3c-fcc5-4424-a13d-d7869f0de46f)
![Transport Module-1](https://github.com/user-attachments/assets/9d01e077-a41a-45f5-9051-eff455ac3194)
![Transport Module](https://github.com/user-attachments/assets/4a86a155-7971-4ef9-b3b2-f6c0ba2ae0e4)
![Time table](https://github.com/user-attachments/assets/6fa2a68f-39bc-41b0-8aa3-9cbc388366a4)
![Student Profile cum home Page](https://github.com/user-attachments/assets/a8d4b61e-633d-4aeb-83f0-35dc2338379b)


