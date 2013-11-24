create or replace 
type pfArray as table of number;
/

create or replace procedure add_number_to_pf
(pf in out pfArray, numberToAdd in number) is
begin
    pf.extend;
    pf(pf.count) := numberToAdd;
end add_number_to_pf;
/

create or replace function prime_factors 
(num in number) return pfArray is
pf pfArray := pfArray();
input number := num;
candidate number := 2;
begin
  while (input > 1) 
  loop
    while (mod(input, candidate) = 0)
    loop
      add_number_to_pf(pf, candidate);
      input := input / candidate;
    end loop;
    candidate := candidate + 1;
  end loop;
  
  return pf;
end prime_factors;
/
  