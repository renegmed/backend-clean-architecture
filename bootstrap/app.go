package bootstrap

type Application struct {
	Env *Env
}

func App() *Application {
	return &Application{
		Env: NewEnv(),
	}

}
