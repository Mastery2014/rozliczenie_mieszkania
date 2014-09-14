class Reading < ActiveRecord::Base
  after_save :calculate_usage
  
  private
  def calculate_usage
    actual_reading = self
    oplaty = Olbigation.new
    
    if Reading.count == 0
      #wtedy nic nie robimy, bo to zuzycie wlasciciela
    else 
      #szukamy poprzedni odczyt
      previous_reading = Reading.order('read_at desc')[1] 
      #szukamy aktualną stawkę
      stawki = Rate.all.order('valid_from asc') 
      temp_poprzednia_stawka = nil 
      actual_rate = nil
      stawki.each do |stawka|
        if stawka.read_at >= Date.today
          if temp_poprzednia_stawka  <= Date.today
            actual_rate = temp_poprzednia_stawka   
          end    
        end
        temp_poprzednia_stawka = stawka
      end
      #obliczamy zużycie
      oplaty.electricity = actual_reading.electricity - previous_reading.electricity
      oplaty.electricity_price = oplaty.electricity*actual_rate.electricity
      
      oplaty.hot_water = actual_reading.hot_water - previous_reading.hot_water
      oplaty.hot_water_price = oplacty.hot_water*actual_rate.hot_water
      
      oplaty.cold_water = actual_reading.cold_water - previous_reading.cold_water
      oplaty.cold_water_price = oplacty.cold_water*actual_rate.cold_water
      
      oplaty.central_heating = actual_reading.central_heating - previous_reading.central_heating
      oplaty.central_heating_price = oplaty.central_heating*actual_rate.central_heating
      #zachowujemy zobowiazania
      oplaty.save
    end
  end
end
