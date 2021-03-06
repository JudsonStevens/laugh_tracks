RSpec.describe 'Visitor' do
  it 'should see count of specials for comedians' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)
    Comedian.create(name: 'New Artist', age: 25)
    Special.create(name: 'Special', comedian_id: 1)
    Special.create(name: 'Specialer', comedian_id: 1)
    Special.create(name: 'Specialest', comedian_id: 1)
    Special.create(name: 'More Special', comedian_id: 2)
    Special.create(name: 'Most Special', comedian_id: 2)

    visit('/comedians')

    special_count = 3
    second_special_count = 2

    expect(page).to have_content(special_count)
    expect(page).to have_content(second_special_count)
  end
end
