package routers

import (
	"webApp/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &controllers.MainController{}, "get:Showlogin;post:HandleLogin")

	beego.Router("/customer", &controllers.CustomerController{}, "get:ShowCusPage")
	beego.Router("/customer/insert", &controllers.CustomerController{}, "get,post:InsertCustomer")
	beego.Router("/customer/customersDisplay", &controllers.CustomerController{}, "get:CustomersDisplay")
	beego.Router("/customer/customerJson", &controllers.CustomerController{}, "get:CustomerJson")
	beego.Router("/customer/delete", &controllers.CustomerController{}, "get:CustomerDel")
	beego.Router("/customer/update", &controllers.CustomerController{}, "post:CustomerUpdate")
	beego.Router("/customer/getcustomerbyid", &controllers.CustomerController{}, "get:GetCustomerById")
	beego.Router("/customer/updatepage", &controllers.CustomerController{}, "get:ShowUpdatePage")
	//以下是产品的增删查改
	beego.Router("/product/insert", &controllers.ProductController{}, "get:ShowInsertPro;post:InserProduct")
	beego.Router("/product/productShow", &controllers.ProductController{}, "get:ProductShow")        //方法第一个字母必须大写Pro not pro
	beego.Router("/product/productManage", &controllers.ProductController{}, "get:ProductManage")    //方法第一个字母必须大写Pro not pro
	beego.Router("/product/detail", &controllers.ProductController{}, "get:ProductDetail")           //方法第一个字母必须大写Pro not pro
	beego.Router("/product/detailquery", &controllers.ProductController{}, "get:ProductDetailquery") //方法第一个字母必须大写Pro not pro
	beego.Router("/product/delete", &controllers.ProductController{}, "get:ProductDel")
	beego.Router("/product/update", &controllers.ProductController{}, "post:ProductUpdate")
}
