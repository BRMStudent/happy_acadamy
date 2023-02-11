package controller

import (
	"happy_academy/model"
	"happy_academy/service"
	"net/http"

	"github.com/gin-gonic/gin"
)

var purchaseServ = service.NewPurchaseService()

func NewPurchaseController(router *gin.Engine) {
	purchase := router.Group("/purchase")
	purchase.GET("/filter", filterPurchase)
	purchase.POST("", savePurchase)
}

func filterPurchase(c *gin.Context) {
	status := c.Query("status")
	limit := c.DefaultQuery("limit", "0")
	index := c.DefaultQuery("index", "0")

	purchases, err := purchaseServ.FilterPurchase(status, limit, index)
	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"error": err,
		})
	} else {
		c.JSON(http.StatusOK, purchases)
	}
}

func savePurchase(c *gin.Context) {
	purchase := model.Purchase{}
	err := c.ShouldBindJSON(&purchase)
	if err != nil {
		c.JSON(http.StatusBadRequest, err)
	}

	rowsAffected, err := purchaseServ.SavePurchase(purchase)

	if err != nil {
		c.JSON(http.StatusBadRequest, gin.H{
			"messege": err,
		})
	} else {

		if rowsAffected > 0 {
			c.JSON(http.StatusCreated, gin.H{
				"rows_affected": 1,
			})
		} else if rowsAffected == 0 {
			c.JSON(http.StatusCreated, gin.H{
				"rows_affected": 0,
			})
		} else {
			c.JSON(http.StatusCreated, gin.H{
				"rows_affected": -1,
			})
		}
	}

}
