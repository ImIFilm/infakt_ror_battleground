class PassedOrFailed
    def initialize(students, val)
        @students=students
        @val=val
    end

    def result
        p=Hash.new
        f=Hash.new
        @students.each do |key, value|
            if value>=@val.to_i
                p[key] = value
            else 
                f[key] = value
            end
        end
        res=Hash.new
        res[:passed]=p
        res[:failed]=f
        puts result
    end
end
