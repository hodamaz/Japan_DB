USE Japan_DB;
-- 1. What is the anticipated cost of accommodation per city?

CREATE VIEW CityStaysInfo AS
SELECT
  c.CityName,
  AVG(a.MinPricePerNight + a.MaxPricePerNight) AS AveragePrice,
  AVG(cs.MinLengthStay + cs.MaxLengthStay) AS AverageLengthStay,
  AVG(
    (a.MinPricePerNight + a.MaxPricePerNight) * (cs.MinLengthStay + cs.MaxLengthStay)
  ) AS FinalPrice
FROM
  City c
  JOIN CityStays cs ON c.CityID = cs.CityID
  JOIN AccommodationInfo a ON cs.AccommodationID = a.AccommodationID
GROUP BY
  c.CityName;
