package controller

import (
	"net/http"

	"github.com/gin-gonic/gin"
)

func NewTestController(router *gin.Engine) {
	router.GET("/test", test)
}

func test(c *gin.Context) {
	filter := c.Query("filter")
	count := c.Query("count")
	index := c.Query("index")

	c.JSON(http.StatusOK, gin.H{
		"filter": filter,
		"count":  count,
		"index":  index,
	})

}
