module svopt

"function minimize function with one variable using Newton_Raphson metod as arguments take function , derivative of this function and start point"
function Newton_Raphson(f, df, x0; ϵ = 1e-9 )
    new, old = x0, Inf
    i = 0
    while abs((new - old)/new) >= ϵ
        x = new - (f(new)/df(new))
        i = i + 1
        new, old = x, new
    end
    return new
end

export Newton_Raphson


end # module
