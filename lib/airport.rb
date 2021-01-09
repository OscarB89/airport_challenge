class Airport

    attr_reader :plane

    def initialize
        @hangar = []
    end

    def land(plane)
        fail 'Airport is full' if @plane
        @hangar << plane
    end

    def take_off(plane)
        @hangar.pop(plane)
    end

end