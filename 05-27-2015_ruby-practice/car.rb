class Car

  def initialize(model, type, capacity)
    #@model = model
    #@type =  type
    #@capacity = capacity
    @model, @type, @capacity = model, type, capacity
    puts "creating the car..."
  end

  def drive
    pump_gas
    print "Driving..."
  end

  def stop
    print "Stopping.."
    wash
  end

  def park
    print "Parking.."
  end

  def wash
    print "Washing the car..."
  end

  def ticket
    print "Getting pulled over for speeding"
  end

  def self.max_speed
    print "200kph"
  end

  private

  #the below methods are private and can't be called when running c = Car.new, unless called from within this class.

  def pump_gas
    print "Pumping gas..."
  end

  def start_engine
    print "Igniting engine..."
  end

end
