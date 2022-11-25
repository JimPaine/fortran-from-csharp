module FortranFunctionDemo
    implicit none

    contains
        function Add_One(n) result(r) BIND(C, NAME="Add_One")
            use iso_c_binding
            !DEC$ ATTRIBUTES DLLEXPORT :: Add_One

            integer(c_int), VALUE, intent(in) :: n
            integer(c_int) :: r
            r = n + 1
        end function Add_One
end module FortranFunctionDemo