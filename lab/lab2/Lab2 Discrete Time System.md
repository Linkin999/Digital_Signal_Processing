<h1 align = "center">Lab2 Discrete Time System</h1>

## Introduction

This lab aims to help us have a deeper understanding of LIT system. First we learn how to convert a continuous-time system into an approximate discrete-time system. Next , we have gotten the approach to represent the system property by using differential equation and the method to get the impulse response from  the differential equation of a system. What's more, the lab train us the ability of getting the inverse system according to the known system and determine the linearity and time-invariance of the unknown system. Last but not least, some practical examples such as audio filter, stock market examples remind us of the application of digital signal processing used in real life.

## Result and analysis

### 2.2 Background Exercise

#### 2.2.1 Example Discrete-time Systems

The following two continuous-time system are commonly used in electrical engineering:
$$
differentiator:y(t)=\frac{d}{dt}x(t)\\
integrator: y(t)=\int^t_{-\infty}x(\tau)d\tau
$$
formulate a discrete-time system that approximates the continuous-time function is below:
$$
differentiator:y[n]=x[n]-x[n-1]\tag{1}
$$

$$
integrator: y(t)=y[n-1]+x[n]\tag{2}
$$

##### Derivation:

Differentiator:

For continuous-time system, the differentiation can be written as:
$$
y(t)=\frac{d}{dt}x(t)=\lim\limits_{\tau\to0}\frac{x(t)-x(t-\tau)}{\tau}
$$
Similarly for discrete-time system, the differentiation can be written as :
$$
y[n]=\frac{x[n]-x[n-n_0]}{n_0}
$$
In discrete-time system, 1 is the minimum step ,so $n_0$ equals 1. Therefore
$$
y[n]=\frac{x[n]-x[n-n_0]}{n_0}=x[n]-x[n-1]
$$
Integrator:

For continuous-time system, the integrator can be written as:
$$
integrator: y(t)=\int^t_{-\infty}x(\tau)d\tau=\lim\limits_{\tau \to 0}\sum^{\frac{t}{\tau}}_{i=1}x(i\tau)\tau
$$
Similarly for discrete-time system, the integrator can be written as :
$$
y[n]=\sum^{\frac{n}{n_0}}_{i=1}x(in_0)n_0
$$
In discrete-time system, 1 is the minimum step ,so $n_0$ equals 1. Therefore
$$
y[n]=\sum^n_{i=1}x{i}
$$
Further, we have
$$
y[n]-y[n-1]=x[n]
$$
That is 
$$
integrator: y(t)=y[n-1]+x[n]
$$

##### System diagram 

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929210225910.png" alt="image-20220929210225910" style="zoom: 50%;" />

#### 2.2.2 Stock Market Example

##### 2.2..2.1

The difference equation for the methods above are:
$$
y[n]=\frac{1}{3}(x[n]+x[n-1]+x[n-2])\tag{3}
$$

$$
y[n]=0.8y[n-1]+0.2x[n]\tag{4}
$$

$$
y[n]=y[n-1]+\frac{1}{3}(x[n]-x[n-3])\tag{5}
$$

(Note: equation(3) is the impulse of 2.3,equation(4) is the impulse of 2.4,equation(5) is the impulse of 2.5)

The system diagram is shown as following:

<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929211820569.png" width="250"/>    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929211922067.png"  width="250"/> 
</center



<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929212036858.png" alt="image-20220929212036858" width="250"/> 
</center



The impulse response are:
$$
h[n]=\frac{1}{3}(\delta[n]+\delta[n-1]+\delta[n-2])\tag{6}
$$

$$
h[n]=0.2\sum^{n}_{i=-\infty}0.8^i\delta[n-i]\tag{7}
$$

$$
h[n]=\frac{1}{3}(\delta[n]+\delta[n-1]+\delta[n-2])\tag{8}
$$

(Note: equation(6) is the impulse of 2.3 , equation(7) is the impulse of 2.4, equation(8) is the impulse of 2.5)

