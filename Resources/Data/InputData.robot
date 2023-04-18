
*** Variables ***
#Configuration
&{URL}      dev=https://webmail.spectrum.net/mail/auth
      ...   prod=https://webmail.spectrum.net/mail/auth
      ...   stage=https://webmail.spectrum.net/mail/auth
${BROWSER} =     chrome
${SERVER} =     prod

# Input Data
&{UNREGISTERED_USER}    Email=test@twc.com      Password=testpassword
&{INVALID_PASSWORD_USER}        Email=dscippa1@twc.com      Password=testpassword
&{BLANK_CREDENTIALS_USER}       Email=#BLANK      Password=#BLANK