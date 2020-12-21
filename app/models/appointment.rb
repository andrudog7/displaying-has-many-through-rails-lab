class Appointment < ActiveRecord::Base 
    belongs_to :doctor 
    belongs_to :patient
    
    def formatted_date
        date = self.appointment_datetime.to_formatted_s(:long)
        month = date.split[0]
        day = date.split[1]
        year = date.split[2]
        time = date.split[3]
        "#{month} #{day} #{year} at #{time}" 
    end

end