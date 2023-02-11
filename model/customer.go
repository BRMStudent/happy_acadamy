package model

type Customer struct {
	ID        int    `gorm:"column:id;type:int(11);NOT NULL"`
	Firstname string `gorm:"column:firstname;type:varchar(100);NOT NULL"`
	Lastname  string `gorm:"column:lastname;type:varchar(100);NOT NULL"`
	Phone     string `gorm:"column:phone;type:varchar(10)"`
}

func (m *Customer) TableName() string {
	return "customer"
}
