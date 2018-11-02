package controllers

import (
	"github.com/astaxie/beego"
)

type CustomerController struct {
	beego.Controller
}

func (c *CustomerController) InsertCus() {
	c.TplName = "customer/insert.tpl"
}
