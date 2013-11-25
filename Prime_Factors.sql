Create or Replace type primeFactorList is table of number;
/

Create or Replace function prime_factors (input in number) return primeFactorList is
result primeFactorList := primeFactorList();
num number := input;
begin
  if (mod(num, 2) = 0) then
    result.extend;
    result(result.count) := 2;
    num := num / 2;
  end if;

  if (num > 1) then
    result.extend;
    result(result.count) := num;
  end if;

  return result;
end prime_factors;
/