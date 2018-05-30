class PassedOrFailed
    def initialize(students, val)
        @students=students
        @val=val
    end

    def perform
        p=Hash.new
        f=Hash.new
        @students.each do |key, value|
            if value.to_i>=@val.to_i
                p[key] = value.to_i
            else 
                f[key] = value.to_i
            end
        end
        results=Hash.new
        results[:passed]=p
        results[:failed]=f
        return results
    end

end
