package model

type Address struct {
	ID       int    `gorm:"column:id;type:int(11);NOT NULL"`
	Address  string `gorm:"column:address;type:varchar(255);NOT NULL"`
	District string `gorm:"column:district;type:varchar(255);NOT NULL"`
	City     string `gorm:"column:city;type:varchar(255);NOT NULL"`
	Province string `gorm:"column:province;type:varchar(255);NOT NULL"`
	ZipCode  string `gorm:"column:zip_code;type:varchar(255);NOT NULL"`
	Country  string `gorm:"column:country;type:varchar(255);NOT NULL"`
}

func (m *Address) TableName() string {
	return "address"
}
