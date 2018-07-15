# Numerical Differentiation with Complex Variable Methods

## Introduction: Cauchy's Integral Formula

Numerical differentiation is a rather subtle problem. Based on the definition of the derivative of a function, one can compute the numerical derivative as

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%5Cprime%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20-%20f%20%5Cleft%28%20x%20%5Cright%29%7D%7Bh%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%20%5Cright%29%2C">
</p>

or

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%5Cprime%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20-%20f%20%5Cleft%28%20x%20-%20h%20%5Cright%29%7D%7B2%20h%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%5E2%20%5Cright%29%2C">
</p>

for some small value of <img src="https://latex.codecogs.com/gif.latex?h">. Nevertheless, the value of <img src="https://latex.codecogs.com/gif.latex?h"> must be chosen in most cases in an arbitrary way. For instance, a value of <img src="https://latex.codecogs.com/gif.latex?10%5E%7B-3%7D"> can be appropriate in order to compute the derivative of the function <img src="https://latex.codecogs.com/gif.latex?%5Csin%20x">, but not for <img src="https://latex.codecogs.com/gif.latex?%5Csin%20%5Cleft%28%2010%5E5%20x%20%5Cright%29">. Moreover, the problem becomes even harder when computing higher order derivatives as more nodes are needed,

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%7B%5Cprime%20%5Cprime%7D%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20&plus;%20f%20%5Cleft%28%20x%20-%20h%20%5Cright%29%20-%202%20f%20%5Cleft%28%20x%20%5Cright%29%7D%7Bh%5E2%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%5E2%20%5Cright%29.">
</p>

Complex variable methods can be used to tranform the numerical differentiation problem into a quadrature one. In order to do so, let us recall Cauchy's integral formula,

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%7B%5Cleft%28%20n%20%5Cright%29%7D%20%5Cleft%28%20z_0%20%5Cright%29%20%3D%20%5Cfrac%7Bn%21%7D%7B2%20%5Cpi%20i%7D%20%5Coint_%7B%5Cgamma%7D%20%5Cfrac%7Bf%20%5Cleft%28%20z%20%5Cright%29%7D%7B%5Cleft%28%20z%20-%20z_0%20%5Cright%29%5E%7Bn&plus;1%7D%7D%20%5Cmathrm%7Bd%7Dz%2C">
</p>

with <img src="https://latex.codecogs.com/gif.latex?%5Cgamma"> a closed curve being the boundary of a domain <img src="https://latex.codecogs.com/gif.latex?D"> inside which the function <img src="https://latex.codecogs.com/gif.latex?f%20%5Cleft%28%20z%20%5Cright%29%3A%20%5Cmathbb%7BC%7D%20%5Crightarrow%20%5Cmathbb%7BC%7D"> is analytic. We now take <img src="https://latex.codecogs.com/gif.latex?D_r"> to be a closed disk with radius <img src="https://latex.codecogs.com/gif.latex?r"> and center <img src="https://latex.codecogs.com/gif.latex?z_0">, so that <img src="https://latex.codecogs.com/gif.latex?%5Cgamma"> can be expressed as the set of points 

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?z%20%3D%20z_0%20&plus;%20r%20e%5E%7Bi%20%5Ctheta%7D%2C%20%5Cquad%200%20%5Cleq%20%5Ctheta%20%3C%202%20%5Cpi.">
</p>

Substituting this parametrization in Cauchy's integral formula and introducing the change of variable <img src="https://latex.codecogs.com/gif.latex?%5Ctheta%20%3D%202%20%5Cpi%20t"> yields

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%7B%5Cleft%28%20n%20%5Cright%29%7D%20%5Cleft%28%20z_0%20%5Cright%29%20%3D%20%5Cfrac%7Bn%21%7D%7Br%5En%7D%20%5Cint_0%5E1%20f%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20e%5E%7B-i%202%20%5Cpi%20n%20t%7D%20%5Cmathrm%7Bd%7Dt.">
</p>

