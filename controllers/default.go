package controllers

import (
	"webApp/models"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type MainController struct {
	beego.Controller
}

func (c *MainController) Get() {
	c.TplName = "login.tpl"
}
func (c *MainController) Post() {
	c.Ctx.WriteString("post request ")
}

func (c *MainController) Showlogin() {
	c.TplName = "login.tpl"
}

func (c *MainController) HandleLogin() {
	o := orm.NewOrm()
	user := models.User{}
	user.Name = c.GetString("user")
	user.Pwd = c.GetString("password")
	err := o.Read(&user, "Name")
	//beego.Info("err: ", err, " user ", user.Name, " pw ", user.Pwd)
	if err != nil || user.Pwd != c.GetString("password") {
		beego.Info("query fail")
		c.TplName = "login.tpl"
		return
	}
	c.Data["User"] = user.Name
	c.TplName = "index.tpl"

}
