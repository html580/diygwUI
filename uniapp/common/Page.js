import ValidateClazz from './Validate'
export const Validate = (rules, messages) => new ValidateClazz(rules, messages)

export function setData(dataset) {
	for (let key in dataset) {
		this[key] = dataset[key]
	}
}

export function navigateTo(e) {
	let  {id,type}= e.currentTarget.dataset
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
		thiz.$tools.navigateTo(e.currentTarget.dataset.url, e.currentTarget.dataset);
	}else if(type=='submit'){
		showToast('将执行表单提交动作')
	}else if(type=='reset'){
		showToast('将执行表单重置动作')
	}else if(type=='tip'){
		showToast(e.currentTarget.dataset.tip)
	}else if(type=='confirm'){
		uni.showModal({
			title: '提示',
			content: e.currentTarget.dataset.tip,
			showCancel: !1,
		});
	}else if(type=='daohang'){
		uni.openLocation({
			latitude: Number(e.currentTarget.dataset.lat),
			longitude: Number(e.currentTarget.dataset.lng),
			address:e.currentTarget.dataset.address,
			success: function () {
				console.log('success');
			}
		});
	}else if(type=='phone'){
		thiz.$tools.makePhoneCall(e)
	}else if(type=='previewImage'||type=='preview'){
		uni.previewImage({
			current: thiz.$tools.renderImage(e.currentTarget.dataset.img), // 当前显示图片的http链接
			urls: [thiz.$tools.renderImage(e.currentTarget.dataset.img)] // 需要预览的图片http链接列表
		})
	}else if(type=='copy'){
		uni.setClipboardData({
			data: e.currentTarget.dataset.copy,
			showToast:false,
			success: function () {
				showToast(e.currentTarget.dataset.tip||'复制成功','none')
			}
		});
	}else if(type=='xcx'){
		uni.navigateToMiniProgram({
			appId: e.currentTarget.dataset.appid,
			path: e.currentTarget.dataset.path,
			success(res) {
				// 打开成功
			}
		})
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

export function uploadImage(thiz,field){
	uni.chooseImage({
		sizeType: ['original', 'compressed'], // 可以指定是原图还是压缩图，默认二者都有
		sourceType: ['album', 'camera'], // 可以指定来源是相册还是相机，默认二者都有
		success: function (res) {
			// 返回选定照片的本地文件路径列表，tempFilePath可以作为img标签的src属性显示图片
			let tempFilePaths = res.tempFilePaths;
			for (let i = 0; i < tempFilePaths.length; i++) {
				uni.uploadFile({
					url: thiz.$request.setUrl('/data/file.html'), //仅为示例，非真实的接口地址
					filePath: tempFilePaths[0],
					name: 'file',
					success: function (res) {
						let data = thiz.$tools.fromJson(res.data);
						let url = thiz.$tools.renderImage(data.url);
						let files = thiz[field+'Datas'].concat(url);
						thiz.setData({
							[field+'Datas']: files,
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