###### Derivation

Derivation for equation(6):

​	Just replace $x[n]$ with $\delta[n]$ to get the impulse response of system 2.3.

Derivation for equation(7):

​	The equation can be written as:
$$
y[n]=0.8y[n-1]+0.2x[n]\\
0.8y[n-1]=0.8^2y[n-2]+0.2*0.8x[n-1]\\
0.8^2y[n-2]=0.8^3y[n-3]+0.2*0.8^2x[n-2]\\
$$
​	When n is small enough, assume $y[n]$ equals to $0$ .So, sum all the equation above ,the following equation can be gotten:
$$
y[n]=0.2\sum^{n}_{i=-\infty}0.8^ix[n-i]
$$
​	Then replace $x[n]$ with $\delta[n]$ to get equation(7).

Derivation for equation(8):

​		The equation can be written as:
$$
y[n]=y[n-1]+\frac{1}{3}(x[n]-x[n-3])\\
y[n-1]=y[n-2]+\frac{1}{3}(x[n-1]-x[n-4])\\
y[n-2]=y[n-2]+\frac{1}{3}(x[n-2]-x[n-5])\\
y[n-3]=y[n-4]+\frac{1}{3}(x[n-3]-x[n-6])
$$
​	When n is small enough, assume $y[n] x[n]$ equals to $0$ .So, sum all the equation above ,the following equation can be gotten:
$$
y[n]=\frac{1}{3}(x[n]+x[n-1]+x[n-2])
$$
​	 Then replace $x[n]$ with $\delta[n]$ to get equation(8).

##### 2.2.2.2

​	The plot of the impulse response of system 2.3 and 2.5 is shown below:

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929220513969.png" alt="image-20220929220513969" style="zoom:67%;" />

​	From the theory, what can be known is that for a system, the process of response to input signal is exactly meant to the convolution of input signal and impulse response of the system.  From the above picture, the process of the system is just like using a window to capture the values and do the average in the window. And after each calculation the window will shift right one unit. This is why methods 2.3 and 2.5 are known as moving averages.

### 2.3 Example Discrete-Time Systems

​        There are some details to consider before plotting output signal. Firstly, for the function of differentiator, what needs to be considered is that $y[n]$ don't exist when $x[n]$ equals the first element of itself, which can be deduces from equation(1). So, I let the first element of  $y[n]$ equals 0.Secondly, for the function of integrator, the first element of  $y[n]$ equals the first element of $x[n]$ , which can be deduces from equation(2) 

<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929105839597.png" alt="image-20220929105839597" width="250"/>    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220922121634115.png" width="250"/> 
</center

​        The result is showing below.

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220922122527842.png" alt="image-20220922122527842" style="zoom:67%;" />

​      From the equation(1) and equation(2) ， what can be calculated is the $y_{1}[n]= 1 ,-1 , -1,1 $  when $n= 0 ,1 , 5,6$ , and $y_{1}[n]=0$ otherwise ($y_{1}[n]$ is the differentiator of  $\delta[n]- \delta[n-5]$).  $y_{2}[n]= 1$  when $n= 0 ,1 , 2,3,4$ , and $y_{2}[n]=0$ otherwise ($y_{2}[n]$ is the integrator of  $\delta[n]- \delta[n-5]$).  $y_{3}[n]= 1 ,-1 , $  when $n= 0 ,11,$ , and $y_{3}[n]=0$ otherwise ($y_{3}[n]$ is the differentiator of  $u[n]-u[n-(N+1)](N=10)$). $y_{4}[n]= n+1$  when $n<=10$ , $y_{4}[n]= 11$  when $n>=10$ , and $y_{4}[n]=0$ otherwise ($y_{4}[n]$ is the integrator of  $u[n]-u[n-(N+1)](N=10)$).  

