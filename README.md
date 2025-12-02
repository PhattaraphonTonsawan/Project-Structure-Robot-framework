# Robot Framework Automated Testing Project

This project was created to Check my understanding and implementation of **Robot Framework** and **SeleniumLibrary**. The project focuses on team structure and best practices in automated testing.
My Tested Website : https://cssoften0368.cpkkuhost.com 

## Project Structure
<div align="center">
  <img src="https://github.com/user-attachments/assets/44c66f50-fb43-41ca-be02-b3597e4766f3" width="300"/>
</div>

---
### 1. Keywords Directory (`/keywords`)
Stores the **Process Logic**, separated by feature. This layer handles "How" the test interacts with the application.

| File Name | Description |
| :--- | :--- |
| **`common_web`** | Contains reusable keywords. |
| **`changePass (feature)`** | **Change Password Process:** Handles the user password change process.<br>• Includes a keyword `Change Password Back to Default` to reset the password after testing (ใช้วิธี Hard code แบบนี้เพราะผมไม่สามารถ Access Database ของเว็ปไซต์ได้). |
| **`login_test (feature)`** | **Login Process:** Manages the user authentication process. |
| **`ChangePasswordPage (page)`** | **Page Object:** Manages the Object in Change Password UI. |
| **`LoginPage (page)`** | **Page Object:** Manages the Object in Login UI. |

> **Screenshot:** `common_web.resource`
> <img src="https://github.com/user-attachments/assets/f1521150-db27-4333-9ec2-a156a8e75618"  width="600"/>

> **Screenshot:** `changePass.resource`
> <img src="https://github.com/user-attachments/assets/e75ae654-f38a-4e9f-8a87-06e3449678d1"  width="600"/>

> **Screenshot:** `login_test.resource`
> <img src="https://github.com/user-attachments/assets/384c483e-abe0-4b2b-8ff1-8021d8bb3b5b" width="600"/>

> **Screenshot:** `ChangePasswordPage.resource`
> <img src="https://github.com/user-attachments/assets/143282ec-783d-4f9d-9564-debf6b436c55" width="600"/>

> **Screenshot:** `LoginPage.resource`
> <img src="https://github.com/user-attachments/assets/bbb7e718-96a7-42f9-ad2a-70ce9248940b" width="600"/>

---

### 2. Resources Directory (`/resources`)
Stores **Element Locators** and **Variables**. This layer handles Where the elements are and test data.

| File Name | Description |
| :--- | :--- |
| **`changePasswordPage (Locator)`** | Stores locators related to the Change Password UI. |
| **`loginPage (Locator)`** | Stores locators related to the Login UI. |
| **`UserProfilePage (Locator)`** | Stores locators for the User Profile UI. |
| **`commonData (testdata)`** | Contains common variables used throughout the project. |
| **`loginData (testdata)`** | Contains variables used to test the Login Test Case. |

> **Screenshot:** `changePasswordPage`
> <img src="https://github.com/user-attachments/assets/001553d3-e518-4039-94ca-e5ff2cb63406" width="600"/>

> **Screenshot:** `loginPage`
> <img src="https://github.com/user-attachments/assets/b2f8d2a6-4946-4e54-b557-59711c5df053" width="600"/>

> **Screenshot:** `UserProfilePage`
> <img src="https://github.com/user-attachments/assets/a5b358e2-35a1-464c-ac2b-8de0c704850a" width="600"/>

> **Screenshot:**  `commonData`
> <img src="https://github.com/user-attachments/assets/119927ed-94f4-4c7d-ac00-90c2c68ed411" width="600"/>

> **Screenshot:**  `LoginData`
> <img src="https://github.com/user-attachments/assets/0f238620-6c97-4baf-8de6-a13d6f628dbc" width="600"/>


#### import.resource
This file acts as a **Single Entry Point** (รวมการเรียก Resource ไว้ในไฟล์เดียว) for dependencies. Instead of importing multiple resource files in every test case, I import only `../resources/import.resource ` in test case. 

> <img src="https://github.com/user-attachments/assets/7dbc70cd-4316-4db1-aefa-a759878d86cf" alt="Import Resource" width="400"/>

---

## Test Suites & Results (`/testcase`)

### 1. Change Password Test (`changePassword.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/ddacf191-dd47-47e3-b51e-12cb592182fc" alt="Change Password Test Case" width="600"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/8607a18a-4d96-4ec5-8e4c-0690c42f5bb7" alt="Change Password Result" width="600"/>

### 2. Login Test (`login_tests.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/b9f04db1-c435-4495-b860-9cff07dd4ff1" alt="Login Test Case 1" width="700"/>
    <img src="https://github.com/user-attachments/assets/e7dac588-b11e-4619-9159-4711720e2253" alt="Login Test Case 2" width="600"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/3737182e-decb-4202-9a18-e97b36dd548e" width="700"/>

### 3. User Account Test (`User_Account.robot`)
* **Test Case:**
    <img src="https://github.com/user-attachments/assets/fd42e824-619d-4d2b-88e3-04f485b71fde" alt="User Account Test Case" width="500"/>
* **Execution Result:**
    <img src="https://github.com/user-attachments/assets/f9c82033-42ed-4797-a2db-01fe529a8fa9" alt="User Account Result" width="700"/>

---
