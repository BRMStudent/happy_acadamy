package repository

import (
	"happy_academy/model"

	"gorm.io/gorm"
)

func NewCarRepository() CarRepository {
	db, err := NewDatabaseConnection()
	if err != nil {
		return nil
	}
	return carDB{db: db}
}

type CarRepository interface {
	GetCars() (*[]model.Car, error)
	FilterCars(brand string, style string, size string, limit int, index int) (*[]model.Car, error)
}

type carDB struct {
	db *gorm.DB
}

// SavePurchase implements PurchaseRepository
func (carDB) SavePurchase() int64 {
	panic("unimplemented")
}

// GetCars implements CarRepository
func (c carDB) GetCars() (*[]model.Car, error) {
	cars := []model.Car{}
	result := c.db.Table("cars").
		Select("cars.id, cars_brand.name AS brand, cars.color_type AS color, cars.paint_type AS paint, cars.style_type AS style, cars.size, cars.price").
		Joins("INNER JOIN cars_brand ON cars.brand = cars_brand.id").Scan(&cars)
	if result.Error != nil {
		return nil, result.Error
	}
	return &cars, nil
}

// GetCars implements CarRepository
func (c carDB) FilterCars(brand string, style string, size string, limit int, index int) (*[]model.Car, error) {
	car := []model.Car{}
	result := c.db.Table("cars").
		Select("cars.id, cars_brand.name AS brand, cars.color_type AS color, cars.paint_type AS paint, cars.style_type AS style, cars.size, cars.price").
		Joins("INNER JOIN cars_brand ON cars.brand = cars_brand.id").
		Where("cars.brand = (SELECT cars_brand.id FROM cars_brand WHERE cars_brand.name = ?) AND cars.style_type = ? AND cars.size = ?", brand, style, size).Limit(limit).Offset((index - 1) * limit).
		Scan(&car)

	if result.Error != nil || len(car) <= 0 {
		return &[]model.Car{}, result.Error
	}
	return &car, nil
}
