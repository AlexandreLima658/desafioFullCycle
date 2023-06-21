package main

import (
	"fmt"

	"github.com/gofiber/fiber/v2"
)

func home(c *fiber.Ctx) error {
	return c.SendString("Full Cycle Rocks!!")
}

func main() {
	app := fiber.New()

	app.Get("/", home)
	fmt.Println("Rodando na porta 3001")
	app.Listen(":3001")
}
