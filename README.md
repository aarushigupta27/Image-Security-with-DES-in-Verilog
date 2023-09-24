# Image Security using DES in Verilog
Any information sent over a communication channel undergoes encryption to so that it reaches only the intended user where it is decrypted for retreiveing the actual information. Data Encryption Standard (DES) is one of the earliest fundamental algorithms of cryptography. Here, a verilog implementation for encryption and decryption on images is presented by utilizing the Electronic Code Block (ECB) mode of DES.

-Image to be encrypted:

<img src="Images/resized" style="float: left;" alt="drawing" width="400"/>

Steps:
1.	Take any image and give it to ‘imgtobin.py’ to grayscale and resize it as well as convert it to hexadecimal format. In this code first a raw plaintext will be generated in which each line consists of 8 bits which represent the intensity levels of a single pixel. Since the image is 200x200 pixels, total 40,000 pixels are present. So, there will be 40,000 lines. The next part of the code formats this file so there are 8 bytes per line. So, 5000 lines in plaintext.txt. (Use VS Code otherwise we obtain 4096 lines only idk why).
2.	Give ‘plaintext.txt’ as input to e.v and obtain ‘ciphertext.txt’ as output.
3.	Refine ‘ciphertext.txt’ by giving it as input to for_ciphertext.py and get ‘final_ciphertext.txt’ as output which is our final encrypted binary file. It should be 5000 lines, each line 8*8=64 bits. 
4.	Convert ‘final_ciphertext.txt’ to an encrypted image using bintoimg.py.
5.	In d.v, give ‘final_ciphertext.txt’ as input and obtain decrypted text.
6.	Give decrypted text as input to for_decrypted_text.py and obtain final decrypted text.
7.	Using bintoimg.py convert final decrypted to obtain decrypted image.

