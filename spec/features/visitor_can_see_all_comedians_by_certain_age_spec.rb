RSpec.describe 'Visitor' do
  it 'can see all comedians with a certain age' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)
    Comedian.create(name: 'New Artist', age: 29)
    Special.create(name: 'Disinformation', comedian_id: 1)

    comedian_name = 'Reggie Watts'
    comedian_age = 45
    comedian_special = 'Disinformation'

    visit('/comedians/45')

    expect(page).to have_content(comedian_name)
    expect(page).to have_content(comedian_age)
    expect(page).to have_content(comedian_special)
  end
end
