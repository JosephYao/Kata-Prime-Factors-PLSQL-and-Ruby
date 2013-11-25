Create or Replace type primeFactorList is table of number;
/

Create or Replace function prime_factors (input in number) return primeFactorList is
result primeFactorList := primeFactorList();
begin
  if (input = 2) then
    result.extend;
    result(result.count) := 2;
  end if;

  return result;
end prime_factors;
/