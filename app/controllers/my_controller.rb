class MyController < ApplicationController
  def post
    @my1="Contoh Variable Dari Action"
    @my2="Macam Macam Bahasa Pemprograman"
      
      @data =[
        "1, Pemprograman Ruby",
        "2, Pemprograman C++",
        "3, Pemprograman PHP",
        "4, Pemprograman Java",
        "5, Pemprograman Python",
        "6, Pemprograman Go",
        "7, Pemprograman Kotlin",
      ]
  end
end
