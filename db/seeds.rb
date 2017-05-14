if (u1 = User.find_by_email('admin@localhost')).nil?
  u1 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'admin@localhost')
  u1.activate!
end
if (u2 = User.find_by_email('user@localhost')).nil?
  u2 = User.create!(password: 'qwerty', password_confirmation: 'qwerty',
    email: 'user@localhost')
  u2.activate!
end
r1, r2 = Role.create_main_roles
ru1 = RoleUser.create(role: r1, user: u1)
ru2 = RoleUser.create(role: r2, user: u2)

Cinema.destroy_all; Film.destroy_all; Actor.destroy_all
n = 10
for i in 0 ... n
  Cinema.create(name_c: "name_c" + i.to_s, address_c: "address" + i.to_s)
  Film.create(name_f: "name_f" + i.to_s, genre_f: "genre_f" + i.to_s,
    lasting_f: "lasting_f" + i.to_s, country_f: "country_f" + i.to_s,
    companies_f: "companies_f" + i.to_s, min_age: (i + 10))
  Actor.create(l_name: "l_name" + i.to_s, f_name: "f_name" + i.to_s,
    s_name: "s_name" + i.to_s, d_birthday: Date.today)
end

for i in Cinema.all do
  a = Address.new
  a.cinema = i
  a.film = Film.all[(0...n).to_a.shuffle[(rand * n).to_i]]
  a.save
end

for i in Film.all do
  a = Address.new
  a.cinema = Cinema.all[(0...n).to_a.shuffle[(rand * n).to_i]]
  a.film = i
  a.save

  a = Part.new(role_a: "role" + i.id.to_s)
  a.film = i
  a.actor = Actor.all[(0...n).to_a.shuffle[(rand * n).to_i]]
  a.save
end

for i in Actor.all do
  a = Part.new(role_a: "role" + i.id.to_s)
  a.actor = i
  a.film = Film.all[(0...n).to_a.shuffle[(rand * n).to_i]]
  a.save
end
