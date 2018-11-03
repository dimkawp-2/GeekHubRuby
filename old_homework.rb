# Hello World Program in Ruby
#1
def task_01(x,y)
    p x + y
    p x - y
    p y - x
    p x = 0
    p y = 0
end
#2
def task_02(x,y)
    (x.abs-y.abs)/1+(x*y).abs
end
#3
def task_03(r)
    p r*r
    p r**3
end
#4
def task_04(a,b)
    p (a+b)/2
    p 3*Math.sqrt(a*b)
end
#5
def task_05(a,b)
    p (a+b)/2
    p 3*Math.sqrt(a*b)
end
#6
def task_06(a,b)
    p Math.sqrt(a*a+b*b)
    p 1/2*(a*b)
end
#10
def task_10(m,h)
    p Math.sqrt((2*h)/m)
end
#13
def task_13(l)
    pi = 3.14
    p 2*pi*Math.sqrt(l/9)
end
#16
def task_16(c)
    pi = 3.14
    p (c*c)/(4*pi)
end

#28
def task_28(x)
    2*(x*x*x*x)-3*(x*x*x)+4*(x*x)-5*x+6
end
#29
def task_29(x,y)
    3*(x*x)*(y*y)-2*x*(y*y)-7*(x*x)*y-4*(y*y)+15*x*y+2*(x*x)-3*x+10*y+6
end
#30
def task_30(x)
    a1 = 1+2*x+3*(x*x)+4*(x*x*x)
    a2 = 1+2*x+3*(x*x)+4*(x*x*x)
    [a1,a2]
end
#31
def task_31(a)
     a1 = (a*a*a*a)
     a2 = a+2
     a3 = a+3
     [a1,a2,a3]
end
#38
def task_38(x,y)
    if x > y 
        x-y
    else 
        y-x+1
    end
end
#39
def task_39(x,y)
    if x > y 
        x
    else 
        "#{x},#{y}"
    end
end
#40
def task_40(x,y)
    if x <= y 
        x = 0
    else 
        "#{x},#{y}"
    end
end
#41
def task_41(x,y,z)
    case x
     when 1..3   then   p x
    end
    case y
     when 1..3   then   p y
    end
    case z
     when 1..3   then   p z
    end
    'end'
end
#43
def task_43(x,y,z)
    if x > 0
        p x*x
    end
    if y > 0
        p y*y
    end
    if z > 0
        p z*z
    end
end
#45
def task_45(a,b,c,d)
    if (a <= b && b <= c && c <= d)
        p a = b
        p b = c
        p c = d
    end
    p '_'
    if (a > b && b > c && c > d)
        p a = a
        p b = b
        p c = c
        p d = d
    else
        p a = a*a
        p b = b*b
        p c = c*c
        p d = d*d
    end
end
#78
def task_78(a,n)
    p a**n
end
#80
def task_80(x)
    x1 = (x**3)/3
    x2 = (x**5)/5
    x3 = (x**7)/7
    x4 = (x**9)/9
    x5 = (x**11)/11
    x6 = (x**13)/13
    p x = x-x1+x2-x3+x4-x5+x6
end
#105
def task_105(x,n)
     c1 = n**2
     x1 = x**c1
     y1 = 2**n
     c2 = n**3
     x2 = x**c2
     y2 = 3**n
     p r1 = x1/y1
     p r2 = x2/y2
end
#986
def task_986(a,b,c)
    result = rand(0..10)
    if (a === result || b === result || c === result) 
        p 'Y WIN'
    else 
        p 'Y LOSE'
    end
end
#987
def task_987(money,number)
    checker1 = rand(1..6)
    checker2 = rand(1..6)
    sum = checker1+checker2

    if (number === sum)
        p "Y WIN #{money*4}"
    else
        if (number > sum)
            p "Y WIN #{money*2}"
        else
            p "Y LOSE #{money}"
        end
    end
end
#988
def task_988(h1,h2,h3,h4)
    if h1 === true
        your_horse_name = "horse1"
    end
    if h2 === true
        your_horse_name = "horse2"
    end
    if h3 === true
        your_horse_name = "horse3"
    end
    if h4 === true
        your_horse_name = "horse4"
    end
    horse1 = rand(1..1000)
    horse2 = rand(1..1000)
    horse3 = rand(1..1000)
    horse4 = rand(1..1000)
    race = {"horse1" => horse1,"horse2" => horse2,"horse3" => horse3,"horse4" => horse4}
    p "y rate on #{your_horse_name}"
    p result = race.sort_by {|key, value| value}
    p "WIN #{result[0][0]}"
    if result[0][0] === your_horse_name
        p "Y WIN #{result[0][1]} $"
    else
        p 'Y LOSE'
    end
end
#1044
def task_1044
    array = [222,111,312,322,232,232,232,22,22,22]
        p result = array.sort {|value| value}
        p group1 = result[0] + result[9] + result[2] + result[7] + result[4]
        p group2 = result[1] + result[8] + result[3] + result[6] + result[5]
end
#1011
def task_1011(number)
    result = 990
    d1 = result - 100
    if d1 < 0 
        d1 = 0
    end
    d2 = result + 100
    if d2 > 1000
        d2 = 1000
    end
    dd1 = result - 50
    if dd1 < 0 
        dd1 = 0
    end
    dd2 = result + 50
    if dd2 > 1000 
        dd2 = 1000
    end
    ddd1 = result - 5
    if ddd1 < 0 
        ddd1 = 0
    end
    ddd2 = result + 5
    if ddd2 > 1000 
        ddd2 = 1000
    end
    case number
        when result
          p "TRUE WIN"
        when ddd1..ddd2
          p "VERRY HOT + - 10"
        when dd1..dd2
          p "VERRY HOT + - 50"
        when d1..d2
          p "HOT + - 100"
        else
          p "COLD"
    end
end

#PRINTS RESULT
p '1011'
task_1011(95)
p '1044'
task_1044
p '#988'
task_988(false,false,true,false)
p '#987'
task_987(1000,7)
p '#986'
task_986(1,3,4)
p '#1'
task_01(1,2)
p '#2'
p task_02(-21,2)
p '#3'
task_03(2)
p '#4'
task_04(9,16)
p '#5'
task_05(1,2)
p '#6'
task_06(1,2)
p '#10'
task_10(1,2)
p '#13'
task_13(2)
p '#16'
task_16(11)
p '#28'
p task_28(2)
p '#29'
p task_29(2,3)
p '#30'
p task_30(2)
p '38'
p task_38(2,4)
p '39'
p task_39(2,3)
p '40'
p task_40(2,2)
p '41'
p task_41(2,2,22)
p '43'
task_43(2,2,22)
p '45'
task_45(1,3,4,5)
p '78'
p task_78(2,3)
p '80'
task_80(11)
p task_105(5,2)