CREATE DATABASE Japan_DB;
USE Japan_DB;
-- Create City Table
CREATE TABLE City (
    CityID INT PRIMARY KEY,
    CityName VARCHAR(50) NOT NULL,
    CityRegion VARCHAR(50) NOT NULL
);

-- Populate City Table
INSERT INTO City (CityID, CityName, CityRegion) 
VALUES
(1, 'Tokyo', 'Kanto'),
(2, 'Osaka', 'Kansai'),
(3, 'Kyoto', 'Kansai'),
(4, 'Hiroshima', 'Chugoku'),
(5, 'Sapporo', 'Hokkaido'),
(6, 'Fukuoka', 'Kyushu'),
(7, 'Nara', 'Kansai'),
(8, 'Yokohama', 'Kanto'),
(9, 'Kobe', 'Kansai'),
(10, 'Nagoya', 'Chubu'),
(11, 'Okinawa', 'Okinawa'),
(12, 'Kanazawa', 'Chubu'),
(13, 'Sendai', 'Tohoku'),
(14, 'Hakone', 'Kanto'),
(15, 'Nagasaki', 'Kyushu');

-- Create TouristAttractions Table
CREATE TABLE TouristAttractions (
    AttractionID INTEGER,
    AttractionName VARCHAR (50),
    AnnualVisitors INTEGER,
    CityID INTEGER,
    PRIMARY KEY (AttractionID),
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

-- Populate TouristAttractions table
INSERT INTO TouristAttractions (AttractionID, AttractionName, AnnualVisitors, CityID) VALUES
(1, 'Tokyo Tower', 4000000, 1),
(2, 'Senso-ji Temple', 3000000, 1),
(3, 'Shibuya Crossing', 2500000, 1),

(4, 'Osaka Castle', 2500000, 2),
(5, 'Dotonbori District', 1800000, 2),
(6, 'Osaka Aquarium Kaiyukan', 1200000, 2),

(7, 'Fushimi Inari Shrine', 2200000, 3),
(8, 'Kiyomizu-dera Temple', 1800000, 3),
(9, 'Arashiyama Bamboo Grove', 1500000, 3),

(10, 'Hiroshima Peace Memorial Park', 1500000, 4),
(11, 'Itsukushima Shrine', 1000000, 4),
(12, 'Hiroshima Castle', 800000, 4),

(13, 'Sapporo Clock Tower', 800000, 5),
(14, 'Odori Park', 700000, 5),
(15, 'Sapporo Beer Museum', 500000, 5),

(16, 'Fukuoka Castle', 1200000, 6),
(17, 'Ohori Park', 900000, 6),
(18, 'Fukuoka Tower', 700000, 6),

(19, 'Nara Deer Park', 1000000, 7),
(20, 'Todai-ji Temple', 800000, 7),
(21, 'Kasuga Taisha Shrine', 600000, 7),

(22, 'Landmark Tower', 1200000, 8),
(23, 'Sankeien Garden', 700000, 8),
(24, 'Yokohama Chinatown', 600000, 8),

(25, 'Kobe Harborland', 900000, 9),
(26, 'Kobe Nunobiki Herb Garden', 800000, 9),
(27, 'Mount Rokko', 500000, 9),

(28, 'Nagoya Castle', 1100000, 10),
(29, 'Atsuta Shrine', 900000, 10),
(30, 'Osukannon Temple', 600000, 10),

(31, 'Shurijo Castle', 700000, 11),
(32, 'Okinawa Churaumi Aquarium', 600000, 11),
(33, 'Katsuren Castle Ruins', 400000, 11),

(34, 'Kenrokuen Garden', 800000, 12),
(35, 'Kanazawa Castle', 700000, 12),
(36, '21st Century Museum of Contemporary Art', 500000, 12),

(37, 'Matsushima Bay', 700000, 13),
(38, 'Zuiganji Temple', 600000, 13),
(39, 'Sendai Castle Ruins', 400000, 13),

(40, 'Hakone Open Air Museum', 900000, 14),
(41, 'Hakone Shrine', 700000, 14),
(42, 'Owakudani Valley', 600000, 14),

(43, 'Nagasaki Atomic Bomb Museum', 800000, 15),
(44, 'Glover Garden', 700000, 15),
(45, 'Mount Inasa', 500000, 15);

-- Creat CityStays
CREATE TABLE CityStays (
    CityStayID INT PRIMARY KEY,
    CityID INT,
    MinLengthStay INT,
    MaxLengthStay INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

-- Populate CityStays Table
INSERT INTO CityStays (CityStayID, CityID, MinLengthStay, MaxLengthStay)
VALUES
(1, 1, 3, 7),
(2, 2, 2, 5),
(3, 3, 2, 4),
(4, 4, 1, 3),
(5, 5, 4, 8),
(6, 6, 2, 6),
(7, 7, 1, 3),
(8, 8,2, 5),
(9, 9, 2, 5),
(10, 10, 2, 4),
(11, 11, 5, 10),
(12, 12, 2, 4),
(13, 13, 2, 5),
(14, 14, 1, 3),
(15, 15, 2, 4);

-- Creat CityStays 
CREATE TABLE AccommodationInfo (
    AccommodationID INT PRIMARY KEY,
    CityID INT,
    MinPricePerNight DECIMAL(10, 2),
    MaxPricePerNight DECIMAL(10, 2),
    FOREIGN KEY (CityID) REFERENCES City(CityID) 
);

-- Populate AccommodationInfo Table
INSERT INTO AccommodationInfo (AccommodationID, CityID, MinPricePerNight, MaxPricePerNight)
VALUES
(1, 1, 120.00, 200.00),    -- Tokyo
(2, 2, 100.00, 150.00),    -- Osaka
(3, 3, 80.00, 120.00),     -- Kyoto
(4, 4, 70.00, 100.00),     -- Hiroshima
(5, 5, 150.00, 250.00),    -- Sapporo
(6, 6, 90.00, 180.00),     -- Fukuoka
(7, 7, 80.00, 130.00),     -- Nara
(8, 8, 110.00, 200.00),    -- Yokohama
(9, 9, 100.00, 160.00),    -- Kobe
(10, 10, 95.00, 150.00),    -- Nagoya
(11, 11, 200.00, 350.00),   -- Okinawa
(12, 12, 85.00, 130.00),    -- Kanazawa
(13, 13, 75.00, 120.00),    -- Sendai
(14, 14, 60.00, 100.00),    -- Hakone
(15, 15, 70.00, 110.00);    -- Nagasaki

-- Creat CityConnections
CREATE TABLE CityConnections (
    ConnectionID INT PRIMARY KEY,
    CityID1 INT,
    CityID2 INT,
    TransportationType VARCHAR(100),
    FOREIGN KEY (CityID1) REFERENCES City(CityID),
    FOREIGN KEY (CityID2) REFERENCES City(CityID)
);

-- Populate
INSERT INTO CityConnections (ConnectionID, CityID1, CityID2, TransportationType)
VALUES
-- Tokyo
(1, 1, 2, 'Train'), 
(2, 1, 8, 'Bullet Train'), 
(3, 1, 10, 'Bus'),
-- Osaka
(4, 2, 3, 'Train'), 
(5, 2, 6, 'Bus'), 
(6, 2, 9, 'Bullet Train'),
-- Kyoto
(7, 3, 10, 'Train'), 
(8, 3, 7, 'Bus'), 
(9, 3, 12, 'Bullet Train'),
-- Hiroshima
(10, 4, 7, 'Train'), 
(11, 4, 1, 'Bus'), 
(12, 4, 9, 'Bullet Train'),
-- Sapporo
(13, 5, 11, 'Flight'), 
(14, 5, 2, 'Bus'), 
(15, 5, 4, 'Train'),
-- Fukuoka
(16, 6, 9, 'Train'), 
(17, 6, 2, 'Bus'), 
(18, 6, 11, 'Bullet Train'),
-- Nara
(19, 7, 3, 'Bus'), 
(20, 7, 5, 'Train'), 
(21, 7, 10, 'Bullet Train'),
-- Yokohama
(22, 8, 1, 'Bullet Train'), 
(23, 8, 14, 'Bus'), 
(24, 8, 11, 'Train'),
-- Kobe
(25, 9, 6, 'Train'), 
(26, 9, 13, 'Bullet Train'), 
(27, 9, 5, 'Bus'),
-- Nagoya
(28, 10, 1, 'Train'), 
(29, 10, 2, 'Bullet Train'), 
(30, 10, 14, 'Bus'),
-- Okinawa
(31, 11, 5, 'Flight'), 
(32, 11, 15, 'Bus'), 
(33, 11, 2, 'Train'),
-- Kanazawa
(34, 12, 13, 'Train'), 
(35, 12, 3, 'Bus'), 
(36, 12, 11, 'Bullet Train'),
-- Sendai
(37, 13, 14, 'Bus'), 
(38, 13, 5, 'Train'), 
(39, 13, 12, 'Bullet Train'),
-- Hakone
(40, 14, 15, 'Train'), 
(41, 14, 8, 'Bus'), 
(42, 14, 7, 'Bullet Train'),
-- Nagasaki
(43, 15, 9, 'Bullet Train'), 
(44, 15, 6, 'Bus'), 
(45, 15, 12, 'Train');

-- Creat SpendingHabits 
CREATE TABLE SpendingHabits (
    SpendingHabitID INT PRIMARY KEY,
    CityID INT,
    AverageDailySpending DECIMAL(10, 2),
    SpendingCategory VARCHAR(50),
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

-- Populate SpendingHabits Table
INSERT INTO SpendingHabits (SpendingHabitID, CityID, AverageDailySpending, SpendingCategory)
VALUES
-- Tokyo
(1, 1, 150.00, 'Food'), 
(2, 1, 50.00, 'Sightseeing'), 
(3, 1, 160.00, 'Accommodation'), 
(4, 1, 30.00, 'Transportation'),
-- Osaka
(5, 2, 120.00, 'Food'), 
(6, 2, 40.00, 'Sightseeing'), 
(7, 2, 150.00, 'Accommodation'), 
(8, 2, 25.00, 'Transportation'),
-- Kyoto
(9, 3, 100.00, 'Food'), 
(10, 3, 35.00, 'Sightseeing'), 
(11, 3, 100.00, 'Accommodation'), 
(12, 3, 20.00, 'Transportation'),
-- Hiroshima
(13, 4, 90.00, 'Food'), 
(14, 4, 30.00, 'Sightseeing'), 
(15, 4, 85.00, 'Accommodation'), 
(16, 4, 15.00, 'Transportation'),
-- Sapporo
(17, 5, 130.00, 'Food'), 
(18, 5, 45.00, 'Sightseeing'), 
(19, 5, 200.00, 'Accommodation'),
(20, 5, 40.00, 'Transportation'),
-- Fukuoka
(21, 6, 110.00, 'Food'), 
(22, 6, 38.00, 'Sightseeing'), 
(23, 6, 135.00, 'Accommodation'), 
(24, 6, 22.00, 'Transportation'),
-- Nara
(25, 7, 95.00, 'Food'), 
(26, 7, 32.00, 'Sightseeing'), 
(27, 7, 105.00, 'Accommodation'), 
(28, 7, 18.00, 'Transportation'),
-- Yokohama
(29, 8, 125.00, 'Food'), 
(30, 8, 42.00, 'Sightseeing'), 
(31, 8, 155.00, 'Accommodation'), 
(32, 8, 35.00, 'Transportation'),
-- Kobe
(33, 9, 105.00, 'Food'), 
(34, 9, 36.00, 'Sightseeing'), 
(35, 9, 130.00, 'Accommodation'), 
(36, 9, 28.00, 'Transportation'),
-- Nagoya
(37, 10, 100.00, 'Food'), 
(38, 10, 34.00, 'Sightseeing'), 
(39, 10, 122.50, 'Accommodation'), 
(40, 10, 25.00, 'Transportation'),
-- Okinawa
(41, 11, 160.00, 'Food'), 
(42, 11, 55.00, 'Sightseeing'), 
(43, 11, 225.00, 'Accommodation'), 
(44, 11, 50.00, 'Transportation'),
-- Kanazawa
(45, 12, 85.00, 'Food'), 
(46, 12, 28.00, 'Sightseeing'), 
(47, 12, 107.50, 'Accommodation'), 
(48, 12, 20.00, 'Transportation'),
-- Sendai
(49, 13, 80.00, 'Food'), 
(50, 13, 28.00, 'Sightseeing'), 
(51, 13, 97.50, 'Accommodation'), 
(52, 13, 18.00, 'Transportation'),
-- Hakone
(53, 14, 70.00, 'Food'), 
(54, 14, 25.00, 'Sightseeing'), 
(55, 14, 80.00, 'Accommodation'), 
(56, 14, 15.00, 'Transportation'),
-- Nagasaki
(57, 15, 85.00, 'Food'), 
(58, 15, 30.00, 'Sightseeing'), 
(59, 15, 90.00, 'Accommodation'), 
(60,15, 20.00, 'Transportation');

-- Create CulturalExperiences Table
CREATE TABLE CulturalExperiences (
    CityID INTEGER REFERENCES City(CityID),
    ExperienceType VARCHAR (50),
    SatisfactionRating INTEGER
);

-- Insert data for CulturalExperiences
INSERT INTO CulturalExperiences (CityID, ExperienceType, SatisfactionRating)
VALUES
-- Tokyo
(1, 'Sumo Wrestling Match', 4), 
(1, 'Tea Ceremony', 5), 
(1, 'Robot Restaurant Show', 3), 
(1, 'Tokyo Tower Visit', 4), 
(1, 'Asakusa Shrine Tour', 5),
-- Osaka
(2, 'Osaka Castle Tour', 4), 
(2, 'Kabuki Theater Performance', 3), 
(2, 'Okonomiyaki Cooking Class', 5), 
(2, 'Shitenno-ji Temple Visit', 4), 
(2, 'Umeda Sky Building Observation Deck', 5),
-- Kyoto
(3, 'Geisha Performance', 5), 
(3, 'Fushimi Inari Shrine Exploration', 4), 
(3, 'Kinkaku-ji Temple Visit', 5), 
(3, 'Traditional Tea Tasting', 4), 
(3, 'Nijo Castle Tour', 4),
-- Hiroshima
(4, 'Atomic Bomb Dome Visit', 5), 
(4, 'Peace Memorial Park Exploration', 4), 
(4, 'Miyajima Island Excursion', 5), 
(4, 'Hiroshima Castle Tour', 4), 
(4, 'Shukkeien Garden Visit', 4),
-- Sapporo
(5, 'Sapporo Beer Museum Tour', 4), 
(5, 'Hokkaido Shrine Visit', 5), 
(5, 'Snow Festival Experience', 5), 
(5, 'Odori Park Stroll', 4), 
(5, 'Moerenuma Park Exploration', 3),
-- Fukuoka
(6, 'Ohori Park Boat Ride', 4), 
(6, 'Fukuoka Castle Visit', 5), 
(6, 'Canal City Hakata Shopping', 4), 
(6, 'Sumiyoshi Shrine Tour', 5), 
(6, 'Fukuoka Tower Observation Deck', 4),
-- Nara
(7, 'Todai-ji Temple Visit', 5), 
(7, 'Nara Deer Park Interaction', 4), 
(7, 'Kasuga Taisha Shrine Exploration', 4), 
(7, 'Isuien Garden Tour', 3), 
(7, 'Yakushiji Temple Visit', 5),
-- Yokohama
(8, 'Sankeien Garden Stroll', 4), 
(8, 'Landmark Tower Sky Garden Visit', 5), 
(8, 'CupNoodles Museum Experience', 3), 
(8, 'Yokohama Chinatown Exploration', 4), 
(8, 'Yokohama Red Brick Warehouse Visit', 5),
-- Kobe
(9, 'Kobe Harborland Night View', 5), 
(9, 'Mount Rokko Cable Car Ride', 4), 
(9, 'Kobe Beef Dining Experience', 5), 
(9, 'Nunobiki Falls Hike', 4), 
(9, 'Kobe Port Tower Visit', 4),
-- Nagoya
(10, 'Nagoya Castle Tour', 5), 
(10, 'Atsuta Shrine Visit', 4), 
(10, 'Sakae Shopping District Exploration', 4), 
(10, 'Osu Kannon Temple Stroll', 3), 
(10, 'Legoland Discovery Center Visit', 5),
-- Okinawa
(11, 'Shurijo Castle Tour', 5), 
(11, 'Okinawa Churaumi Aquarium Visit', 4), 
(11, 'Katsuren Castle Ruins Exploration', 4), 
(11, 'Tropical Dream Center Tour', 3), 
(11, 'Mihama American Village Experience', 5),
-- Kanazawa
(12, 'Kenrokuen Garden Visit', 5), 
(12, 'Kanazawa Castle Tour', 4), 
(12, 'Higashi Chaya District Exploration', 5), 
(12, 'Myoryuji Ninja Temple Visit', 4), 
(12, '21st Century Museum of Contemporary Art Visit', 4),
-- Sendai
(13, 'Matsushima Bay Cruise', 4), 
(13, 'Zuihoden Mausoleum Tour', 5), 
(13, 'Osaki Hachimangu Shrine Exploration', 4), 
(13, 'Sendai City Museum Visit', 4), 
(13, 'Jozenji-dori Avenue Stroll', 5),
-- Hakone
(14, 'Hakone Open-Air Museum Visit', 4), 
(14, 'Hakone Ropeway Ride', 5), 
(14, 'Lake Ashi Cruise', 4), 
(14, 'Hakone Shrine Exploration', 3), 
(14, 'Hakone Hot Springs Experience', 5),
-- Nagasaki
(15, 'Glover Garden Tour', 5), 
(15, 'Nagasaki Peace Park Visit', 4), 
(15, 'Mount Inasa Cable Car Ride', 5), 
(15, 'Dejima Historical Site Exploration', 4), 
(15, 'Meganebashi Bridge Sightseeing', 4);

ALTER TABLE CulturalExperiences
ADD CulturalExperienceID INT AUTO_INCREMENT PRIMARY KEY, 
ADD FOREIGN KEY (CityID) REFERENCES City(CityID);