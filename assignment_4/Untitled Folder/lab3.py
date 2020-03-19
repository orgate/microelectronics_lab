from pylab import *
noise_amp = 5.0
t = arange(0,1,1.0/1000)
s=sin(2*pi*100*t)+sin(2*pi*200*t)#+noise_amp*(randn(len(t)))
#plot(s[:20])
ft = fft(s)/len(s)
#plot(20*log10(abs(ft)))
print max(s)
#writing input wave  in input.list
sine=[]

for i in range(256):				##tb requires 256 entries
	sine.append(binary_repr(int(round(s[i]*128)),width = 8))

o = open('input.list','w')
for i in range(256):
    o.write(str(sine[i]) + '\n')
o.close()
	

#getting coefficients of filter

from scipy.signal import remez
lpff=remez(16,[0,0.1,0.2,0.5],[1.0,0.0])
#from scipy.signal import freqz
#w,h = freqz(lpf)
lpf = zeros(size(lpff))
lpff=lpff*(127)


##print lpff

for i in arange(0,15,1):
	lpf[i]=int(round(lpff[i]))
	#print i 

##for i in arange(0,15,1): 
##	print binary_repr(lpf[i],8)	



#lpf=lpf/(2**8)
#plot(w/(2*pi),20*log10(abs(h)))

lpf=lpf/127
#filtering the input wave and storing the output in output.list

from scipy.signal import lfilter
sout = lfilter(lpf,1,s)
#plot(20*log10(abs(fft(s))))
#plot(20*log10(abs(fft(sout))))
#show()
##print max(sout)

outwave = []
f = open('output.list','w')
for i in range(256):
	outwave.append(binary_repr(int(round(sout[i]*127)),width = 8))

m = open('output.list','w')
for i in range(256):
    m.write(str(outwave[i]) + '\n')
m.close()

