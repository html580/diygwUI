import ValidateClazz from './Validate'
export const Validate = (rules, messages) => new ValidateClazz(rules, messages)


export function setData(dataset) {
	for (let field in dataset) {
		// 通过正则表达式  查找路径数据
		const regex = /([\w$]+)|\[(:\d)\]/g
		const patten = field.match(regex)
		let result = this // 指向调用的数据 如data
		// 遍历路径  逐级查找  最后一级用于直接赋值
		for (let i = 0; i < patten.length - 1; i++) {
		  const key = patten[i]
		  result = result[key]
		}
		result[patten[patten.length - 1]] = dataset[field] 
	}
}

export function navigateTo(e) {
    let dataset = e.currentTarget?e.currentTarget.dataset:e
	let  {id,type}= dataset
	
	// #ifndef VUE3
	let thiz = getApp().globalData.currentPage 
	// #endif
	// #ifdef VUE3
	let thiz = this
	// #endif
	if(type == 'openmodal'){
		thiz[id] = 'show'
	}else if(type == 'closemodal'){
		thiz[id] = ""
	}else if(type == 'page'||type=='inner'||type=='href'){
		thiz.$tools.navigateTo(dataset.url, dataset);
	}else if(type=='submit'){
		showToast('将执行表单提交动作')
	}else if(type=='reset'){
		showToast('将执行表单重置动作')
	}else if(type=='tip'){
		showToast(dataset.tip)
	}else if(type=='confirm'){
		uni.showModal({
			title: '提示',
			content: dataset.tip,
			showCancel: !1,
		});
	}else if(type=='daohang'){
		uni.openLocation({
			latitude: Number(dataset.lat),
			longitude: Number(dataset.lng),
			address:dataset.address,
			success: function () {
				console.log('success');
			}
		});
	}else if(type=='phone'){
		thiz.$tools.makePhoneCall(e)
	}else if(type=='previewImage'||type=='preview'){
		uni.previewImage({
			current: thiz.$tools.renderImage(dataset.img), // 当前显示图片的http链接
			urls: [thiz.$tools.renderImage(dataset.img)] // 需要预览的图片http链接列表
		})
	}else if(type=='copy'){
		uni.setClipboardData({
			data: dataset.copy,
			showToast:false,
			success: function () {
				showToast(dataset.tip||'复制成功','none')
			}
		});
	}else if(type=='xcx'){
		uni.navigateToMiniProgram({
			appId: dataset.appid,
			path: dataset.path,
			success(res) {
				// 打开成功
			}
		})
	}else if(typeof thiz[type]=='function'){
		if(type.endsWith("Api")){
			thiz[type]()
		}else{
			thiz[type](dataset)
		}
	}else{
		showToast(type+'类型有待实现')
	}
}


export function showModal(message) {
	uni.showModal({
		title: '友情提示',
		content: message,
		showCancel: !1,
	});
}

export function showToast(title,icon){
	uni.showToast({
		title: title,
		icon: icon?icon:'none'
	})
}

export function getPickerChildren(data,chindInex1,childIndex2){
	if(chindInex1!=null && data[chindInex1] && data[chindInex1].children && data[chindInex1].children){
		let children = data[chindInex1].children
		//只判断一级
		if(childIndex2==null){
			if(children!=null && children.length>0){
				return children.map(item=>item.label)
			}else{
				return []
			}
		}else{
			//判断二级
			//有可能并设置下级结点
			if(children[childIndex2]==null){
				return []
			}
			let children2 = children[childIndex2].children
			if(children2!=null && children2.length>0){
				return children2.map(item=>item.text)
			}else{
				return []
			}
		}
	}else{
		return []
	}
}


//根据field获取数据
export function getData(thiz,field){
	// 通过正则表达式  查找路径数据
	const regex = /([\w$]+)|\[(:\d)\]/g
	const patten = field.match(regex)
	let result = thiz // 指向调用的数据 如data
	// 遍历路径  逐级查找  最后一级用于直接赋值
	for (let i = 0; i < patten.length - 1; i++) {
	  let key = patten[i]
	  result = result[key]
	}
	return result[patten[patten.length - 1]]
}
export function uploadImage(thiz,field,fieldData){
	uni.chooseImage({
		sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
		sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有javascript:;
		success: function (res) {
			// 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
			let tempFilePaths = res.tempFilePaths;
			for (let i = 0; i < tempFilePaths.length; i++) {
				uni.uploadFile({
					url: thiz.$http.setUrl('/data/file.html'), //仅为示例，非真实的接口地址
					filePath: tempFilePaths[0],
					name: 'file',
					success: function (res) {
						let data = thiz.$tools.fromJson(res.data);
						let url = thiz.$tools.renderImage(data.url);
						let files = getData(thiz,fieldData).concat(url);
						thiz.setData({
							[fieldData]: files,
							[field]: (files || []).join(',').replace(/^[]/, ''),
						});
						
					},
				});
			}
		},
	});
}

export function setCurrentPage(page){
	getApp().globalData.currentPage = page
}
