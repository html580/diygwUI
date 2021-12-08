<template>
	<view class="container">
		<form @submit="submitForm" @reset="resetForm" class="flex diygw-form diygw-col-24">
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 单选文本 </view>
				<view class="input">
					<input class="flex1" name="input" :value="input" placeholder="请输入提示信息" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 noborder">
				<view class="title"> 多行文本 </view>
				<view class="input">
					<textarea class="flex1" name="textarea" :value="textarea" placeholder="请输入提示信息"></textarea>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 标题 </view>
				<view class="input">
					<view :data-checked="switched" @tap="changeSwitched">
						<checkbox name="" :checked="switched" hidden="true" />
						<div class="diygw-switch-box" :class="switched ? 'checked' : ''"></div>
					</view>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 复选 </view>
				<view class="input">
					<checkbox-group class="flex flex-wrap check-green diygw-col-24 justify-between" @change="changeCheckbox" name="checkbox">
						<label v-for="(item, index) in checkboxDatas" class="diygw-checkbox-label">
							<checkbox class="diygw-checkbox" :value="item.value" :checked="item.checked"> </checkbox>
							<view class="diygw-icon-checkbox" :class="item.checked ? 'checked' : ''"></view>
							<view>
								{{ item.label }}
							</view>
						</label>
					</checkbox-group>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 单选 </view>
				<view class="input">
					<radio-group class="flex flex-wrap check-green diygw-col-24 justify-between" @change="changeRadio" name="radio">
						<label v-for="(item, index) in radioDatas" class="diygw-radio-label">
							<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
							<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
							<div class="diygw-checkbox-text">
								{{ item.label }}
							</div>
						</label>
					</radio-group>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 多层选择 </view>
				<view class="input flex">
					<picker mode="multiSelector" name="pickerview" @columnchange="changePickerview" :value="pickerviewIndex" :range="pickerviewDatas">
						<view class="uni-input"> {{ pickerviewDatas[0][pickerviewIndex[0]] }}, {{ pickerviewDatas[1][pickerviewIndex[1]] }} </view>
					</picker>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 级联选择 </view>
				<view class="input">
					<picker mode="multiSelector" name="selects" @columnchange="changeSelects" :value="selectsIndex" :range="selectsDatas">
						<view class="uni-input"> {{ selectsDatas[0][selectsIndex[0]] }}, {{ selectsDatas[1][selectsIndex[1]] }} </view>
					</picker>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 标题 </view>
				<view class="input flex">
					<view class="upload" v-for="(item, index) in uploadDatas">
						<image class="image" @tap="previewUpload" :src="item" mode="aspectFill"></image>
						<text class="diy-icon-close" @tap="uploadDatas.splice(index, 1)"></text>
					</view>
					<view class="upload" @tap="uploadUpload">
						<text class="diy-icon-cameraadd"></text>
					</view>
					<input hidden :value="upload" name="upload" maxlength="-1" />
				</view>
			</view>
			<view class="flex diygw-col-24">
				<button style="" form-type="reset" class="diygw-btn red radius flex1 margin-xs">重置</button>
				<button style="" form-type="submit" class="diygw-btn green radius flex1 margin-xs">提交</button>
			</view>
		</form>
		<view class="diygw-form-item diygw-col-24 flex-direction-column">
			<view class="title diygw-col-24"> 标题换行 </view>
			<view class="input">
				<input class="flex1" name="input2" :value="input2" placeholder="请输入提示信息" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 flex-direction-column noborder">
			<view class="title diygw-col-24"> 输入带边框 </view>
			<view class="input solid">
				<input class="flex1" name="input3" :value="input3" placeholder="请输入提示信息" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 noborder">
			<view class="title"> 输入带边框 </view>
			<view class="input solid">
				<input class="flex1" name="input4" :value="input4" placeholder="请输入提示信息" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 noborder">
			<view class="title"> 带后缀按钮 </view>
			<view class="input">
				<input class="flex1" name="input5" :value="input5" placeholder="请输入提示信息" />
				<view class="diygw-tag radius-xs green"> 标签 </view>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 noborder">
			<view class="title"> 带后缀图标 </view>
			<view class="input solid">
				<input class="flex1" name="input8" :value="input8" placeholder="请输入提示信息" />
				<text class="diy-icon-settings" style="color: #07c160"></text>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 noborder">
			<view class="title"> 带后缀图标 </view>
			<view class="input solid">
				<input class="flex1" name="input6" :value="input6" placeholder="请输入提示信息" />
				<image src="/static/115d39539da7.jpg" class="icon radius"></image>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 flex-direction-column">
			<view class="title title-mb5 text-red diygw-col-24"> 可改颜色 </view>
			<view class="input">
				<radio-group class="flex flex-wrap check-red diygw-col-24 justify-between" @change="changeRadio1" name="radio1">
					<label v-for="(item, index) in radio1Datas" class="diygw-radio-label">
						<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
						<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
						<div class="diygw-checkbox-text">
							{{ item.label }}
						</div>
					</label>
				</radio-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title title-mb5 text-red"> 可改颜色 </view>
			<view class="input">
				<radio-group class="flex flex-wrap check-red diygw-col-24 justify-between" @change="changeRadio2" name="radio2">
					<label v-for="(item, index) in radio2Datas" class="diygw-radio-label">
						<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
						<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
						<div class="diygw-checkbox-text">
							{{ item.label }}
						</div>
					</label>
				</radio-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title title-mb5 text-blue"> 可改颜色 </view>
			<view class="input">
				<radio-group class="flex flex-wrap check-blue diygw-col-24 justify-between" @change="changeRadio3" name="radio3">
					<label v-for="(item, index) in radio3Datas" class="diygw-radio-label">
						<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
						<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
						<div class="diygw-checkbox-text">
							{{ item.label }}
						</div>
					</label>
				</radio-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title title-mb5 text-blue"> 可垂直 </view>
			<view class="input">
				<radio-group class="flex flex-wrap check-blue diygw-col-24 flex-direction-column justify-between" @change="changeRadio4" name="radio4">
					<label v-for="(item, index) in radio4Datas" class="diygw-radio-label">
						<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
						<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
						<div class="diygw-checkbox-text">
							{{ item.label }}
						</div>
					</label>
				</radio-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24 flex-direction-column">
			<view class="title title-mb5 text-grey diygw-col-24"> 标题换行 </view>
			<view class="input">
				<checkbox-group class="flex flex-wrap check-grey diygw-col-24 justify-between" @change="changeCheckbox1" name="checkbox1">
					<label v-for="(item, index) in checkbox1Datas" class="diygw-checkbox-label">
						<checkbox class="diygw-checkbox" :value="item.value" :checked="item.checked"> </checkbox>
						<view class="diygw-icon-checkbox" :class="item.checked ? 'checked' : ''"></view>
						<view>
							{{ item.label }}
						</view>
					</label>
				</checkbox-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title title-mb5 text-black"> 标题 </view>
			<view class="input">
				<checkbox-group class="flex flex-wrap check-black diygw-col-24 justify-between" @change="changeCheckbox2" name="checkbox2">
					<label v-for="(item, index) in checkbox2Datas" class="diygw-checkbox-label">
						<checkbox class="diygw-checkbox" :value="item.value" :checked="item.checked"> </checkbox>
						<view class="diygw-icon-checkbox" :class="item.checked ? 'checked' : ''"></view>
						<view>
							{{ item.label }}
						</view>
					</label>
				</checkbox-group>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title title-mb5 text-black"> 标题 </view>
			<view class="input">
				<checkbox-group class="flex flex-wrap check-black diygw-col-24 flex-direction-column justify-between" @change="changeCheckbox3" name="checkbox3">
					<label v-for="(item, index) in checkbox3Datas" class="diygw-checkbox-label">
						<checkbox class="diygw-checkbox" :value="item.value" :checked="item.checked"> </checkbox>
						<view class="diygw-icon-checkbox" :class="item.checked ? 'checked' : ''"></view>
						<view>
							{{ item.label }}
						</view>
					</label>
				</checkbox-group>
			</view>
		</view>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
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
			};
		},
		onShareAppMessage: function () {},
		onLoad(option) {
			this.setCurrentPage(this);
			if (option) {
				this.setData({
					globalOption: option
				});
			}
		},
		mounted() {
			this.init();
		},
		methods: {
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
				if (this.globalOption && this.globalOption.id) {
					//调用数据
					let param = {
						tableName: 'form'
					};
					param = this.$tools.extend(param, this.globalOption);
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
				let items = this.checkboxDatas;
				for (var i = 0, len = items.length; i < len; ++i) {
					const item = items[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
				}
			},
			changeRadio(evt) {
				let value = evt.detail.value;
				let radioDatas = this.radioDatas;
				for (var i = 0, len = this.radioDatas.length; i < len; ++i) {
					radioDatas[i].checked = radioDatas[i].value == value;
				}
			},
			changePickerview(evt) {
				this.pickerviewIndex[evt.detail.column] = evt.detail.value;
			},
			changeSelects(evt) {
				this.selectsIndex[evt.detail.column] = evt.detail.value;
				if (evt.detail.column == 0) {
					this.selectsIndex.splice(1, 1, 0);
					this.selectsDatas.splice(1, 1, this.getPickerChildren(this.selectsInitDatas, this.selectsIndex[0], null));
				}
				this.$forceUpdate();
			},
			uploadUpload(e) {
				this.uploadImage(this, 'upload');
			},
			previewUpload(e) {
				uni.previewImage({
					current: e.currentTarget.url, // 当前显示图片的http链接
					urls: this.uploadDatas // 需要预览的图片http链接列表
				});
			},
			changeRadio1(evt) {
				let value = evt.detail.value;
				let radio1Datas = this.radio1Datas;
				for (var i = 0, len = this.radio1Datas.length; i < len; ++i) {
					radio1Datas[i].checked = radio1Datas[i].value == value;
				}
			},
			changeRadio2(evt) {
				let value = evt.detail.value;
				let radio2Datas = this.radio2Datas;
				for (var i = 0, len = this.radio2Datas.length; i < len; ++i) {
					radio2Datas[i].checked = radio2Datas[i].value == value;
				}
			},
			changeRadio3(evt) {
				let value = evt.detail.value;
				let radio3Datas = this.radio3Datas;
				for (var i = 0, len = this.radio3Datas.length; i < len; ++i) {
					radio3Datas[i].checked = radio3Datas[i].value == value;
				}
			},
			changeRadio4(evt) {
				let value = evt.detail.value;
				let radio4Datas = this.radio4Datas;
				for (var i = 0, len = this.radio4Datas.length; i < len; ++i) {
					radio4Datas[i].checked = radio4Datas[i].value == value;
				}
			},
			changeCheckbox1(evt) {
				let values = evt.detail.value;
				let items = this.checkbox1Datas;
				for (var i = 0, len = items.length; i < len; ++i) {
					const item = items[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
				}
			},
			changeCheckbox2(evt) {
				let values = evt.detail.value;
				let items = this.checkbox2Datas;
				for (var i = 0, len = items.length; i < len; ++i) {
					const item = items[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
				}
			},
			changeCheckbox3(evt) {
				let values = evt.detail.value;
				let items = this.checkbox3Datas;
				for (var i = 0, len = items.length; i < len; ++i) {
					const item = items[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
				}
			}
		}
	};
</script>

<style lang="scss">
	.container {
		padding-bottom: 80px;
	}
</style>
