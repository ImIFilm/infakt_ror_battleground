class CaesarCipher
    def initialize(word, number=13)
        @word=word
        @number=number%26
    end

    #def initialize(word, number)
     #   @word=word
     #   @number=number
    #end

    def perform
        word2=""
        @word.each_char do |c|
            if (c.ord.between?(65,90))
                if (c.ord+@number)>90
                    word2+=(c.ord+@number-90+64).chr
                else
                    word2+=(c.ord+@number).chr
                end
            elsif (c.ord.between?(97,122))
                if (c.ord+@number)>122
                    word2+=(c.ord+@number-122+96).chr
                else
                    word2+=(c.ord+@number).chr
                end
            else
                word2+=c
            end
        end
        return word2
    end


end

#CaesarCipher.new("Testowy Tekst").perform
#CaesarCipher.new("Ala ma...psa!", 4).perform