RSpec.describe 'Visitor' do
  it 'should see all comedians listed with name and age' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)

    comedian_name = "Reggie Watts"

    visit('/comedians')

    expect(page).to have_content(comedian_name)
  end

  it 'should see all comedians also listed with specials' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)
    Special.create()

end
