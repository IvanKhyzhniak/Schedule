# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dir["../sch/app/assets/images/*"].map do |n|
  puts File.basename(n,".*") 
  Faculty.create( name: File.basename(n,".*") )
end

Faculty.all.each do |f|
  (1..4).each do |n|
    f.courses.create name: "#{n}-й курс"
  end 
end

# CREATING GROUPS FOR FMIT THIRD COURSE
%w[СТ-Б15 МТ-Б15-1 МТ-Б15-2 
   ІНФ-Б15 ПМ-Б15-1 ПМ-Б15-2(а) 
   ПМ-Б15-2(б) ПМ-Б15-3 ДЗ-Б15 
   ІБАС-Б17-мс
  ].each do |g|
     Course.find(3).groups.create(name: g)
end
   

=begin

["Факультет математики та інформаційних технологій",
 "Фізико-технічний факультет",
 "Хімічний факультет",
 "Біологічний факультет",
 "Історичний факультет",
 "Філологічний факультет",
 "Факультет іноземних мов",
 "Економічний факультет",
 "Юридичний факультет"].each { |f| Faculty.create(name: File.basename(f,".*"))}
=end