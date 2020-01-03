class Doctor 
  attr_accessor :name 
  @@all = []
    
  def initialize(name)
    @name = name 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def appointments
    Appointment.all.select {|appt| appt.doctor == self}
  end 
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end 
  
  def patients 
    appointments.collect do |appt|
      appt.patient
      # binding.pry
    end
  end 
  
end 