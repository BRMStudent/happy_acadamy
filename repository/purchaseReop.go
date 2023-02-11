package repository

import (
	"happy_academy/model"

	"gorm.io/gorm"
)

func NewPurchaseRepository() PurchaseRepository {
	db, err := NewDatabaseConnection()
	if err != nil {
		return nil
	}
	return purchaseDB{db: db}
}

type PurchaseRepository interface {
	SavePurchase(purchase model.Purchase) (int64, error)
	FilterPurchase(status string, lim int, idx int) (*[]model.Purchase, error)
}

type purchaseDB struct {
	db *gorm.DB
}

// FilterPurchase implements PurchaseRepository
func (p purchaseDB) FilterPurchase(status string, lim int, idx int) (*[]model.Purchase, error) {
	purchases := []model.Purchase{}
	result := p.db.Preload("Customer").Preload("Address").Where("status = ?", status).Limit(lim).Offset((idx - 1) * lim).Find(&purchases)

	if result.Error != nil {
		return &[]model.Purchase{}, result.Error
	}
	return &purchases, nil
}

// SavePurchase implements PurchaseRepository
func (p purchaseDB) SavePurchase(purchase model.Purchase) (int64, error) {
	result := p.db.Create(purchase)
	if result.Error != nil {
		return -1, result.Error
	}
	return result.RowsAffected, nil
}
