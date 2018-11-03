package controllers

import (
	"strconv"
	"time"
	"webApp/models"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type CustomerController struct {
	beego.Controller
}

func (c *CustomerController) ShowCusPage() {
	c.TplName = "customer/insert.tpl"
}
func (c *CustomerController) ShowUpdatePage() {
	c.Data["customerid"] = c.GetString("customerid")
	c.TplName = "customer/detail.tpl"
}
func (c *CustomerController) CustomersDisplay() {

	c.TplName = "customer/display.tpl"
}
func (c *CustomerController) CustomerJson() {

	o := orm.NewOrm()
	var customers []*models.Customer
	o.QueryTable("customer").All(&customers)
	c.Data["json"] = customers
	c.ServeJSON()
}
func (c *CustomerController) GetCustomerById() {
	o := orm.NewOrm()
	var customer models.Customer
	o.QueryTable("customer").Filter("id", c.GetString("customerid")).Limit(1).One(&customer)
	c.Data["json"] = customer
	c.ServeJSON()
}

func (c *CustomerController) InsertCustomer() {

	o := orm.NewOrm()
	cus := models.Customer{}
	cus.Name = c.GetString("Name")
	cus.Identify = c.GetString("Identify")
	cus.Level = c.GetString("Level")
	cus.Course = c.GetString("Course")
	cus.Phone = c.GetString("Phone")
	cus.Address = c.GetString("Address")
	course_time, _ := time.Parse("2006-01-02", c.GetString("Course_time"))
	agent_time, _ := time.Parse("2006-01-02", c.GetString("Agent_time"))
	birthday, _ := time.Parse("2006-01-02", c.GetString("Birthday"))

	l, _ := time.LoadLocation("Asia/Shanghai")
	if course_time.IsZero() {
		course_time = time.Now().In(l)
	}
	if agent_time.IsZero() {
		agent_time = time.Now().In(l)
	}
	if birthday.IsZero() {
		birthday = time.Now().In(l)
	}
	cus.Course_time = course_time
	cus.Agent_time = agent_time
	cus.Birthday = birthday
	orm.Debug = true
	_, err := o.Insert(&cus)
	if err != nil {
		beego.Info(err)
		return
	}
	c.TplName = "index.tpl"
}

func (c *CustomerController) CustomerDel() {
	o := orm.NewOrm()
	cus := models.Customer{}
	cus_id, _ := strconv.Atoi(c.GetString("customerid"))
	cus.Id = cus_id
	_, err := o.Delete(&cus)
	if err != nil {
		beego.Info("删除客户出错: ", err)
	}
	c.TplName = "customer/display.tpl"
}

func (c *CustomerController) CustomerUpdate() {
	o := orm.NewOrm()
	cus := models.Customer{}
	cus_id, _ := strconv.Atoi(c.GetString("Id"))
	cus.Id = cus_id
	cus.Name = c.GetString("Name")
	cus.Identify = c.GetString("Identify")
	cus.Level = c.GetString("Level")
	cus.Course = c.GetString("Course")
	cus.Phone = c.GetString("Phone")
	cus.Address = c.GetString("Address")
	cus.Info = c.GetString("Info")

	course_time, _ := time.Parse("2006-01-02", c.GetString("Course_time"))
	agent_time, _ := time.Parse("2006-01-02", c.GetString("Agent_time"))
	birthday, _ := time.Parse("2006-01-02", c.GetString("Birthday"))
	l, _ := time.LoadLocation("Asia/Shanghai")
	if course_time.IsZero() { //如果客户端默认值，时间就是0，得处理
		course_time = time.Now().In(l)
	}
	if agent_time.IsZero() {
		agent_time = time.Now().In(l)
	}
	if birthday.IsZero() {
		birthday = time.Now().In(l)
	}
	cus.Course_time = course_time
	cus.Agent_time = agent_time
	cus.Birthday = birthday

	_, err := o.Update(&cus)
	if err != nil {
		beego.Info("更新产品出错: ", err)
	}
	c.TplName = "customer/display.tpl"
}
