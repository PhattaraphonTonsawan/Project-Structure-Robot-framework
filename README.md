# Robot Framework Automated Testing Project

This project was created to Check my understanding and implementation of **Robot Framework** and **SeleniumLibrary**. The project focuses on team structure and best practices in automated testing.

## Project Structure
<div align="center">
  <img src="https://github.com/user-attachments/assets/3b06b769-49aa-48b3-a4ed-ee64f95b6c94" alt="Project Structure" width="300"/>
</div>

---
### 1. Keywords Directory (`/keywords`)
Stores the **Process Logic**, separated by feature. This layer handles "How" the test interacts with the application.

| File Name | Description |
| :--- | :--- |
| **`changePass.resource`** | **Change Password Logic:** Handles the user password change process.<br>• Includes a keyword `Change Password Back to Default` to reset the password after testing (ใช้วิธี Hard code แบบนี้เพราะผมไม่สามารถ Access Database ของเว็ปไซต์ได้). |
| **`common.resource`** | **Common Logic:** Contains reusable keywords. |
| **`login_test.resource`** | **Login Logic:** Manages the user authentication process. |

> **Screenshot:** `changePass.resource`
> <img src="https://github.com/user-attachments/assets/dba9db1a-de64-4733-9756-65d05e3f72a6" alt="changePass Logic" width="600"/>

> **Screenshot:** `common.resource`
> <img src="https://github.com/user-attachments/assets/165def4a-a27d-4061-8ae8-6cf7a8d03c05" alt="common Logic" width="400"/>

> **Screenshot:** `login_test.resource`
> <img src="https://github.com/user-attachments/assets/04e17b0f-b4f8-4fac-96a8-ed818ae22226" alt="login Logic" width="600"/>

---

### 2. Resources Directory (`/resources`)
Stores **Element Locators** and **Variables**. This layer handles Where the elements are and test data.

| File Name | Description |
| :--- | :--- |
| **`changePasswordPage`** | Stores locators and variables related to the Change Password screen. |
| **`loginPage`** | Stores locators and variables for the Login screen. |
| **`UserProfilePage`** | Stores locators for the User Profile section. |
| **`Global.resource`** | Contains global variables used throughout the project. |

> **Screenshots:**
>
> *changePasswordPage*
> <img src="https://github.com/user-attachments/assets/422da348-12da-4f5e-8ade-13c3dbb5b3de" alt="changePasswordPage" width="600"/>
>
> *loginPage*
> <img src="https://github.com/user-attachments/assets/fd2bac6a-85f9-4b8e-b2ae-49faba778aa7" alt="loginPage" width="600"/>
>
> *UserProfilePage*
> <img src="https://github.com/user-attachments/assets/aa7a3e10-6358-4bb2-98b1-c873269850fa" alt="UserProfilePage" width="600"/>
>
> *Global.resource*
> <img src="https://github.com/user-attachments/assets/4c8b4b7c-04b7-499d-9310-52576d03c9cf" alt="Global Resource" width="600"/>

#### import.resource
This file acts as a **Single Entry Point** (รวมการเรียก Resource ไว้ในไฟล์เดียว) for dependencies. Instead of importing multiple resource files in every test case, I import only `../resources/import.resource ` in test case. 

> <img src="https://github.com/user-attachments/assets/83188c9e-d770-4b34-a51b-653292ab8760" alt="Import Resource Strategy" width="400"/>

---

## Test Suites & Results (`/test`)

### 1. Change Password Test (`changePassword.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/9275251d-846e-404b-88f6-750aad340973" alt="Change Password Test Case" width="600"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/8607a18a-4d96-4ec5-8e4c-0690c42f5bb7" alt="Change Password Result" width="800"/>

### 2. Login Test (`login_tests.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/83444f11-a2ac-428a-b3f0-a9332cdbbae6" alt="Login Test Case 1" width="700"/>
    <img src="https://github.com/user-attachments/assets/6b754c6c-1b0a-4d1e-b7f6-602033ae2737" alt="Login Test Case 2" width="600"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/a81fb780-b4a1-4774-a2d4-f744b4a77751" alt="Login Result" width="700"/>

### 3. User Account Test (`User_Account.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/38ae9092-acb0-481c-856f-c52efe737223" alt="User Account Test Case" width="500"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/f9c82033-42ed-4797-a2db-01fe529a8fa9" alt="User Account Result" width="700"/>

---
