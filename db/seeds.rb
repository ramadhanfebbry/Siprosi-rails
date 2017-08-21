# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
  User::ROLE.each do |a|
    User.create(email: "#{a}@siprosi.com", username: a, name: a, password: "12345678", role: a)
  end

connection = ActiveRecord::Base.connection()
connection.execute("INSERT INTO barangs (id_barang, kategori_id, type_barang, unit, warna, berat, warehouse) VALUES
('GTG-00001', 1, 'Victoria State Nok Atas', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00002', 1, 'Victoria State Nok Bawah', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00003', 1, 'Victoria State Nok Samping', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00004', 1, 'Victoria State Nok Ujung', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00005', 1, 'Victoria State Nok Smp Ujung', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00006', 1, 'Victoria State Starter', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00007', 1, 'Victoria State Nok Apex', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00008', 1, 'Victoria State Nok Siku', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00009', 1, 'Victoria Multiline Nok Atas', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00010', 1, 'Victoria Multiline Nok Bawah', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00011', 1, 'Victoria Multiline Nok Samping', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00012', 1, 'Victoria Multiline Nok Ujung', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00013', 1, 'Victoria Multiline Nok Smp Ujung', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00014', 1, 'Victoria Multiline Starter', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00015', 1, 'Victoria Multiline Apex', 'pcs', 'Natural', '4.75', 'P-PGD GTG Warna-site'),
('GTG-00016', 1, 'Victoria Multiline Nok Siku', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00017', 1, 'Victoria Pine Nok Atas', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00018', 1, 'Victoria Pine Nok Bawah', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00019', 1, 'Victoria Pine Nok Samping', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00020', 1, 'Victoria Pine Nok Ujung', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00021', 1, 'Victoria Pine Nok SmpUjung', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00022', 1, 'Victoria Pine Starter', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00023', 1, 'Victoria Pine Apex', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00024', 1, 'Victoria Pine Nok Siku', 'pcs', 'Natural', '4.8', 'P-PGD GTG Warna-site'),
('GTG-00025', 1, 'Victoria Clssic Nok Atas', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00026', 1, 'Victoria Clssic Nok Bawah', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00027', 1, 'Victoria Clssic Nok Samping', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00028', 1, 'Victoria Clssic Nok Ujung', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00029', 1, 'Victoria Clssic Smp Ujung', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00030', 1, 'Victoria Clssic Starter', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00031', 1, 'Victoria Clssic Apex', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00032', 1, 'Victoria Clssic Nok SIku', 'pcs', 'Natural', '4.85', 'P-PGD GTG Warna-site'),
('GTG-00033', 1, 'Floral Nok Atas', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00034', 1, 'Floral Nok Bawah', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00035', 1, 'Floral Nok Saming', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00036', 1, 'Floral Nok Ujung', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00037', 1, 'Floral Nok Smp Ujung', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00038', 1, 'Floral Starter', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00039', 1, 'Floral Apex', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00040', 1, 'Floral Nok Siku', 'pcs', 'Natural', '4.9', 'P-PGD GTG Warna-site'),
('GTG-00041', 1, 'Dual Slate Nok Atas', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00042', 1, 'Dual Slate Nok Bawah', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00043', 1, 'Dual Slate Nok Samping', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00044', 1, 'Dual Slate Nok Ujung', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00045', 1, 'Dual Slate Nok Smp Ujung', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00046', 1, 'Dual Slate Starter', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00047', 1, 'Dual Slate Apex', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00048', 1, 'Dual Slate Nok Siku', 'pcs', 'Natural', '5.1', 'P-PGD GTG Warna-site'),
('GTG-00049', 1, 'Excellent Nok Atas', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00050', 1, 'Excellent Nok Bawah', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00051', 1, 'Excellent Nok Samping', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00052', 1, 'Excellent Nok Ujung', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00053', 1, 'Excellent Nok Smp Ujung', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00054', 1, 'Excellent Starter', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00055', 1, 'Excellent Apex', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00056', 1, 'Excellent Nok Si', 'pcs', 'Natural', '4.3', 'P-PGD GTG Warna-site'),
('GTG-00057', 1, 'Majectic Nok Atas', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00058', 1, 'Majectic Nok Bawah', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00059', 1, 'Majectic Nok Samping', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00060', 1, 'Majectic Nok Ujung', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00061', 1, 'Majectic Nok Smp Ujung', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00062', 1, 'Majectic Starter', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00063', 1, 'Majectic Apex', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00064', 1, 'Majectic Nok Siku', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('GTG-00065', 1, 'Majetic Nok Atas', 'pcs', 'Natural', '4.45', 'P-PGD GTG Warna-site'),
('PB-00001', 2, 'jsk', 'pcs', 'jk', '8', 'P-PGD GTG Warna-site');")
Notification.destroy_all
Notification.create()
Rp.destroy_all

["06", "07", "08"].each do |bln|
  (1..30).each do |i|
    rp = Rp.create(schedule_qty: rand(1000), plan_date: "#{bln}/#{i}/2017", barang_id: Barang.pluck(:id).sample, 
      nama_customer: Faker::Name.unique.name, keterangan: "test", alamat: Faker::Address.street_address, telpon: Faker::PhoneNumber.phone_number)
    pb = Pb.create!(status: 'Konfirmasi', rp_id: rp.id)
    ip = Ip.create(pb_id: pb.id)
  end
end

Hp.all.each do |hp|
  next if hp.ip.blank?
  plan_date = Date.strptime(hp.ip.pb.rp.plan_date, '%m/%d/%Y').to_datetime
  hp.update_attribute(:created_at, plan_date)
end