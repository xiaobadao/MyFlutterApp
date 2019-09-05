class SPReportBeanEntity {
	int pageTotal;
	List<SPReportBeanList> xList;

	SPReportBeanEntity({this.pageTotal, this.xList});

	SPReportBeanEntity.fromJson(Map<String, dynamic> json) {
		pageTotal = json['pageTotal'];
		if (json['list'] != null) {
			xList = new List<SPReportBeanList>();(json['list'] as List).forEach((v) { xList.add(new SPReportBeanList.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['pageTotal'] = this.pageTotal;
		if (this.xList != null) {
      data['list'] =  this.xList.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class SPReportBeanList {
	num confirmAmount;
	num statusFlow;
	String purchaseCode;
	String supplierId;
	num onPay;
	num freight;
	String headUrl;
	String shopName;
	num confirmPurchaseAmount;
	String remark;
	num purchaseType;
	num payAmount;
	String shopId;
	String id;
	num confirmFreight;
	String supplierName;
	String creator;
	num amount;
	String consignee;
	String address;
	String receiveDate;
	num updateTime;
	String userName;
	String linkman;
	num purchaseAmount;
	num createTime;
	num arriveNum;
	num purchaseNum;
	String orderDate;

	SPReportBeanList({this.confirmAmount, this.statusFlow, this.purchaseCode, this.supplierId, this.onPay, this.freight, this.headUrl, this.shopName, this.confirmPurchaseAmount, this.remark, this.purchaseType, this.payAmount, this.shopId, this.id, this.confirmFreight, this.supplierName, this.creator, this.amount, this.consignee, this.address, this.receiveDate, this.updateTime, this.userName, this.linkman, this.purchaseAmount, this.createTime, this.arriveNum, this.purchaseNum, this.orderDate});

	SPReportBeanList.fromJson(Map<String, dynamic> json) {
		confirmAmount = json['confirmAmount'];
		statusFlow = json['statusFlow'];
		purchaseCode = json['purchaseCode'];
		supplierId = json['supplierId'];
		onPay = json['onPay'];
		freight = json['freight'];
		headUrl = json['headUrl'];
		shopName = json['shopName'];
		confirmPurchaseAmount = json['confirmPurchaseAmount'];
		remark = json['remark'];
		purchaseType = json['purchaseType'];
		payAmount = json['payAmount'];
		shopId = json['shopId'];
		id = json['id'];
		confirmFreight = json['confirmFreight'];
		supplierName = json['supplierName'];
		creator = json['creator'];
		amount = json['amount'];
		consignee = json['consignee'];
		address = json['address'];
		receiveDate = json['receiveDate'];
		updateTime = json['updateTime'];
		userName = json['userName'];
		linkman = json['linkman'];
		purchaseAmount = json['purchaseAmount'];
		createTime = json['createTime'];
		arriveNum = json['arriveNum'];
		purchaseNum = json['purchaseNum'];
		orderDate = json['orderDate'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['confirmAmount'] = this.confirmAmount;
		data['statusFlow'] = this.statusFlow;
		data['purchaseCode'] = this.purchaseCode;
		data['supplierId'] = this.supplierId;
		data['onPay'] = this.onPay;
		data['freight'] = this.freight;
		data['headUrl'] = this.headUrl;
		data['shopName'] = this.shopName;
		data['confirmPurchaseAmount'] = this.confirmPurchaseAmount;
		data['remark'] = this.remark;
		data['purchaseType'] = this.purchaseType;
		data['payAmount'] = this.payAmount;
		data['shopId'] = this.shopId;
		data['id'] = this.id;
		data['confirmFreight'] = this.confirmFreight;
		data['supplierName'] = this.supplierName;
		data['creator'] = this.creator;
		data['amount'] = this.amount;
		data['consignee'] = this.consignee;
		data['address'] = this.address;
		data['receiveDate'] = this.receiveDate;
		data['updateTime'] = this.updateTime;
		data['userName'] = this.userName;
		data['linkman'] = this.linkman;
		data['purchaseAmount'] = this.purchaseAmount;
		data['createTime'] = this.createTime;
		data['arriveNum'] = this.arriveNum;
		data['purchaseNum'] = this.purchaseNum;
		data['orderDate'] = this.orderDate;
		return data;
	}
}
