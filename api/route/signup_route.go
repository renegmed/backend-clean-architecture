package route

import (
	"clean-arch-demo/bootstrap"
	"clean-arch-demo/mongo"
	"time"

	"github.com/gin-gonic/gin"
)

func NewSignupRouter(env *bootstrap.Env, timeout time.Duration, db mongo.Database, group *gin.RouterGroup) {

}
