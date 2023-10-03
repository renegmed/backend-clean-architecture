package bootstrap

import "clean-arch-demo/mongo"

type Application struct {
	Env   *Env
	Mongo mongo.Client
}

func NewApp() *Application {
	env := NewEnv()

	return &Application{
		Env:   env,
		Mongo: NewMongoDatabase(env),
	}
}

func (app *Application) CloseDBConnection() {
	CloseMongoDBConnection(app.Mongo)
}
