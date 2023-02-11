package model

type CarBrand struct {
	ID   int    `gorm:"column:id;type:int(11);NOT NULL"`
	Name string `gorm:"column:name;type:varchar(50);NOT NULL"`
}

func (m *CarBrand) TableName() string {
	return "cars_brand"
}
