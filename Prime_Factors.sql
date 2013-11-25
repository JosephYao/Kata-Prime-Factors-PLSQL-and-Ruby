Create or Replace type primeFactorList is table of number;
/

Create or Replace function prime_factors (input in number) return primeFactorList is
result primeFactorList := primeFactorList();
begin
  return result;
end prime_factors;
/