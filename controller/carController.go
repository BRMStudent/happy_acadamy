package controller

import (
	"happy_academy/service"
	"net/http"

	"github.com/gin-gonic/gin"
)

var carServ = service.NewCarService()

func NewCarController(router *gin.Engine) {
	car := router.Group("/car")
	car.GET("", getCars)
	car.GET("/filter", filterCars)

}

func getCars(c *gin.Context) {
	cars, err := carServ.GetCars()
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err,
		})
	} else {

		c.JSON(http.StatusOK, cars)
	}

}

func filterCars(c *gin.Context) {
	brand := c.Query("brand")
	style := c.Query("style")
	size := c.Query("size")
	limit := c.DefaultQuery("limit", "0")
	index := c.DefaultQuery("index", "0")

	car, err := carServ.FilterCars(brand, style, size, limit, index)
	if err != nil || car == nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err,
		})
	} else {
		c.JSON(http.StatusOK, car)
	}

}
