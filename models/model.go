package models

import (
	"time"

	"github.com/astaxie/beego/orm"
	_ "github.com/go-sql-driver/mysql"
)

type User struct {
	Id   int
	Name string
	Pwd  string
}

//Customer     []*Customer `orm:"reverse(many)"` //反向多对多
type Product struct {
	Id           int
	Name         string
	Classify     string
	Taste        string
	Factory      string
	Prize        string
	Compose      string
	Effect       string
	Fit          string
	Method       string
	Order_price  float64 //订货价
	Origin_price float64 //原始价
	Discount     float64 //折扣
	Min_num      int     //起订数量
	Standard     string
	Unit         string
	Info         string
}
type Customer struct {
	Id    int
	Name  string
	Email string
	Phone uint64
	//Product       []*Product `orm:"rel(m2m)"` //多对多
	CreateTime time.Time
	Level      string
	Birthday   string
}

type Cus_pro struct {
	Id           int
	Customer_num uint64
	Product_name string
	Quantity     uint64
}

func init() {

	orm.RegisterDataBase("default", "mysql", "solidbullet:Jyq810302@tcp(116.62.22.108:3306)/wsjxc?charset=utf8")
	orm.RegisterModel(new(User), new(Customer), new(Product), new(Cus_pro))
	orm.RunSyncdb("default", false, true)
}
