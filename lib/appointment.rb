class Appointment 
  attr_accessor :date, :doctor
  attr_reader :patient
  @@all = []
  
  def initialize(date, patient, doctor)
    @patient = patient 
    @date = date 
    @doctor = doctor
    save
  end
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 