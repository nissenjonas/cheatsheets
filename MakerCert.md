# MakeCert is installed with Visual Studio and can be run from a VS Developer Cmd Prompt
# MSDN Documentation: https://msdn.microsoft.com/en-us/library/bfsktky3(v=vs.110).aspx

# SSL Certificate
makecert -r -pe -n "CN=*.rhinestone.local" -b 01/01/2015 -e 01/01/2020 -eku 1.3.6.1.5.5.7.3.1 -sky exchange -a sha256 -len 2048 -ss my -sr localMachine

# SSL Client Certificate
makecert -r -pe -n "CN=[INSERT COMMON NAME - should match hostname]" -b 01/01/2015 -e 01/01/2020 -eku 1.3.6.1.5.5.7.3.2 -sky exchange -a sha256 -len 2048 -ss my -sr localMachine

# Signing certificate
makecert -r -pe -n "CN=[INSERT COMMON NAME]" -b 01/01/2015 -e 01/01/2020 -eku 1.3.6.1.5.5.7.3.3 -sky signature -a sha256 -len 2048 -ss my -sr LocalMachine


