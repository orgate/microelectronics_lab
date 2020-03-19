import sys
from numpy import *
from pylab import *
from scipy.signal import remez
from scipy.signal import freqz
from scipy.signal import lfilter

t0 = arange(0,1,1.0/1000)
s0 = sin(2*pi*100*t0)

plot(s0[:20])
show()

s1 = sin(2*pi*100*t0) + sin(2*pi*200*t0)
ft1 = fft(s1)/len(s1)

plot(20*log10(abs(ft1)))
show()


t1 = arange(0,1.001,1.0/1000)
s2 = sin(2*pi*100*t1)

plot(s2[:20])
show()

s3 = sin(2*pi*100*t1) + sin(2*pi*200*t1)
ft2 = fft(s1)/len(s1)

plot(20*log10(abs(ft2)))
show()



noise_amp = 0.1
s3 = sin(2*pi*100*t0) + sin(2*pi*200*t0) + noise_amp*randn(len(t0))

lpf1 = remez(21,[0,0.1,0.2,0.5],[1.0,0.0])
w,h = freqz(lpf1)
plot(w/(2*pi),20*log10(abs(h)))
show()

lpf2 = remez(5,[0,0.1,0.2,0.5],[1.0,0.0])
w,h = freqz(lpf2)
plot(w/(2*pi),20*log10(abs(h)))
show()

lpf3 = remez(14,[0,0.1,0.2,0.5],[1.0,0.0])
w,h = freqz(lpf3)
plot(w/(2*pi),20*log10(abs(h)))
show()

sout1 = lfilter(lpf1,1,s3)
plot(20*log10(abs(fft(s3))))
plot(20*log10(abs(fft(sout1))))
show()

sout2 = lfilter(lpf2,1,s3)
plot(20*log10(abs(fft(s3))))
plot(20*log10(abs(fft(sout2))))
show()

sout3 = lfilter(lpf3,1,s3)
plot(20*log10(abs(fft(s3))))
plot(20*log10(abs(fft(sout3))))
show()


lpf4 = lpf3*128
print lpf4
#bin_lpf4 = lp4
for i in range(len(lpf3)):
	lpf4[i] = int(lpf4[i])
	print "h[0] <=   8'b" + binary_repr(lpf4[i],width=8) +";"
	
lpf4 = lpf4/128
w,h = freqz(lpf4)
plot(w/(2*pi),20*log10(abs(h)))
show()



sout4 = lfilter(lpf4,1,s3)
plot(s3[:50])
plot(sout4[:50])
show()
plot(20*log10(abs(fft(s3))))
plot(20*log10(abs(fft(sout4))))
show()

inp_list = open('input1.list','w')
outp_list = open('output1.list','w')
for j in range(256):
	inp_list.write(binary_repr(int(128*s3[j]),width=8))
	inp_list.write("\n")	
	outp_list.write(binary_repr(int(128*sout4[j]),width=8))
	outp_list.write("\n")	


inp_list.close()
outp_list.close()
