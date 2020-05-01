class Doctor 

    @@all = []

    attr_accessor :name, :appointment

    def initialize(name)
        @name = name 

        @@all << self
    end

    def self.all 
        @@all
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def appointments 
        Appointment.all.select { |app| app.doctor == self }
        
    end 

    def patients 
        patients = []
        Appointment.all.select do |pat| 
            if pat.doctor == self 
                patients << pat.patient
                patients << pat.date
            end
        end
        patients
    end

end