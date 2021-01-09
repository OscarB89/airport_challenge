require 'airport'

describe Airport do

    it 'should respond to land' do
        expect(Airport.new).to respond_to(:land).with(1).argument
    end

    it 'reports plane in hangar' do
        plane = Plane.new
        expect(subject.land(plane)).to include plane
    end

    it 'should repond to take_off' do
        expect(Airport.new).to respond_to(:take_off).with(1).argument
    end

    describe '#land' do
        it 'raises an error when the airport is full' do
            Airport::DEFAULT_CAPACITY.times { subject.land(Plane.new) }
            expect { subject.land(Plane.new) }.to raise_error 'Airport is full'
        end
    end

    # it 'confirms that the plane is not longer in the hangar' do
    #     expect(subject.take_off(Plane.new)).to eq @hangar.pop(Plane.new)
    # end

end
