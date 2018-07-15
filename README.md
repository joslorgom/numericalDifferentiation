# Numerical Differentiation with Complex Variable Methods

## Introduction: Cauchy's Integral Formula

Numerical differentiation is a rather subtle problem. Based on the definition of the derivative of a function, one can compute the numerical derivative as

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%5Cprime%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20-%20f%20%5Cleft%28%20x%20%5Cright%29%7D%7Bh%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%5E2%20%5Cright%29%2C">
</p>

or

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%5Cprime%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20-%20f%20%5Cleft%28%20x%20-%20h%20%5Cright%29%7D%7B2%20h%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%5E3%20%5Cright%29%2C">
</p>

for some small value of <img src="https://latex.codecogs.com/gif.latex?h">. Nevertheless, the value of <img src="https://latex.codecogs.com/gif.latex?h"> must be chosen in most cases in an arbitrary way. For instance, a value of <img src="https://latex.codecogs.com/gif.latex?10%5E%7B-3%7D"> can be appropriate in order to compute the derivative of the function <img src="https://latex.codecogs.com/gif.latex?%5Csin%20x">, but not for <img src="https://latex.codecogs.com/gif.latex?%5Csin%20%5Cleft%28%2010%5E5%20x%20%5Cright%29">. Moreover, the problem becomes even harder when computing higher order derivatives as more nodes are needed,

<p align="center">
  <img src="https://latex.codecogs.com/gif.latex?f%5E%7B%5Cprime%20%5Cprime%7D%20%5Cleft%28%20x%20%5Cright%29%20%3D%20%5Cfrac%7Bf%20%5Cleft%28%20x%20&plus;%20h%20%5Cright%29%20&plus;%20f%20%5Cleft%28%20x%20-%20h%20%5Cright%29%20-%202%20f%20%5Cleft%28%20x%20%5Cright%29%7D%7Bh%5E2%7D%20&plus;%20%5Cmathcal%7BO%7D%20%5Cleft%28%20h%5E4%20%5Cright%29.">
</p>

## References

* [Numerical differentiation - Wikipedia](https://en.wikipedia.org/wiki/Numerical_differentiation)
* LYNESS, James N.; MOLER, Cleve B. Numerical differentiation of analytic functions. SIAM Journal on Numerical Analysis, 1967, vol. 4, no 2, p. 202-210.
