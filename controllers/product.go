package controllers

import (
	"strconv"
	"strings"
	"webApp/models"

	"github.com/astaxie/beego"
	"github.com/astaxie/beego/orm"
)

type ProductController struct {
	beego.Controller
}

func (c *ProductController) Get() {
	c.TplName = "login.tpl"
}
func (c *ProductController) Post() {
	c.Ctx.WriteString("ok")
}

func (c *ProductController) ProductShow() {
	c.TplName = "product/productManage.tpl"
}

func (c *ProductController) ShowInsertPro() { //前端产品录入界面
	c.TplName = "product/insert.tpl"
}
func (c *ProductController) InserProduct() { //产品录入提交后进入此action，入数据库
	o := orm.NewOrm()
	pro := models.Product{}
	pro.Name = c.GetString("Name")
	pro.Classify = c.GetString("Classify")
	pro.Compose = c.GetString("Compose")
	pro.Effect = c.GetString("Effect")
	pro.Factory = c.GetString("Factory")
	pro.Fit = c.GetString("Fit")
	pro.Method = c.GetString("Method")
	pro.Prize = c.GetString("Prize")
	pro.Taste = c.GetString("Taste")
	pro.Standard = c.GetString("Standard")
	Order_price, _ := strconv.ParseFloat(c.GetString("Order_price"), 64)
	Origin_price, _ := strconv.ParseFloat(c.GetString("Origin_price"), 64)
	Min_num, _ := strconv.Atoi(c.GetString("Min_num"))
	Discount, _ := strconv.ParseFloat(c.GetString("Discount"), 64)
	pro.Order_price = Order_price
	pro.Origin_price = Origin_price
	pro.Min_num = Min_num
	pro.Discount = Discount
	pro.Unit = c.GetString("Unit")
	_, err := o.Insert(&pro)
	if err != nil {
		beego.Info("insert product fail")
		return
	}
	c.TplName = "index.tpl"
	//c.Redirect("/index.tpl", 302)
	//c.Ctx.WriteString("登陆成功")
}

func (c *ProductController) ProductManage() {

	o := orm.NewOrm()
	var products []*models.Product
	o.QueryTable("product").All(&products)

	//c.Ctx.WriteString("展示成果")
	//c.TplName = "index.tpl"
	//c.Redirect("/index.tpl", 302)
	c.Data["json"] = products
	c.ServeJSON()
}
func (c *ProductController) ProductDetail() {
	c.Data["productid"] = c.GetString("productid")
	c.TplName = "product/detail.tpl"
}
func (c *ProductController) ProductDetailquery() {
	o := orm.NewOrm()
	var product models.Product
	o.QueryTable("product").Filter("id", c.GetString("productid")).Limit(1).One(&product)
	c.Data["json"] = product
	c.ServeJSON()
}
func (c *ProductController) ProductDel() {
	o := orm.NewOrm()
	pro := models.Product{}
	pro_id, _ := strconv.Atoi(c.GetString("productid"))
	pro.Id = pro_id
	_, err := o.Delete(&pro)
	if err != nil {
		beego.Info("删除产品出错: ", err)
	}
	c.TplName = "product/productManage.tpl"
}

func (c *ProductController) ProductUpdate() {
	o := orm.NewOrm()
	pro := models.Product{}
	pro_id, _ := strconv.Atoi(c.GetString("Id"))
	pro.Id = pro_id

	pro.Name = c.GetString("Name")
	pro.Classify = c.GetString("Classify")
	pro.Compose = c.GetString("Compose")
	pro.Effect = c.GetString("Effect")
	pro.Factory = c.GetString("Factory")
	pro.Fit = c.GetString("Fit")
	pro.Method = c.GetString("Method")
	pro.Prize = c.GetString("Prize")
	taste := c.GetString("Taste")
	//beego.Info("Taste_begin: ", taste)
	index := strings.Index(taste, ":") //去掉angularjs中ng-options的bug,会在前面加上string:
	taste = taste[index+1:]
	pro.Taste = taste
	//beego.Info("Taste_end: ", taste)
	pro.Standard = c.GetString("Standard")
	pro.Unit = c.GetString("Unit")
	pro.Info = c.GetString("Info")

	Order_price, _ := strconv.ParseFloat(c.GetString("Order_price"), 64)
	Origin_price, _ := strconv.ParseFloat(c.GetString("Origin_price"), 64)
	Min_num, _ := strconv.Atoi(c.GetString("Min_num"))
	Discount, _ := strconv.ParseFloat(c.GetString("Discount"), 64)
	pro.Order_price = Order_price
	pro.Origin_price = Origin_price
	pro.Min_num = Min_num
	pro.Discount = Discount
	orm.Debug = true
	_, err := o.Update(&pro)
	if err != nil {
		beego.Info("更新产品出错: ", err)
	}
	c.TplName = "product/productManage.tpl"
}

//	beego.Info("ddsds")

//	c.Data["Website"] = "beego.me"
//	c.Data["Email"] = "astaxie@gmail.com"
//	c.TplName = "index.tpl"
//	orm.Debug = true
//	c := models.Customer{}

//	cp := models.Cus_pro{}
//	p := models.Product{}

//	//p.Name = "ferment"
//	p.Order_price = 198
//	p.Discount = 0.8
//	p.Min_num = 100
//	p.Id = 1
//	c.Id = 1
//	c.Name = "liyuling"
//	c.Phone = 13818571412
//	c.CreateTime = time.Now()
//	c.Birthday = "20181030"
//	cp.Customer_num = c.Phone
//	cp.Product_name = p.Name
//o := orm.NewOrm()
//	var cus_pro []*models.Cus_pro
//	_, err := o.QueryTable("cus_pro").Filter("Customer_num", c.Phone).All(&cus_pro)

//	if err == nil {
//		for _, order := range cus_pro {

//			beego.Info(order)
//		}
//	}
//_, err := o.Insert(&cp)
//o.Read(&cp, "Customer_num")
//	if err != nil {
//		beego.Info(err)
//		return
//	}
//beego.Info(cp)
//beego.Run()

//	if _, err := o.Update(&obj); err == nil {
//		beego.Info(obj)
//	}
