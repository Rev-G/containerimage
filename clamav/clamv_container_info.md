#https://docs.clamav.net/manual/Installing/Docker.html
#https://www.eicar.org/download-anti-malware-testfile/

`docker run -it --rm -v /Users/gary/Downloads/suspect:/scandir clamav/clamav clamscan /scandir`