We now prove that the previous result does not depend on <img src="https://latex.codecogs.com/gif.latex?r">, at least theoretically, as long as the function <img src="https://latex.codecogs.com/gif.latex?f%20%5Cleft%28%20z%20%5Cright%29"> is analytic in <img src="https://latex.codecogs.com/gif.latex?D_r">. Let us take the derivative of with respect to <img src="https://latex.codecogs.com/gif.latex?r">,

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7D%20%5Cfrac%7B%5Cpartial%20f%5E%7B%5Cleft%28%20n%20%5Cright%29%7D%20%5Cleft%28%20z_0%20%5Cright%29%7D%7B%5Cpartial%20r%7D%20%3D%20%26%20-%20n%21%20n%20r%5E%7B-n-1%7D%20%5Cint_0%5E1%20f%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20e%5E%7B-i%202%20%5Cpi%20n%20t%7D%20%5Cmathrm%7Bd%7Dt%20&plus;%20n%21%20r%5E%7B-n%7D%20%5Cint_0%5E1%20f%5E%5Cprime%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20e%5E%7B-i%202%20%5Cpi%20%5Cleft%28%20n%20-%201%20%5Cright%29%20t%7D%20%5Cmathrm%7Bd%7Dt%20%3D%20%5C%5C%20%3D%20%26%20-n%20r%5E%7B-1%7D%20f%5E%7B%5Cleft%28%20n%20%5Cright%29%7D%20%5Cleft%28%20z_0%20%5Cright%29%20&plus;%20n%20r%5E%7B-1%7D%20%5Cleft%28%20n-1%20%5Cright%29%21%20r%5E%7B-%5Cleft%28%20n-1%5Cright%29%7D%20%5Cint_0%5E1%20f%5E%5Cprime%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20e%5E%7B-i%202%20%5Cpi%20%5Cleft%28%20n%20-%201%20%5Cright%29t%7D%20%5Cmathrm%7Bd%7Dt%20%3D%200.%20%5Cend%7Balign*%7D">
</p>

The differentiation formula can be further simplified by considering a function <img src="https://latex.codecogs.com/gif.latex?g%20%5Cleft%28%20z%20%5Cright%29%20%3D%20%5Cleft%28%20z%20-%20z_0%20%5Cright%29%5En%20f%20%5Cleft%28%20z%20%5Cright%29"> which is analytic in <img src="https://latex.codecogs.com/gif.latex?D_r">. Then the following holds,

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?g%20%5Cleft%28%20z_0%20%5Cright%29%20%3D%20%5Cint_0%5E1%20g%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20%5Cmathrm%7Bd%7Dt%20%3D%20%5Cint_0%5E1%20f%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20e%5E%7Bi%202%20%5Cpi%20n%20t%7D%20%5Cmathrm%7Bd%7Dt%20%3D%200.">
</p>

Adding or substracting this result to the differentiation formula one finally gets

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?%5Cbegin%7Balign*%7D%20f%5E%7B%5Cleft%28%20n%20%5Cright%29%7D%20%5Cleft%28%20z_0%20%5Cright%29%20%3D%20%26%20%5Cfrac%7B2%20n%21%7D%7Br%5En%7D%20%5Cint_0%5E1%20f%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20%5Ccos%20%5Cleft%28%202%20%5Cpi%20n%20t%20%5Cright%29%20%5Cmathrm%7Bd%7Dt%20%3D%20%5C%5C%20%3D%20%26%20%5Cfrac%7B-2%20i%20n%21%7D%7Br%5En%7D%20%5Cint_0%5E1%20f%20%5Cleft%28%20z_0%20&plus;%20r%20e%5E%7Bi%202%20%5Cpi%20t%7D%20%5Cright%29%20%5Csin%20%5Cleft%28%202%20%5Cpi%20n%20t%20%5Cright%29%20%5Cmathrm%7Bd%7Dt.%20%5Cend%7Balign*%7D">
</p>

## References

* [Numerical differentiation - Wikipedia](https://en.wikipedia.org/wiki/Numerical_differentiation)
* LYNESS, James N.; MOLER, Cleve B. Numerical differentiation of analytic functions. SIAM Journal on Numerical Analysis, 1967, vol. 4, no 2, p. 202-210.
