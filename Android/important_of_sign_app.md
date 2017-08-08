## The important of sign Android application
[ref](http://stackoverflow.com/questions/23906799/why-should-i-sign-my-application-apk-before-release)

Sign all of your applications with the same certificate, throughout the expected lifespan of your applications. 

There are several reasons why you should do so:

- **Application upgrade** – As you release updates to your application, you must continue to sign the updates with the same certificate or set of certificates.
- **Application modularity** – The Android system allows applications that are signed by the same certificate to run in the same process
- **Code/data sharing through permissions** – The Android system provides signature-based permissions enforcement, so that an application can expose functionality to another application that is signed with a specified certificate. By signing multiple applications with the same certificate and using signature-based permissions checks, your applications can share code and data in a secure manner.

Another important consideration in determining your **signing strategy** is how to **set the validity period of the key** that you will use to sign your applications.

- If you plan to support upgrades for a single application, you should ensure that your key has a validity period that exceeds the expected lifespan of that application. **A validity period of 25 years or more** is recommended. When your key's validity period expires, users will no longer be able to seamlessly upgrade to new versions of your application.

- If you will sign multiple distinct applications with the same key, you should ensure that your key's validity period exceeds the expected lifespan of all versions of all of the applications, including dependent applications that may be added to the suite in the future.

- If you plan to **publish your application(s) on Google Play**, the **key you use to sign** the application(s) **must have a validity period ending after 22 October 2033**. Google Play enforces this requirement to ensure that users can seamlessly upgrade applications when new versions are available.