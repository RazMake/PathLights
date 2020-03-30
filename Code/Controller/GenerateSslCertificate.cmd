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
