package routers

import (
	"webApp/controllers"

	"github.com/astaxie/beego"
)

func init() {
	beego.Router("/", &controllers.MainController{})
	beego.Router("/login", &controllers.MainController{}, "get:Showlogin;post:HandleLogin")

	beego.Router("/customer", &controllers.CustomerController{}, "get:InsertCus")

	//以下是产品的增删查改

	beego.Router("/product/insert", &controllers.ProductController{}, "get:ShowInsertPro;post:InserProduct")
	beego.Router("/product/productShow", &controllers.ProductController{}, "get:ProductShow")        //方法第一个字母必须大写Pro not pro
	beego.Router("/product/productManage", &controllers.ProductController{}, "get:ProductManage")    //方法第一个字母必须大写Pro not pro
	beego.Router("/product/detail", &controllers.ProductController{}, "get:ProductDetail")           //方法第一个字母必须大写Pro not pro
	beego.Router("/product/detailquery", &controllers.ProductController{}, "get:ProductDetailquery") //方法第一个字母必须大写Pro not pro
	beego.Router("/product/delete", &controllers.ProductController{}, "get:ProductDel")
	beego.Router("/product/update", &controllers.ProductController{}, "post:ProductUpdate")
}
