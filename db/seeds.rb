# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

today = DateTime.now.midnight
#puts("Today")
#puts(today)

# -----------------------------------------------------------------------------
#MachineClass
machineClassA = MachineClass.create({name:'Machine Class A'}) unless machineClassA = MachineClass.find_by(name:'Machine Class A')
machineClassB = MachineClass.create({name:'Machine Class B'}) unless machineClassB = MachineClass.find_by(name:'Machine Class B')
machineClassC = MachineClass.create({name:'Machine Class C'}) unless machineClassC = MachineClass.find_by(name:'Machine Class C')
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
#MachineManufacturer
machineManufacturerA = MachineManufacturer.create({code:'A', name:'Machine Manufacturer A'}) unless machineManufacturerA = MachineManufacturer.find_by(code:'A')
machineManufacturerB = MachineManufacturer.create({code:'B', name:'Machine Manufacturer B'}) unless machineManufacturerB = MachineManufacturer.find_by(code:'B')
machineManufacturerC = MachineManufacturer.create({code:'C', name:'Machine Manufacturer C'}) unless machineManufacturerC = MachineManufacturer.find_by(code:'C')
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
#MachineModel
machineModelA001 = MachineModel.create({code:'A001', name:'Model A001', machine_manufacturer:machineManufacturerA, machine_class:machineClassA}) unless machineModelA001 = MachineModel.find_by(machine_manufacturer: machineManufacturerA, code:'A001')
machineModelA002 = MachineModel.create({code:'A002', name:'Model A002', machine_manufacturer:machineManufacturerA, machine_class:machineClassB}) unless machineModelA002 = MachineModel.find_by(machine_manufacturer: machineManufacturerA, code:'A002')
machineModelA003 = MachineModel.create({code:'A003', name:'Model A003', machine_manufacturer:machineManufacturerA, machine_class:machineClassC}) unless machineModelA003 = MachineModel.find_by(machine_manufacturer: machineManufacturerA, code:'A003')

machineModelB001 = MachineModel.create({code:'B001', name:'Model B001', machine_manufacturer:machineManufacturerB, machine_class:machineClassA}) unless machineModelB001 = MachineModel.find_by(machine_manufacturer: machineManufacturerB, code:'B001')
machineModelB002 = MachineModel.create({code:'B002', name:'Model B002', machine_manufacturer:machineManufacturerB, machine_class:machineClassB}) unless machineModelB002 = MachineModel.find_by(machine_manufacturer: machineManufacturerB, code:'B002')
machineModelB003 = MachineModel.create({code:'B003', name:'Model B003', machine_manufacturer:machineManufacturerB, machine_class:machineClassC}) unless machineModelB003 = MachineModel.find_by(machine_manufacturer: machineManufacturerB, code:'B003')

machineModelC001 = MachineModel.create({code:'C001', name:'Model C001', machine_manufacturer:machineManufacturerC, machine_class:machineClassA}) unless machineModelC001 = MachineModel.find_by(machine_manufacturer: machineManufacturerC, code:'C001')
machineModelC002 = MachineModel.create({code:'C002', name:'Model C002', machine_manufacturer:machineManufacturerC, machine_class:machineClassB}) unless machineModelC002 = MachineModel.find_by(machine_manufacturer: machineManufacturerC, code:'C002')
machineModelC003 = MachineModel.create({code:'C003', name:'Model C003', machine_manufacturer:machineManufacturerC, machine_class:machineClassC}) unless machineModelC003 = MachineModel.find_by(machine_manufacturer: machineManufacturerC, code:'C003')
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Alfa Account
accountA   = Account.create({code: '001', name:'Alfa Account'}) unless accountA = Account.find_by(code:'001')
locationA1 = Location.create({code: '001', name:'Alfa Location 001', account:accountA}) unless locationA1 = Location.find_by(account:accountA, code:'001')
locationA2 = Location.create({code: '002', name:'Alfa Location 002', account:accountA}) unless locationA2 = Location.find_by(account:accountA, code:'002')
locationA3 = Location.create({code: '003', name:'Alfa Location 003', account:accountA}) unless locationA3 = Location.find_by(account:accountA, code:'003')

# Machine that is not on an account
newMachine = Machine.create({machine_model:machineModelA001, serial_number:'1234567890', code: 'A001_1234567890'}) unless newMachine = machine_A001_1234567890 = Machine.find_by(machine_model:machineModelA001, serial_number:'1234567890')
MachineAccountLocation.create(machine:newMachine, begin_date_time:today) unless MachineAccountLocation.find_by(machine:newMachine, account:nil, location:nil, end_date_time:nil)

# Machine that is on an account only
newMachine = Machine.create({machine_model:machineModelA001, serial_number:'2345678901', code: 'A001_2345678901'}) unless newMachine = Machine.find_by(machine_model:machineModelA001, serial_number:'2345678901')
MachineAccountLocation.create(machine:newMachine, account:accountA, begin_date_time:today) unless MachineAccountLocation.find_by(machine:newMachine, account:accountA, location:nil, end_date_time:nil)

# Machine that is on an account/location
newMachine = Machine.create({machine_model:machineModelA001, serial_number:'3456789012', code: 'A001_3456789012'}) unless newMachine = Machine.find_by(machine_model:machineModelA001, serial_number:'3456789012')
MachineAccountLocation.create(machine:newMachine, account:accountA, location:locationA1, begin_date_time:today) unless MachineAccountLocation.find_by(machine:newMachine, account:accountA, location:locationA1, end_date_time:nil)

# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Bravo Account
accountB   = Account.create({code: '002', name:'Bravo Account'}) unless accountB = Account.find_by(code:'002')
locationB1 = Location.create({code: '001', name:'Bravo Location 001', account:accountB}) unless locationB1 = Location.find_by(account:accountB, code:'001')
locationB2 = Location.create({code: '002', name:'Bravo Location 002', account:accountB}) unless locationB2 = Location.find_by(account:accountB, code:'002')
locationB3 = Location.create({code: '003', name:'Bravo Location 003', account:accountB}) unless locationB3 = Location.find_by(account:accountB, code:'003')
# -----------------------------------------------------------------------------

# -----------------------------------------------------------------------------
# Charlie Account
accountC   = Account.create({code: '003', name:'Charlie Account'}) unless Account.find_by(code:'003')
locationC1 = Location.create({code: '001', name:'Charlie Location 001', account:accountC}) unless locationC1 = Location.find_by(account:accountC, code:'001')
locationC2 = Location.create({code: '002', name:'Charlie Location 002', account:accountC}) unless locationC2 = Location.find_by(account:accountC, code:'002')
locationC3 = Location.create({code: '003', name:'Charlie Location 003', account:accountC}) unless locationC3 = Location.find_by(account:accountC, code:'003')
locationC4 = Location.create({code: '004', name:'Charlie Location 004', account:accountC}) unless locationC4 = Location.find_by(account:accountC, code:'004')
locationC5 = Location.create({code: '005', name:'Charlie Location 005', account:accountC}) unless locationC5 = Location.find_by(account:accountC, code:'005')
# -----------------------------------------------------------------------------

