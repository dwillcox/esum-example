program main

  use esum_module

  implicit none

  double precision :: array_to_sum(4)
  double precision :: exact_sum, explicit_sum, array_sum

  ! initialize array_to_sum using example at https://code.activestate.com/recipes/393090/
  array_to_sum(1) = 1.0d0
  array_to_sum(2) = 1.0d100
  array_to_sum(3) = 1.0d0
  array_to_sum(4) = -1.0d100

  explicit_sum = array_to_sum(1) + array_to_sum(2) + array_to_sum(3) + array_to_sum(4)
  array_sum = sum(array_to_sum)
  exact_sum = esum4(array_to_sum)

  print *, 'Adding these numbers: ', array_to_sum
  print *, 'explicit sum using +: ', explicit_sum
  print *, 'array sum using sum(): ', array_sum
  print *, 'exact sum using esum(): ', exact_sum

end program main
