package service

import (
	"happy_academy/model"
	"happy_academy/repository"
	"strconv"
)

var purchaseRepo = repository.NewPurchaseRepository()

func NewPurchaseService() PurchaseService {
	return purchaseServ{}
}

type PurchaseService interface {
	SavePurchase(purchase model.Purchase) (int64, error)
	FilterPurchase(status string, lim string, idx string) (*[]model.Purchase, error)
}

type purchaseServ struct{}

// FilterPurchase implements PurchaseService
func (purchaseServ) FilterPurchase(status string, lim string, idx string) (*[]model.Purchase, error) {
	newIndex := idx
	newLimit := lim
	if lim == "" {
		newLimit = "0"
	}
	if idx == "" {
		newIndex = "0"
	}

	index, err := strconv.Atoi(newIndex)
	if err != nil {
		return nil, err
	}
	limit, err := strconv.Atoi(newLimit)
	if err != nil {
		return nil, err
	}
	purchases, err := purchaseRepo.FilterPurchase(status, limit, index)
	if err != nil {
		return &[]model.Purchase{}, err
	}
	return purchases, nil
}

// SavePurchase implements PurchaseService
func (purchaseServ) SavePurchase(purchase model.Purchase) (int64, error) {
	rowsAffected, err := purchaseRepo.SavePurchase(purchase)
	if err != nil {
		return -1, err
	}
	if rowsAffected > 0 {
		return 1, nil
	} else if rowsAffected == 0 {
		return 0, nil
	} else {
		return -1, nil
	}
}
