package route

import (
	"clean-arch-demo/bootstrap"
	"clean-arch-demo/mongo"
	"time"

	"github.com/gin-gonic/gin"
)

func Setup(env *bootstrap.Env, timeout time.Duration, db mongo.Database, gin *gin.Engine) {

}