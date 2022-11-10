require_relative('spec_helper')

describe Teacher do
  before(:each) do
    @teacher = Teacher.new('Math', 21, 'John', parent_permission: true)
  end

  describe '#new' do
    context 'When creating a new teacher' do
      it 'Should return a Teacher object' do
        expect(@teacher).to be_an_instance_of(Teacher)
      end

      it 'Should return the correct name' do
        expect(@teacher.name).to eq('John')
      end

      it 'Should return the correct age' do
        expect(@teacher.age).to eq(21)
      end

      it 'Should return the correct permission' do
        expect(@teacher.parent_permission).to eq(true)
      end
    end
  end
end
