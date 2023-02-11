package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func StartServer() {
	router := gin.Default()
	router.GET("/", func(c *gin.Context) {
		c.String(http.StatusOK, "Api is running...")
	})

	NewTestController(router)
	NewCarController(router)
	NewPurchaseController(router)
	router.Run()
}
