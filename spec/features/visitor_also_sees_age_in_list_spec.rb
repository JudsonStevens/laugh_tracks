RSpec.describe 'Visitor' do
  it 'should see comedians listed with specials' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)
    Comedian.create(name: 'New Artist', age: 25)
    Special.create(name: 'Special', comedian_id: 1)
    Special.create(name: 'Specialer', comedian_id: 1)
    Special.create(name: 'Specialest', comedian_id: 1)
    Special.create(name: 'More Special', comedian_id: 2)
    Special.create(name: 'Most Special', comedian_id: 2)

    first_special_name = 'Special'
    second_special_name = 'More Special'

    visit('/comedians')

    expect(page).to have_content(first_special_name)
    expect(page).to have_content(second_special_name)
  end
end
