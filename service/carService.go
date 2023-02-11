package service

import (
	"happy_academy/model"
	"happy_academy/repository"
	"strconv"
)

var carRepo = repository.NewCarRepository()

func NewCarService() CarService {
	return carServ{}
}

type CarService interface {
	GetCars() (*[]model.Car, error)
	FilterCars(brand string, style string, size string, count string, index string) (*[]model.Car, error)
}

type carServ struct{}

// GetCars implements CarService
func (carServ) GetCars() (*[]model.Car, error) {
	cars, err := carRepo.GetCars()
	if err != nil {
		return nil, err
	}
	return cars, nil
}

// GetCar implements CarService
func (carServ) FilterCars(brand string, style string, size string, lim string, idx string) (*[]model.Car, error) {
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
	car, err := carRepo.FilterCars(brand, style, size, limit, index)
	if err != nil {
		return nil, err
	}
	return car, nil
}