​     For the system of differentiator, $y[n]$ is bounded when the input, $x[n]$, is bounded, which means the system is stable. For the system of integrator, $y[n]$ isn't  bounded when the input, $x[n]$, is bounded, which means the system is stable.

### 2.4 Difference Equations

​       Inspired by 2.3, some details should be considered before plotting the signal. For the first filter $S_{1} $, the length of output signal is 1 more than the length of input signal. According to equation(3), the first element of $y[n]$ equals the first element of $x[n]$ and the last element of $y[n]$equals the negative of  the last element of $x[n]$ .For the second filter $S_{2} $ , the length of output signal is 1 more than the length of input signal.   According to equation(4), the first element of $y[n]$ equals 0 and the $n_{th}$ element of $y_{n}$ equals the sum of the $n-1_{th}$ element of  $y_{n}$  and $x[n]$ 
$$
y[n]=x[n]-x[n-1]\tag{9}
$$

$$
y[n]=\frac{1}{2} y[n-1]+x[n]\tag{10}
$$

<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929121845975.png" alt="image-20220929121845975" alt="image-20220929105839597" width="250"/>    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929121904897.png" alt="image-20220929121904897"  width="250"/> 
</center>

#### Derivation:

$S_{2}$:

The differential equation can also be written as:
$$
y[n]=\frac{1}{2}y[n-1]+x[n]\\
\frac{1}{2}y[n-1]={(\frac{1}{2})}^2y[n-2]+\frac{1}{2}x[n-1]\\
{(\frac{1}{2})}^2y[n-2]={(\frac{1}{2})}^3y[n-3]+{(\frac{1}{2})}^2x[n-2]
$$
When $n$ is small enough, assume $y[n]=0$, thus a equation can be gotten:
$$
y[n]=\sum_{i=0}^{\infty}{(\frac{1}{2})}^iy[n-i]
$$
The impulse response of $S_2$ is gotten when $x[n]=\delta[n]$
$$
h[n]=\sum_{i=0}^{\infty}{(\frac{1}{2})}^i\delta[n-i]=\sum_{i=0}^{n}{(\frac{1}{2})}^i\delta[n-i]\tag{5}
$$
​	

​	The system diagram is showing below.

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191608708.png" alt="image-20220929191608708" style="zoom:50%;" />

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191642136.png" alt="image-20220929191642136" style="zoom:50%;" />



<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191406404.png" alt="image-20220929121845975" alt="image-20220929105839597" width="250"/>    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191441073.png" alt="image-20220929121904897"  width="250"/> 
</center>

<center class="half">    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191608708.png" alt="image-20220929105839597" width="250"/>    
    <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191642136.png" alt="image-20220929121904897"  width="250"/> 
</center>

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191810802.png" alt="image-20220929191810802" style="zoom:50%;" />

​	The plots is showing below.

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929191007956.png" alt="image-20220929191007956" style="zoom:67%;" />

​	According to the figure, what can be known is that the impulse response of $S_{1}(S_{2})$  equals to the impulse response of $S_{2}(S_{1})$ , which is called cascade connection. And this is keeping with the knowledge learned in theory class. What's more, the sum of impulse response of $S_{1}$ and impulse response of $S_{2}$ equals to impulse response of $S_1+S_2$ , which is called parallel connection.

### 2.5 Audio Filtering

​	An intuitive sense of these three pieces of music is that  the signal through the filter $S_1$ has more higher frequency in general while the signal through the filter $S_2$ has more lower frequency in general.

​	The reason may be that the filter $S_1$ has the ability to filter the lower frequency and the filter $S_2$ has the ability to filter the higher frequency.

​	To verify my explanation,  the frequency spectrum of three signal is showing below. From the picture, it is obvious that the signal($y_1$) through  filter $S_1$ has more energy in the higher frequency and the signal($y_2$) through  filter $S_2$ has more energy in the lower frequency, which strongly support my explanation.

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929164551532.png" alt="image-20220929164551532" style="zoom:67%;" />

### 2.6 Inverse System

