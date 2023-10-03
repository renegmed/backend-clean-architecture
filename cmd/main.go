package main

import (
	"clean-arch-demo/bootstrap"

	"github.com/gin-gonic/gin"
)

func main() {
	app := bootstrap.App()

	gin := gin.Default()

	gin.Run(app.Env.ServerAddress)
}
