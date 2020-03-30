# Obtain a certificate
In order to secure the traffic between server and client(s) we can use a certificate.  
This is how to obtain certificates using **makecert.exe** tool, which comes with [Visual Studio](https://visualstudio.microsoft.com/downloads/).  
For the purpose of this device I did not want to purchase a certificate. All I wanted was to make sure the communication with the device is secure
(*or at least more secure than nothing :-) *).  
To generate self signed certificates you would need first to generate a certificate authority and add it to your computer, then you can generate a certificate
for that authority.
The path for each of these tool is available in **Developer Command Prompt for Visual Studio**.
Documentation for the two command line tools used to generate the certificate authority and then the certificate:
	[**makecert.exe** command line](https://docs.microsoft.com/en-us/previous-versions/dotnet/netframework-4.0/bfsktky3(v=vs.100)?redirectedfrom=MSDN)
	[**pvk2pfx.exe** commandline](https://docs.microsoft.com/en-us/windows-hardware/drivers/devtest/pvk2pfx)

## Generating a certificate authority
I have created a cmd file, to remember the command for creating a new certificate authority.  
***Note:*** It needs to be run in the Visual Studio developer console.  
```
@echo off
SET fileName=%1
SET certificateAuthorityName=%2
:: Reference for components of certificate names:
::     CN = commonName (example, "CN=My Root CA")
::     OU = organizationalUnitName (example, "OU=Dev")
::     O = organizationName (example, "O=Jayway")
::     L = localityName (example, "L=San Francisco")
::     S = stateOrProvinceName (example, "S=CA")
::     C = countryName (example, "C=US")
SET password=%3

:: Create the files defining the certificate authority
	makecert.exe ^
		-n "CN=%certificateAuthorityName%" ^
		-r ^
		-pe ^
		-a sha512 ^
		-len 4096 ^
		-cy authority ^
		-sv %fileName%.pvk ^
		%fileName%.cer

:: Then take the private key file (*.pvk) and the certificate file (*.cer) and generate a Personal Information Exchange (*.pfx) file containing them
	pvk2pfx.exe ^
		-pvk %fileName%.pvk ^
		-spc %fileName%.cer ^
		-pfx %fileName%.pfx ^
		-po %password%
```
During execution of the script you will be asked to input password multiple times:
- First to generate a password for the private key (pvk).
- Then multiple times to introduce that password.  

I used a different password than the one passed in on the command line, to protect the pfx.  

## Install the generate certificate authority
Once I ran the command correctly three files are generated in the current folder (.cer, .pfx, .pvk).  
- Install the certificate (*.cer*) in your ***Trusted Root Certification Authorities***.  
  Win-R -> certmgr.msc -> find Trusted Root Certification Authorities, right click on Certificates subfolder -> All Tasks -> Import...  
  Select the *.cer* file generated above, and then select '*Place all certificates in the following store*' and select '***Trusted Root Certification Authorities***'.

## Generate the SSL certificate
I have created a second cmd file, to remember the command for creating a new SSL certificate.  
***Note:*** Same as the other one, this command needs to be ran in Visual Studio developer console.  
```
@echo off
SET fileName=%1
SET domainName=%2
SET issuer=%3
SET password=%4

:: First create the certificate:
	makecert.exe ^
		-n "CN=%domainName%" ^
		-iv %issuer%.pvk ^
		-ic %issuer%.cer ^
		-pe ^
		-a sha512 ^
		-len 4096 ^
		-b 03/29/2020 ^
		-sky exchange ^
		-eku 1.3.6.1.5.5.7.3.1 ^
		-sv %fileName%.pvk ^
		%fileName%.cer

:: Then pack all the information into a Personal Information Exchange (*.pfx) file:
	pvk2pfx.exe ^
		-pvk %fileName%.pvk ^
		-spc %fileName%.cer ^
		-pfx %fileName%.pfx ^
		-po %password%
```  
During execution of the script you will be asked to input password multiple times:
- First to generate a password for the private key (pvk) of this new certificate.
- Then once more to use the private key.  
- Then once more to use the certificate authority private key (***which is the previously create certificate private key***).  

If you pay attention to the file name in the dialog, you should be fine figuring out which password to use.  