​	Let $y[n]=S_{3}[n]$  then
$$
y[n]=ax[n]+bx[n-1]\tag{11}
$$
​	From the filter $S_2$, what can be gotten:
$$
x[n]=y[n]-\frac{1}{2}y[n-1]\tag{12}
$$
​	For the system $S_3$, the input is the output of the system $S_2$, so we can get 
$$
a=1,b=-0.5\tag{13}
$$
​	The system $S_3$ can be written :
$$
y[n]=x[n]-\frac{1}{2}x[n-1]\tag{14}
$$
​	The system diagram is below:

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929170524801.png" alt="image-20220929170524801" style="zoom: 33%;" />

​	The impulse response of $S_{3}$ is below
$$
x[n]=\delta[n]\\  
h[n]=y[n]=x[n]-x[n-1]=\delta[n]-\delta[n-1]\tag{15}
$$
​	The plot of it is below

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929173004709.png" alt="image-20220929173004709" style="zoom: 67%;" />

​	For  the system $S_{3}(S_{2})$ ,the impulse response of it is the output signal of $S_{3}$ when the input signal is the impulse response of $S_{2}$. The impulse response of $S_{3}(S_{2})$  is 
$$
h[n]=\sum_{i=0}^{n}{(\frac{1}{2})}^i\delta[n-i]-\frac{1}{2}\sum_{i=0}^{n}{(\frac{1}{2})}^i\delta[n-1-i]=\delta[n]\tag{16}
$$
The plot of it is below

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929184856678.png" alt="image-20220929184856678" style="zoom: 67%;" />

### 2.7 System Test

​	From the three test, what can be known is that bbox1 is time-variance, bbox3 is non-linear.

​	The inputs are 
$$
x_1[n]=\delta[n]\\
x_2[n]=cos[\frac{1}4{}\pi n]\\
x_3[n]=\delta[n-3]
$$
 	The test of time-invariance of bbox1 is below.

​	$y_1$ is the response of $x_1$  and $y_2$ is the response of $x_3$. Let $x_1[n]$ delay 3 units to get  $x_3$ , $y_[2]$ isn't gotten by letting $y_1$ delay 3 units, however. So   bbox1 is time-variance. What's more, a message that exactly one of three systems is time-varying can be gotten from the description so that bbox2 and bbox3 are time-invariance.

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929200543199.png" alt="image-20220929200543199" style="zoom:67%;" />

​	The test of linearity of bbox2 and bbox3 is below.

bbox3:

​	$y_6$ is the response of $x_1$  , $y_7$ is the response of $x_2$ and $y_8$ is the response of $x_1+x_2$. However, $y_8$ don't equal to$y_6+y_7$​. So bbox3 is non-linear. What's more, a message that exactly one of three systems is non-linear can be gotten from the description so that bbox1 and bbox2 are linear.



<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929201729399.png" alt="image-20220929201729399" style="zoom:67%;" />

<img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929201754825.png" alt="image-20220929201754825" style="zoom:67%;" />

### 2.8 Stock Market Example

​	The plots  of original signal and filtered exchange-rates are shown as below:

​	                                     <img src="C:\Users\胡晨\AppData\Roaming\Typora\typora-user-images\image-20220929223302731.png"        alt="image-20220929223302731" style="zoom: 80%;" />

​	From the picture above, what can be known is that the output of filter of(2.4) is smoother than the output of filter of(2.5) while the last has a quick response to the rate change than filter of(2.4).

​	One possible way to initializing the filter outputs is to ignore the initial points when the amount of data is large enough. An other way to solve this is that initial y be the average of the all inputs. 

## Conclusion

I think the most important harvest of the lab is the method of getting the impulse response of s system with knowing the differentiator equation of it. The process wouldn't work out without some incredible mathematical methods, like recurrence method. What can't be ignored is the effect of initializing the filter outputs on the performance of filters. The performance of filter would be worse than what we expects when the initial value of the filter output is inapproximate. 