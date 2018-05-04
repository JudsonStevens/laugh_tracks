RSpec.describe 'Visitor' do
  it 'should see average of comedians age' do
    Comedian.create(name: 'Reggie Watts', age: 45)
    Comedian.create(name: 'Ali Wong', age: 35)
    Comedian.create(name: 'New Artist', age: 29)

    average_comedian_age = 36.3

    visit('/comedians')

    expect(page).to have_content(average_comedian_age)
  end
end
