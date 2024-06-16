-- Insert data into Manager table
INSERT INTO Manager (manager_id, name, contact_number) VALUES 
('0100001', 'Ahmad Farid', '0123456789'),
('0100002', 'Noraini Binti Zainal', '0123456790'),
('0100003', 'Hafizah Mohamad', '0123456791'),
('0100004', 'Zulkifli Razali', '0123456792'),
('0100005', 'Azlina Ahmad', '0123456793'),
('0100006', 'Roslan Ali', '0123456794');

-- Insert data into Agent table
INSERT INTO Agent (agent_id, manager_id, name, contact_number) VALUES 
('0200001', '0100001', 'Lina Abdul', '0123456795'),
('0200002', '0100002', 'Shahril Anuar', '0123456796'),
('0200003', '0100003', 'Nurul Huda', '0123456797'),
('0200004', '0100004', 'Azman Yusof', '0123456798'),
('0200005', '0100005', 'Salmah Ismail', '0123456799'),
('0200006', '0100006', 'Ridzuan Kadir', '0123456800');

-- Insert data into Customer table
INSERT INTO Customer (customer_id, agent_id, contact_number, passport_number, ADDRESS) VALUES 
('0300001', '0200001', '0123456801', 'A12345678', '123 Jalan Ampang, Kuala Lumpur'),
('0300002', '0200002', '0123456802', 'A12345679', '456 Jalan Tun Razak, Kuala Lumpur'),
('0300003', '0200003', '0123456803', 'A12345680', '789 Jalan Bukit Bintang, Kuala Lumpur'),
('0300004', '0200004', '0123456804', 'A12345681', '101 Jalan Kuching, Kuala Lumpur'),
('0300005', '0200005', '0123456805', 'A12345682', '102 Jalan Pudu, Kuala Lumpur'),
('0300006', '0200006', '0123456806', 'A12345683', '103 Jalan Cheras, Kuala Lumpur');

-- Insert data into Booking table
INSERT INTO Booking (booking_id, agent_id, customer_id, booking_date, number_of_people, arrival_date, total_price) VALUES 
('0400001', '0200001', '0300001', '2024-06-01', 3, '2024-06-10', 1500.00),
('0400002', '0200002', '0300002', '2024-06-02', 2, '2024-06-11', 1000.00),
('0400003', '0200003', '0300003', '2024-06-03', 4, '2024-06-12', 2000.00),
('0400004', '0200004', '0300004', '2024-06-04', 1, '2024-06-13', 500.00),
('0400005', '0200005', '0300005', '2024-06-05', 5, '2024-06-14', 2500.00),
('0400006', '0200006', '0300006', '2024-06-06', 2, '2024-06-15', 1200.00);

-- Insert data into Dependants table
INSERT INTO Dependants (dependants_id, customer_id, contact_number, passport_number, address) VALUES 
('0500001', '0300001', '0123456807', 'D12345678', '123 Jalan Ampang, Kuala Lumpur'),
('0500002', '0300002', '0123456808', 'D12345679', '456 Jalan Tun Razak, Kuala Lumpur'),
('0500003', '0300003', '0123456809', 'D12345680', '789 Jalan Bukit Bintang, Kuala Lumpur'),
('0500004', '0300004', '0123456810', 'D12345681', '101 Jalan Kuching, Kuala Lumpur'),
('0500005', '0300005', '0123456811', 'D12345682', '102 Jalan Pudu, Kuala Lumpur'),
('0500006', '0300006', '0123456812', 'D12345683', '103 Jalan Cheras, Kuala Lumpur');

-- Insert data into Booking_dependants table
INSERT INTO Booking_dependants (dependants_id, booking_id) VALUES 
('0500001', '0400001'),
('0500002', '0400002'),
('0500003', '0400003'),
('0500004', '0400004'),
('0500005', '0400005'),
('0500006', '0400006');

-- Insert data into Item table
INSERT INTO Item (item_id, item_name, description, price) VALUES 
('0600001', 'Tour Package A', '3-day tour package', 500.00),
('0600002', 'Tour Package B', '5-day tour package', 800.00),
('0600003', 'Hotel Stay', '5-star hotel accommodation', 300.00),
('0600004', 'Flight Ticket', 'Round trip flight ticket', 700.00),
('0600005', 'Travel Insurance', 'Comprehensive travel insurance', 150.00),
('0600006', 'Car Rental', 'Car rental for 3 days', 200.00);

-- Insert data into Booking_item table
INSERT INTO Booking_item (booking_id, item_id, quantity) VALUES 
('0400001', '0600001', 2),
('0400002', '0600002', 1),
('0400003', '0600003', 3),
('0400004', '0600004', 1),
('0400005', '0600005', 4),
('0400006', '0600006', 1);