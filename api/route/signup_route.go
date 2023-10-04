package route

import (
	"clean-arch-demo/api/controller"
	"clean-arch-demo/bootstrap"
	"clean-arch-demo/domain"
	"clean-arch-demo/mongo"
	"clean-arch-demo/repository"
	"clean-arch-demo/usecase"
	"time"

	"github.com/gin-gonic/gin"
)

func NewSignupRouter(env *bootstrap.Env, timeout time.Duration, db mongo.Database, group *gin.RouterGroup) {

	userRepo := repository.NewUserRepository(db, domain.CollectionUser)
	sc := controller.SignupController{
		SignupUsecase: usecase.NewSignupUsecase(userRepo, timeout),
		Env:           env,
	}

	group.POST("/signup", sc.Signup)
}
