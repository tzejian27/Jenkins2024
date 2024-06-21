FROM mcr.microsoft.com/windows/servercore
RUN net user Tay P@ssw0rd1 /ADD
COPY . /
RUN msiexec /quiet /i sample.msi ACCOUNT=%COMPUTERNAME%\Tay PASSWORD=P@ssw0rd1
