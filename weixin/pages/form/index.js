//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
Page({
	data: {
		input: '',
		textareaDatas: [],
		textarea: '',
		switched: true,
		checkboxDatas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		radioDatas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		pickerviewDatas: [
			['选项一', '选项二', '选项三'],
			['选项一', '选项二', '选项三']
		],
		pickerviewIndex: [0, 0],
		selectsInitDatas: [
			{ children: [{ children: [], label: '市辖区' }], label: '北京市' },
			{
				children: [
					{ children: [], label: '广州市' },
					{ children: [], label: '深圳市' },
					{ children: [], label: '中山市' },
					{ children: [], label: '梅州市' }
				],
				label: '广东省'
			},
			{
				children: [
					{ children: [], label: '南京市' },
					{ children: [], label: '无锡市' },
					{ children: [], label: '苏州市' }
				],
				label: '江苏省'
			}
		],
		selectsDatas: [['北京市', '广东省', '江苏省'], ['市辖区']],
		selectsIndex: [0, 0],
		uploadDatas: [],
		upload: '',
		input2: '',
		input3: '',
		input4: '',
		input5: '',
		input8: '',
		input6: '',
		radio1Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		radio2Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		radio3Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		radio4Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		checkbox1Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		checkbox2Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		],
		checkbox3Datas: [
			{ value: '1', label: '选项一' },
			{ value: '2', label: '选项二' },
			{ value: '3', label: '选项三' }
		]
	},
	onLoad(option) {
		if (option) {
			this.setData({
				globalOption: option
			});
		}
	},
	onShow() {
		this.init();
	},
	async init() {
		await this.getForm();
	},
	getForm() {
		this.validateForm = this.Validate({
			input: {
				required: {
					message: '不能为空哟'
				}
			}
		});
		if (this.data.globalOption && this.data.globalOption.id) {
			//调用数据
			let param = {
				tableName: 'form'
			};
			param = this.$tools.extend(param, this.data.globalOption);
			//调用数据
			this.$request.getData(param).then((data) => {
				if (data.code == 200) {
					var row = data.rows[0];
					var values = {};
					for (let key in row) {
						var keyr = key.replace(new RegExp('-', 'gm'), '');
						if (this['change' + keyr]) {
							this['change' + keyr](row[key]);
						} else {
							values[key] = row[key];
						}
					}
					this.setData(values);
				} else {
					this.showModal(data.message);
				}
			});
		}
	},
	submitForm: function (e) {
		if (!this.validateForm.checkForm(e)) {
			const error = this.validateForm.errorList[0];
			this.showToast(error.msg, 'none');
			return false;
		} else {
			this.$request.saveData(e.detail.value).then((data) => {
				if (data.code == 200) {
					this.showToast(error.msg, 'success');
				} else {
					this.showModal(data.msg);
				}
			});
		}
	},
	resetForm: function () {
		console.log('form发生了reset事件');
	},
	changeSwitched(evt) {
		let checked = !evt.currentTarget.dataset.checked;
		this.setData({
			switched: checked
		});
	},
	changeCheckbox(evt) {
		let values = evt.detail.value;
		let checkboxDatas = this.data.checkboxDatas;
		for (var i = 0, len = checkboxDatas.length; i < len; ++i) {
			const item = checkboxDatas[i];
			if (values.indexOf(item.value) >= 0) {
				item['checked'] = true;
			} else {
				item['checked'] = false;
			}
		}
		this.setData({ checkboxDatas });
	},
	changeRadio(evt) {
		let value = evt.detail.value;
		let radioDatas = this.data.radioDatas;
		for (var i = 0, len = radioDatas.length; i < len; ++i) {
			radioDatas[i].checked = radioDatas[i].value == value;
		}
		this.setData({ radioDatas });
	},
	changePickerview(evt) {
		let pickerviewIndex = this.data.pickerviewIndex;
		pickerviewIndex[evt.detail.column] = evt.detail.value;
		this.setData({ pickerviewIndex });
	},
	changeSelects(evt) {
		let selectsIndex = this.data.selectsIndex;
		let selectsDatas = this.data.selectsDatas;
		selectsIndex[evt.detail.column] = evt.detail.value;
		if (evt.detail.column == 0) {
			selectsIndex.splice(1, 1, 0);
			selectsDatas.splice(1, 1, this.getPickerChildren(this.data.selectsInitDatas, selectsIndex[0], null));
		}
		this.setData({ selectsIndex, selectsDatas });
	},
	uploadUpload(e) {
		this.uploadImage(this, 'upload');
	},
	previewUpload(e) {
		wx.previewImage({
			current: e.currentTarget.dataset.url, // 当前显示图片的http链接
			urls: this.data.uploadDatas // 需要预览的图片http链接列表
		});
	},
	changeRadio1(evt) {
		let value = evt.detail.value;
		let radio1Datas = this.data.radio1Datas;
		for (var i = 0, len = radio1Datas.length; i < len; ++i) {
			radio1Datas[i].checked = radio1Datas[i].value == value;
		}
		this.setData({ radio1Datas });
	},
	changeRadio2(evt) {
		let value = evt.detail.value;
		let radio2Datas = this.data.radio2Datas;
		for (var i = 0, len = radio2Datas.length; i < len; ++i) {
			radio2Datas[i].checked = radio2Datas[i].value == value;
		}
		this.setData({ radio2Datas });
	},
	changeRadio3(evt) {
		let value = evt.detail.value;
		let radio3Datas = this.data.radio3Datas;
		for (var i = 0, len = radio3Datas.length; i < len; ++i) {
			radio3Datas[i].checked = radio3Datas[i].value == value;
		}
		this.setData({ radio3Datas });
	},
	changeRadio4(evt) {
		let value = evt.detail.value;
		let radio4Datas = this.data.radio4Datas;
		for (var i = 0, len = radio4Datas.length; i < len; ++i) {
			radio4Datas[i].checked = radio4Datas[i].value == value;
		}
		this.setData({ radio4Datas });
	},
	changeCheckbox1(evt) {
		let values = evt.detail.value;
		let checkbox1Datas = this.data.checkbox1Datas;
		for (var i = 0, len = checkbox1Datas.length; i < len; ++i) {
			const item = checkbox1Datas[i];
			if (values.indexOf(item.value) >= 0) {
				item['checked'] = true;
			} else {
				item['checked'] = false;
			}
		}
		this.setData({ checkbox1Datas });
	},
	changeCheckbox2(evt) {
		let values = evt.detail.value;
		let checkbox2Datas = this.data.checkbox2Datas;
		for (var i = 0, len = checkbox2Datas.length; i < len; ++i) {
			const item = checkbox2Datas[i];
			if (values.indexOf(item.value) >= 0) {
				item['checked'] = true;
			} else {
				item['checked'] = false;
			}
		}
		this.setData({ checkbox2Datas });
	},
	changeCheckbox3(evt) {
		let values = evt.detail.value;
		let checkbox3Datas = this.data.checkbox3Datas;
		for (var i = 0, len = checkbox3Datas.length; i < len; ++i) {
			const item = checkbox3Datas[i];
			if (values.indexOf(item.value) >= 0) {
				item['checked'] = true;
			} else {
				item['checked'] = false;
			}
		}
		this.setData({ checkbox3Datas });
	}
});
