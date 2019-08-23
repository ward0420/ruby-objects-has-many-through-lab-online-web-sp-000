class Patient
  
  attr_accessor :name
  
  def initialize(name)
    @name = name
    @Appointment = []
  end
  
  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
end