class SPLoginBeanEntity {
	String orgName;
	List<SPLoginBeanCompanylist> shopList;
	List<SPLoginBeanCompanylist> companyList;
	String phone;
	num orgCode;
	String headUrl;
	num marketerNum;
	num storeNum;
	String userId;
	String orgId;
	String token;

	SPLoginBeanEntity({this.orgName, this.shopList, this.companyList, this.phone, this.orgCode, this.headUrl, this.marketerNum, this.storeNum, this.userId, this.orgId, this.token});

	SPLoginBeanEntity.fromJson(Map<String, dynamic> json) {
		orgName = json['orgName'];
		if (json['shopList'] != null) {
			shopList = new List<SPLoginBeanCompanylist>();(json['shopList'] as List).forEach((v) { shopList.add(new SPLoginBeanCompanylist.fromJson(v)); });
		}
		if (json['companyList'] != null) {
			companyList = new List<SPLoginBeanCompanylist>();(json['companyList'] as List).forEach((v) { companyList.add(new SPLoginBeanCompanylist.fromJson(v)); });
		}
		phone = json['phone'];
		orgCode = json['orgCode'];
		headUrl = json['headUrl'];
		marketerNum = json['marketerNum'];
		storeNum = json['storeNum'];
		userId = json['userId'];
		orgId = json['orgId'];
		token = json['token'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['orgName'] = this.orgName;
		if (this.shopList != null) {
      data['shopList'] =  [];
    }
		if (this.companyList != null) {
      data['companyList'] =  this.companyList.map((v) => v.toJson()).toList();
    }
		data['phone'] = this.phone;
		data['orgCode'] = this.orgCode;
		data['headUrl'] = this.headUrl;
		data['marketerNum'] = this.marketerNum;
		data['storeNum'] = this.storeNum;
		data['userId'] = this.userId;
		data['orgId'] = this.orgId;
		data['token'] = this.token;
		return data;
	}
}

class SPLoginBeanCompanylist {
	String foodUrl;
	String licenseUrl;
	String linkPhone;
	num paymentInitPrice;
	String remark;
	num source;
	String linkName;
	num dr;
	num auditState;
	String orgId;
	String updater;
	String principal;
	num isLogin;
	String creditCode;
	num isTenant;
	num registeredCapital;
	num enablePayment;
	String texNo;
	String id;
	num openAccount;
	String fax;
	String fixPhone;
	num enterTime;
	String registeredNo;
	String email;
	String reasonRejection;
	String shopCode;
	String creator;
	String address;
	String orgName;
	num isStore;
	String taxesType;
	num updateTime;
	String idcardReverse;
	String idcardNumber;
	String logoUrl;
	String parentId;
	String foodLicenseNumber;
	num createTime;
	String name;
	num payChannel;
	String idcardFront;
	num status;

	SPLoginBeanCompanylist({this.foodUrl, this.licenseUrl, this.linkPhone, this.paymentInitPrice, this.remark, this.source, this.linkName, this.dr, this.auditState, this.orgId, this.updater, this.principal, this.isLogin, this.creditCode, this.isTenant, this.registeredCapital, this.enablePayment, this.texNo, this.id, this.openAccount, this.fax, this.fixPhone, this.enterTime, this.registeredNo, this.email, this.reasonRejection, this.shopCode, this.creator, this.address, this.orgName, this.isStore, this.taxesType, this.updateTime, this.idcardReverse, this.idcardNumber, this.logoUrl, this.parentId, this.foodLicenseNumber, this.createTime, this.name, this.payChannel, this.idcardFront, this.status});

	SPLoginBeanCompanylist.fromJson(Map<String, dynamic> json) {
		foodUrl = json['foodUrl'];
		licenseUrl = json['licenseUrl'];
		linkPhone = json['linkPhone'];
		paymentInitPrice = json['paymentInitPrice'];
		remark = json['remark'];
		source = json['source'];
		linkName = json['linkName'];
		dr = json['dr'];
		auditState = json['auditState'];
		orgId = json['orgId'];
		updater = json['updater'];
		principal = json['principal'];
		isLogin = json['isLogin'];
		creditCode = json['creditCode'];
		isTenant = json['isTenant'];
		registeredCapital = json['registeredCapital'];
		enablePayment = json['enablePayment'];
		texNo = json['texNo'];
		id = json['id'];
		openAccount = json['openAccount'];
		fax = json['fax'];
		fixPhone = json['fixPhone'];
		enterTime = json['enterTime'];
		registeredNo = json['registeredNo'];
		email = json['email'];
		reasonRejection = json['reasonRejection'];
		shopCode = json['shopCode'];
		creator = json['creator'];
		address = json['address'];
		orgName = json['orgName'];
		isStore = json['isStore'];
		taxesType = json['taxesType'];
		updateTime = json['updateTime'];
		idcardReverse = json['idcardReverse'];
		idcardNumber = json['idcardNumber'];
		logoUrl = json['logoUrl'];
		parentId = json['parentId'];
		foodLicenseNumber = json['foodLicenseNumber'];
		createTime = json['createTime'];
		name = json['name'];
		payChannel = json['payChannel'];
		idcardFront = json['idcardFront'];
		status = json['status'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['foodUrl'] = this.foodUrl;
		data['licenseUrl'] = this.licenseUrl;
		data['linkPhone'] = this.linkPhone;
		data['paymentInitPrice'] = this.paymentInitPrice;
		data['remark'] = this.remark;
		data['source'] = this.source;
		data['linkName'] = this.linkName;
		data['dr'] = this.dr;
		data['auditState'] = this.auditState;
		data['orgId'] = this.orgId;
		data['updater'] = this.updater;
		data['principal'] = this.principal;
		data['isLogin'] = this.isLogin;
		data['creditCode'] = this.creditCode;
		data['isTenant'] = this.isTenant;
		data['registeredCapital'] = this.registeredCapital;
		data['enablePayment'] = this.enablePayment;
		data['texNo'] = this.texNo;
		data['id'] = this.id;
		data['openAccount'] = this.openAccount;
		data['fax'] = this.fax;
		data['fixPhone'] = this.fixPhone;
		data['enterTime'] = this.enterTime;
		data['registeredNo'] = this.registeredNo;
		data['email'] = this.email;
		data['reasonRejection'] = this.reasonRejection;
		data['shopCode'] = this.shopCode;
		data['creator'] = this.creator;
		data['address'] = this.address;
		data['orgName'] = this.orgName;
		data['isStore'] = this.isStore;
		data['taxesType'] = this.taxesType;
		data['updateTime'] = this.updateTime;
		data['idcardReverse'] = this.idcardReverse;
		data['idcardNumber'] = this.idcardNumber;
		data['logoUrl'] = this.logoUrl;
		data['parentId'] = this.parentId;
		data['foodLicenseNumber'] = this.foodLicenseNumber;
		data['createTime'] = this.createTime;
		data['name'] = this.name;
		data['payChannel'] = this.payChannel;
		data['idcardFront'] = this.idcardFront;
		data['status'] = this.status;
		return data;
	}
}
