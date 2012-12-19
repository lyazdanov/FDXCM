# encoding: utf-8
# Autogenerated by the db:seed:dump task
# Do not hesitate to tweak this to your needs

# "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime
# "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime

# Businesses
	business1 = Business.create({ :name => "Delivery Experts of NC", :taxIDNumber => "123-45-6789", :address => "123 Main St.", :city => "Charlotte", :state => "NC", :zip => "28202", :country => "USA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
	business2 = Business.create({ :name => "Airport Express", :taxIDNumber => "234-56-7890", :address => "890 South Av.", :city => "Atlanta", :state => "GA", :zip => "30303", :country => "USA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Addendums
	addendum1 = Addendum.create({ :fedexAddendumName => "G", :fedexAddendumNumber => "01012012", :fedexContractorAddendumName => "stopIncreases", :fedexContractorAddendumNumber => "1", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business1.id }, :without_protection => true )
	addendum2 = Addendum.create({ :fedexAddendumName => "G", :fedexAddendumNumber => "01012012", :fedexContractorAddendumName => "Increased Stop Pay", :fedexContractorAddendumNumber => "A", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business2.id }, :without_protection => true )
	addendum3 = Addendum.create({ :fedexAddendumName => "H", :fedexAddendumNumber => "02022012", :fedexContractorAddendumName => "Increased Fuel Pay", :fedexContractorAddendumNumber => "B", :content => "This is a whole bunch of text about what the Addendum is and is about.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :fedexContract_id => business2.id }, :without_protection => true )

# DailyDataDeliveryException
DailyDataDeliveryException.create({ :startDate => nil, :endDate => nil, :dailyData_id => nil, :deliveryException_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

DailyDataEmployee.create({ :employee_id => nil, :dailyData_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

DailyDataVehicle.create({ :vehicle_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :daily_data_id => nil }, :without_protection => true )

DailyDatum.create({ :deliveryStop => nil, :deliveryPackage => nil, :pickupStop => nil, :pickupPackage => nil, :calltag => nil, :didNotAttempt => nil, :inboundLocalService => nil, :earlyPickUp => nil, :latePickUp => nil, :startTime => nil, :endTime => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Exceptions
  exception02 = DeliveryException.create({ :exceptionType => "2", :exceptionDescription => "Code 02:DNA", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception03 = DeliveryException.create({ :exceptionType => "3", :exceptionDescription => "Code 03:Address Missing", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception04 = DeliveryException.create({ :exceptionType => "4", :exceptionDescription => "Code 04:Closed", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  exception07 = DeliveryException.create({ :exceptionType => "7", :exceptionDescription => "Code 07:Security", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

Employee.create({ :firstName => nil, :lastName => nil, :fedexNumber => nil, :contractorNumber => nil, :hireDate => nil, :dateOfBirth => nil, :activeBoolean => nil, :startDate => nil, :endDate => nil, :terminationDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :business_id => nil }, :without_protection => true )

EmployeeManagerAssignment.create({ :startDate => nil, :endDate => nil, :activeBoolean => nil, :employee_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

EmployeePay.create({ :employee_id => nil, :startDate => nil, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :pay_id => nil }, :without_protection => true )

EmployeePsa.create({ :startDate => nil, :endDate => nil, :activeBoolean => nil, :employee_id => nil, :psa_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

EmployeeTerminal.create({ :startDate => nil, :endDate => nil, :activeBoolean => nil, :employee_id => nil, :terminal_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# FedexContract
  downtown = FedexContract.create({ :fedexContractName => "NC-24401", :fedexContractNumber => 5954441, :contractorContractName => "First Contract", :contractorContractNumber => 1, :content => "This is my first contract signed on 1/1/12! YEAH!", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :businesses_id => business1.id, :deliveryStopPay => 2.00, :deliveryPackagePay => 0.50, :pickupStopPay => 3.00, :pickupPackagePay => 1.00, :coreZoneSupplementalPay => 54.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.25, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 50.00, :uniformCost => 3.00 }, :without_protection => true )
  uptown = FedexContract.create({ :fedexContractName => "NC-27327", :fedexContractNumber => 5954493, :contractorContractName => "Expansion 1", :contractorContractNumber => 2, :content => "This is my first expansion!", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :businesses_id => business1.id, :deliveryStopPay => 2.25, :deliveryPackagePay => 0.60, :pickupStopPay => 3.25, :pickupPackagePay => 1.10, :coreZoneSupplementalPay => 0.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.25, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 0.00, :uniformCost => 3.00 }, :without_protection => true )
  rural = FedexContract.create({ :fedexContractName => "SC-72641", :fedexContractNumber => 5954442, :contractorContractName => "Expansion", :contractorContractNumber => 1, :content => "This is my rural contract.", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :businesses_id => business2.id, :deliveryStopPay => 2.00, :deliveryPackagePay => 0.50, :pickupStopPay => 3.00, :pickupPackagePay => 1.00, :coreZoneSupplementalPay => 125.00, :vehicleAvailabilityPay => 40.00, :fuelSupplementPay => 1.35, :toolRentalCost => 35.00, :internationalPackagePay => 3.00, :hazardousPackagePay => 2.00, :vacationProgramCost => 75.00, :uniformCost => 3.00 }, :without_protection => true )

# FlatPay
  FlatPay.create({ :payAmount => nil, :startDate => nil, :endTime => nil, :activeBoolean => nil, :frequency_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Frequency
  daily = Frequency.create({ :frequencyInterval => "Daily", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  weekly = Frequency.create({ :frequencyInterval => "Weekly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  biweekly = Frequency.create({ :frequencyInterval => "Bi-Weekly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  monthly = Frequency.create({ :frequencyInterval => "Monthly", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Note
  Note.create({ :notable_id => nil, :notable_type => nil, :content => nil, :startDate => nil, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

Pay.create({ :amount => nil, :datetime => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

PayProfile.create({ :profileName => nil, :employee_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :flatPay_id => nil, :productionPay_id => nil }, :without_protection => true )

ProductionPay.create({ :delivery_package_pay => nil, :delivery_stop_pay => nil, :pickup_package_pay => nil, :pickup_stop_pay => nil, :hourly_pay => nil, :task_pay => nil, :incident_dock_pay => nil, :startDate => nil, :endDate => nil, :activeBoolean => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

Psa.create({ :fedexPSAName => nil, :fedexPSANumber => nil, :contractorPSAName => nil, :contractorPSANumber => nil, :activeBoolean => nil, :startDate => nil, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => nil, :businesses_id => nil }, :without_protection => true )

PsaState.create({ :psa_id => nil, :state_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

Psazip.create({ :psa_id => nil, :zip_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Region
  central = Region.create({ :fedexRegionName => "Central", :fedexRegionNumber => 8, :fedexRegionPhone => "704-395-4200", :contractorRegionName => "Main", :contractorRegionNumber => 1, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  mountain = Region.create({ :fedexRegionName => "Mountain", :fedexRegionNumber => 91, :fedexRegionPhone => "704-395-5555", :contractorRegionName => "Other", :contractorRegionNumber => 2, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Role
  admin = Role.create({ :name => "admin", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  owner = Role.create({ :name => "owner", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  manager = Role.create({ :name => "manager", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  employee = Role.create({ :name => "employee", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# ServiceType
  ground = ServiceType.create({ :serviceType => "Ground", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  hd = ServiceType.create({ :serviceType => "Home Delivery", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  maintenance = ServiceType.create({ :serviceType => "Maintenance", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  lh = ServiceType.create({ :serviceType => "Line-Haul", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# State
  nc = State.create({ :state => "North Carolina", :abbreviation => "NC", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  sc = State.create({ :state => "South Carolina", :abbreviation => "SC", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Terminal
  chal = Terminal.create({ :fedexTerminalName => "CHAL", :fedexTerminalNumber => 281, :contractorTerminalName => "CHAL", :contractorTerminalNumber => "1", :colocationBoolean => false, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => central.id }, :without_protection => true )
  ashe = Terminal.create({ :fedexTerminalName => "ASHE", :fedexTerminalNumber => 288, :contractorTerminalName => "Mountains", :contractorTerminalNumber => "2", :colocationBoolean => true, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => mountain.id }, :without_protection => true )
  wilm = Terminal.create({ :fedexTerminalName => "WILM", :fedexTerminalNumber => 284, :contractorTerminalName => "Beach", :contractorTerminalNumber => "3", :colocationBoolean => false, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :regions_id => central.id }, :without_protection => true )

# User
  User.create({ :contractorBoolean => nil, :activeBoolean => nil, :employee_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :email => "", :encrypted_password => "", :reset_password_token => nil, :reset_password_sent_at => nil, :remember_created_at => nil, :sign_in_count => 0, :current_sign_in_at => nil, :last_sign_in_at => nil, :current_sign_in_ip => nil, :last_sign_in_ip => nil }, :without_protection => true )

# VehicleFuel
  gas20 = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "20", :mpg => 10, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  gas30 = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "30", :mpg => 9, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  diesel = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "25", :mpg => 8, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  cng = VehicleFuel.create({ :fuelType => "Gas", :fuelTankSize => "40", :mpg => 12, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# VehicleOdometer
  newmiles = VehicleOdometer.create({ :odometerReading => 100, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  lowmiles = VehicleOdometer.create({ :odometerReading => 50000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  medmiles = VehicleOdometer.create({ :odometerReading => 150000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  highmiles = VehicleOdometer.create({ :odometerReading => 250000, :startDate => "Mon, 17 Dec 2012 01:01:01 -0500".to_datetime, :endDate => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# VehicleType
  p700 = VehicleType.create({ :vehicleSize => "p700", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p900 = VehicleType.create({ :vehicleSize => "p900", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p1000 = VehicleType.create({ :vehicleSize => "p1000", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  p1200 = VehicleType.create({ :vehicleSize => "p1200", :bulkBoolean => false, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk20 = VehicleType.create({ :vehicleSize => "Bulk - 20 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk24 = VehicleType.create({ :vehicleSize => "Bulk - 24 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  bulk26 = VehicleType.create({ :vehicleSize => "Bulk - 26 Ft", :bulkBoolean => true, :bodyMake => nil, :bodyModel => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# ZIP
  # CHAL
  o2 = Zip.create({ :zip => "28202", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  o3 = Zip.create({ :zip => "28203", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  o9 = Zip.create({ :zip => "28209", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  one7 = Zip.create({ :zip => "28217", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  two12 = Zip.create({ :zip => "28012", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  # ASHE
  eight01 = Zip.create({ :zip => "28801", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  eight25 = Zip.create({ :zip => "28825", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )
  nine01 = Zip.create({ :zip => "28901", :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& REFERENCING

# UserRole
  UserRole.create({ :user_id => nil, :role_id => nil, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil }, :without_protection => true )

# Vehicle
  v1 = Vehicle.create({ :fedexVehicleNumber => "71234", :fedexVehicleName => nil, :contractorNumber => "71234", :contractorName => "Carrot", :vin => "1FTZX1729WNA55381", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p700.id, :vehicleFuel_id => gas20.id, :vehicleOdometer_id => newmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business1.id }, :without_protection => true )
  v2 = Vehicle.create({ :fedexVehicleNumber => "72345", :fedexVehicleName => nil, :contractorNumber => "72345", :contractorName => "Celery", :vin => "2FTZX1729WNA55382", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p900.id, :vehicleFuel_id => gas30.id, :vehicleOdometer_id => lowmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business1.id }, :without_protection => true )
  v3 = Vehicle.create({ :fedexVehicleNumber => "73456", :fedexVehicleName => nil, :contractorNumber => "73456", :contractorName => "Onion", :vin => "3FTZX1729WNA55383", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p1200.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => lh.id, :business_id => business1.id }, :without_protection => true )
  v4 = Vehicle.create({ :fedexVehicleNumber => "81234", :fedexVehicleName => nil, :contractorNumber => "81234", :contractorName => "Rusty Wallace", :vin => "4FTZX1729WNA55384", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => bulk24.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => ground.id, :business_id => business2.id }, :without_protection => true )
  v5 = Vehicle.create({ :fedexVehicleNumber => "82345", :fedexVehicleName => nil, :contractorNumber => "82345", :contractorName => "Daryl Waltrip", :vin => "5FTZX1729WNA55385", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => nil, :activeBoolean => true, :vehicleType_id => p1000.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => medmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => hd.id, :business_id => business2.id }, :without_protection => true )
  v6 = Vehicle.create({ :fedexVehicleNumber => "83456", :fedexVehicleName => nil, :contractorNumber => "83456", :contractorName => "Dale Earnhardt", :vin => "6FTZX1729WNA55386", :startDate => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :endDate => "Sun, 1 Apr 2012 01:01:01 -0500".to_datetime, :activeBoolean => false, :vehicleType_id => bulk26.id, :vehicleFuel_id => diesel.id, :vehicleOdometer_id => highmiles.id, :created_at => "Sun, 1 Jan 2012 01:01:01 -0500".to_datetime, :updated_at => nil, :service_type_id => maintenance.id, :business_id => business2.id }, :without_protection => true )
