package main

import (
	"clean-arch-demo/api/route"
	"clean-arch-demo/bootstrap"
	"time"

	"github.com/gin-gonic/gin"
)

func main() {
	app := bootstrap.NewApp()

	db := app.Mongo.Database(app.Env.DBName)
	defer app.CloseDBConnection()

	timeoutDuration := time.Duration(app.Env.ContextTimeout) * time.Second

	gin := gin.Default()

	route.Setup(app.Env, timeoutDuration, db, gin)

	gin.Run(app.Env.ServerAddress)
}
