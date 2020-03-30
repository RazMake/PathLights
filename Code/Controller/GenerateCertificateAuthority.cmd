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