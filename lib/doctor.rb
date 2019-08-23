class Doctor
  
  attr_accessor :name, :appointment
  
  @@all = []
  
  def initialize(name)
    @name =  name
    @@all << self
    @appointment = []
    @patients = []
  end
  
  def name
    @name
  end
  
  def self.all
    @@all
  end
  
  def appointments
    @appointment
  end
  
  def new_appointment(date, patient_name)
    Appointment.new(date, patient_name, self)
  end
  
  def patients
    appointment.collect {|x| x}
  end
end