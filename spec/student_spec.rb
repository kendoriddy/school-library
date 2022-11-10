require_relative('spec_helper')

describe Student do
  before(:each) do
    @student = Student.new(nil, 21, 'John', parent_permission: true)
  end

  describe '#new' do
    context 'When creating a new student' do
      it 'Should return a Student object' do
        expect(@student).to be_an_instance_of(Student)
      end

      it 'Should return the correct name' do
        expect(@student.name).to eq('John')
      end

      it 'Should return the correct age' do
        expect(@student.age).to eq(21)
      end

      it 'Should return the correct permission' do
        expect(@student.parent_permission).to eq(true)
      end
    end
  end
end
