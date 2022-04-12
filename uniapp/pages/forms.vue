<template>
	<view class="container">
		<form @submit="submitForm" @reset="resetForm" class="flex diygw-form diygw-col-24">
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 单行 </view>
				<view class="input">
					<input class="flex1" name="input" comfirm-type="done" type="text" v-model="input" placeholder="请输入提示信息" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 输入边框 </view>
				<view class="input solid">
					<input class="flex1" name="input5" comfirm-type="done" type="text" v-model="input5" placeholder="请输入提示信息" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 flex-direction-column">
				<view class="title diygw-col-24"> 单行 </view>
				<view class="input">
					<input class="flex1" name="input1" comfirm-type="done" type="text" v-model="input1" placeholder="请输入提示信息" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 flex-direction-column">
				<view class="title diygw-col-24"> 换行有边框 </view>
				<view class="input solid">
					<input class="flex1" name="input2" comfirm-type="done" type="text" v-model="input2" placeholder="请输入提示信息" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 flex-direction-column">
				<view class="title diygw-col-24"> 后缀图标 </view>
				<view class="input solid">
					<input class="flex1" name="input3" comfirm-type="done" type="text" v-model="input3" placeholder="请输入提示信息" />
					<text class="diy-icon-scan" style="color: #07c160" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 flex-direction-column">
				<view class="title diygw-col-24"> 后缀标签 </view>
				<view class="input solid">
					<input class="flex1" name="input4" comfirm-type="done" type="text" v-model="input4" placeholder="请输入提示信息" />
					<view class="diygw-tag radius-xs green"> 标签 </view>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24 noborder">
				<view class="title"> 多行 </view>
				<view class="input">
					<textarea class="flex1" name="textarea" v-model="textarea" placeholder="请输入提示信息"></textarea>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 单选 </view>
				<view class="input">
					<radio-group class="flex flex-wrap check-green diygw-col-24 justify-between" @change="changeRadio" name="radio">
						<label v-for="(item, index) in radioDatas" class="diygw-radio-label">
							<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
							<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
							<view class="diygw-checkbox-text">
								{{ item.label }}
							</view>
						</label>
					</radio-group>
					<input hidden type="hidden" name="radioLabel" :value="radioLabel" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 单选 </view>
				<view class="input">
					<radio-group class="flex flex-wrap check-pink diygw-col-24 justify-between" @change="changeRadio1" name="radio1">
						<label v-for="(item, index) in radio1Datas" class="diygw-radio-label">
							<radio class="diygw-radio" :value="item.value" :checked="item.checked"> </radio>
							<view class="diygw-icon-radio" :class="item.checked ? 'checked' : ''"></view>
							<view class="diygw-checkbox-text">
								{{ item.label }}
							</view>
						</label>
					</radio-group>
					<input hidden type="hidden" name="radio1Label" :value="radio1Label" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 多选 </view>
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
					<input hidden type="hidden" name="checkboxLabel" :value="checkboxLabel" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 多选 </view>
				<view class="input">
					<checkbox-group class="flex flex-wrap check-black diygw-col-24 justify-between" @change="changeCheckbox1" name="checkbox1">
						<label v-for="(item, index) in checkbox1Datas" class="diygw-checkbox-label">
							<checkbox class="diygw-checkbox" :value="item.value" :checked="item.checked"> </checkbox>
							<view class="diygw-icon-checkbox" :class="item.checked ? 'checked' : ''"></view>
							<view>
								{{ item.label }}
							</view>
						</label>
					</checkbox-group>
					<input hidden type="hidden" name="checkbox1Label" :value="checkbox1Label" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 下拉 </view>
				<view class="input">
					<picker @change="changeSelect" :value="selectIndex" :range="selectDatas" range-key="label">
						<view class="picker-item" v-if="selectIndex >= 0">
							{{ selectDatas[selectIndex].label }}
						</view>
						<view class="picker-item" v-else> 请选择 </view>
					</picker>
					<input hidden type="hidden" name="selectIndex" :value="selectIndex" />
					<input hidden type="hidden" name="select" :value="select" />
					<input hidden type="hidden" name="selectLabel" :value="selectLabel" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 级联选择 </view>
				<view class="input">
					<picker mode="multiSelector" name="selects" @columnchange="changeSelects" :value="selects" :range="selectsDatas">
						<view class="uni-input"> {{ selectsDatas[0][selects[0]] }}, {{ selectsDatas[1][selects[1]] }} </view>
					</picker>
					<input hidden type="hidden" name="selectsLabel" :value="selectsLabel" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 多层选择 </view>
				<view class="input flex">
					<picker mode="multiSelector" name="pickerview" @columnchange="changePickerview" :value="pickerview" :range="pickerviewDatas">
						<view class="uni-input"> {{ pickerviewDatas[0][pickerview[0]] }}, {{ pickerviewDatas[1][pickerview[1]] }} </view>
					</picker>
					<input hidden type="hidden" name="pickerviewLabel" :value="pickerviewLabel" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title title-mb5"> 开关 </view>
				<view class="input">
					<view :data-checked="switched" @tap="changeSwitched">
						<checkbox name="" :checked="switched" hidden="true" />
						<view class="diygw-switch-box" :class="switched ? 'checked' : ''"></view>
					</view>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 日期 </view>
				<view class="input">
					<picker name="date" @change="changeDate" :value="date" mode="date">
						<view class="picker-item" v-if="date">
							{{ date }}
						</view>
						<view class="picker-item" v-else> 请选择 </view>
					</picker>
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 滑块 </view>
				<view class="input flex1">
					<slider class="flex1" @change="changeSlider" name="slider" :value="slider" active-color="#07c160" min="0" max="100" step="1" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 上线 </view>
				<view class="input flex">
					<view class="upload" v-for="(item, index) in uploadDatas">
						<image class="image" @tap="previewUpload" :src="item" :data-url="item" mode="aspectFill"></image>
						<text class="diy-icon-close" :data-index="index" @tap="delUpload" />
					</view>
					<view class="upload" @tap="uploadUpload">
						<text class="diy-icon-cameraadd" />
					</view>
					<input hidden :value="upload" name="upload" maxlength="-1" />
				</view>
			</view>
			<view class="diygw-form-item diygw-col-24">
				<view class="title"> 评分 </view>
				<view class="input" style="overflow-x: initial">
					<template v-for="item in rateCount"> <text class="diy-icon-starfill pointer" :data-index="item" :style="{ color: item <= rate ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate" /> </template>
					<input type="hidden" hidden name="rate" :value="rate" />
				</view>
			</view>
			<view class="flex diygw-col-24">
				<button form-type="reset" class="diygw-btn red flex1 margin-xs">重置</button>
				<button form-type="submit" class="diygw-btn green flex1 margin-xs">提交</button>
			</view>
		</form>
		<view class="clearfix"></view>
	</view>
</template>

<script>
	//create by: 邓志锋 <280160522@qq.com> <https://www.diygw.com> DIYGW可视化设计一键生成源码
	export default {
		data() {
			return {
				input: '',
				input5: '',
				input1: '',
				input2: '',
				input3: '',
				input4: '',
				textarea: '',
				radioDatas: [
					{ value: '1', label: '选项一', checked: true },
					{ value: '2', label: '选项二', checked: false },
					{ value: '3', label: '选项三', checked: false }
				],
				radio: '1',
				radioLabel: '',
				radio1Datas: [
					{ value: '1', label: '选项一', checked: true },
					{ value: '2', label: '选项二', checked: false },
					{ value: '3', label: '选项三', checked: false }
				],
				radio1: '1',
				radio1Label: '',
				checkboxDatas: [
					{ value: '1', label: '选项一', checked: true },
					{ value: '2', label: '选项二', checked: true },
					{ value: '3', label: '选项三', checked: false }
				],
				checkbox: ['1', '2'],
				checkboxLabel: `选项一,选项二`,
				checkbox1Datas: [
					{ value: '1', label: '选项一', checked: true },
					{ value: '2', label: '选项二', checked: true },
					{ value: '3', label: '选项三', checked: false }
				],
				checkbox1: ['1', '2'],
				checkbox1Label: `选项一,选项二`,
				selectDatas: [
					{ value: '1', label: '选项一', checked: false },
					{ value: '2', label: '选项二', checked: false },
					{ value: '3', label: '选项三', checked: false }
				],
				selectIndex: -1,
				select: '',
				selectLabel: '',
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
				selects: [0, 0],
				selectsLabel: '北京市,市辖区',
				pickerviewDatas: [
					['选项一', '选项二', '选项三'],
					['选项一', '选项二', '选项三']
				],
				pickerview: [0, 0],
				pickerviewLabel: '选项一,选项一',
				switched: true,
				date: '',
				slider: 3,
				uploadDatas: [],
				upload: '',
				rateCount: 5,
				rate: 3
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
			async getForm() {
				if (this.globalOption && this.globalOption.id) {
					//调用数据
					let param = {
						tableName: 'form'
					};
					param = this.$tools.extend(param, this.globalOption);
					//调用数据
					let data = await this.$http.get('', param, {}, 'json');
					if (data.code == 200) {
						let values = {};
						let formData = data.data;
						for (let key in formData) {
							values[key] = formData[key];
						}
						this.setData(values);
					} else {
						this.showModal(data.message);
					}
				}
			},
			async submitForm(e) {
				this.validateForm = this.Validate({});
				if (!this.validateForm.checkForm(e)) {
					let data = this.validateForm.errorList[0];
					this.showToast(data.msg, 'none');
					return false;
				} else {
					//保存数据
					let param = e.detail.value;
					let url = '';
					if (!url) {
						this.showToast('请先配置表单提交地址', 'none');
						return false;
					}

					let data = await this.$http.post('', param, {}, 'json');
					if (data.code == 200) {
						this.showToast(data.msg, 'success');
					} else {
						this.showModal(data.msg);
					}
				}
			},
			resetForm() {
				console.log('form发生了reset事件');
			},
			changeRadio(evt) {
				let value = evt.detail.value;
				let radioDatas = this.radioDatas;

				let radioLabel = this.radioLabel;
				for (var i = 0, len = radioDatas.length; i < len; ++i) {
					radioDatas[i].checked = radioDatas[i].value == value;
					if (radioDatas[i].checked) {
						radioLabel = radioDatas[i].label;
					}
				}
				this.radioLabel = radioLabel;
				this.radioDatas = radioDatas;
			},
			changeRadio1(evt) {
				let value = evt.detail.value;
				let radio1Datas = this.radio1Datas;

				let radio1Label = this.radio1Label;
				for (var i = 0, len = radio1Datas.length; i < len; ++i) {
					radio1Datas[i].checked = radio1Datas[i].value == value;
					if (radio1Datas[i].checked) {
						radio1Label = radio1Datas[i].label;
					}
				}
				this.radio1Label = radio1Label;
				this.radio1Datas = radio1Datas;
			},
			changeCheckbox(evt) {
				let values = evt.detail.value;
				let checkboxDatas = this.checkboxDatas;
				let checkboxLabels = [];
				let checkbox = [];
				for (var i = 0, len = checkboxDatas.length; i < len; ++i) {
					const item = checkboxDatas[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
					if (item['checked']) {
						checkboxLabels.push(item['label']);
						checkbox.push(item['value']);
					}
				}
				let checkboxLabel = checkboxLabels.join(',');
				this.checkboxLabel = checkboxLabel;
				this.checkbox = checkbox;
				this.checkboxDatas = checkboxDatas;
			},
			changeCheckbox1(evt) {
				let values = evt.detail.value;
				let checkbox1Datas = this.checkbox1Datas;
				let checkbox1Labels = [];
				let checkbox1 = [];
				for (var i = 0, len = checkbox1Datas.length; i < len; ++i) {
					const item = checkbox1Datas[i];
					if (values.indexOf(item.value) >= 0) {
						this.$set(item, 'checked', true);
					} else {
						this.$set(item, 'checked', false);
					}
					if (item['checked']) {
						checkbox1Labels.push(item['label']);
						checkbox1.push(item['value']);
					}
				}
				let checkbox1Label = checkbox1Labels.join(',');
				this.checkbox1Label = checkbox1Label;
				this.checkbox1 = checkbox1;
				this.checkbox1Datas = checkbox1Datas;
			},
			changeSelect(e) {
				let selectIndex = e.detail.value;
				let selectDatas = this.selectDatas;
				let selectLabel = selectDatas[selectIndex].label;
				let select = selectDatas[selectIndex].value;

				this.selectIndex = selectIndex;
				this.selectLabel = selectLabel;
				this.select = select;
			},
			changeSelects(evt) {
				let selects = this.selects;
				let selectsDatas = this.selectsDatas;
				let selectsInitDatas = this.selectsInitDatas;
				selects[evt.detail.column] = evt.detail.value;
				if (evt.detail.column == 0) {
					selects.splice(1, 1, 0);
					selectsDatas.splice(1, 1, this.getPickerChildren(selectsInitDatas, selects[0], null));
				}
				let selectsLabels = [selectsDatas[0][selects[0]], selectsDatas[1][selects[1]]];
				let selectsLabel = selectsLabels.join(',');

				this.selects = selects;
				this.selectsLabel = selectsLabel;
				this.selectsDatas = selectsDatas;
			},
			changePickerview(evt) {
				let pickerviewDatas = this.pickerviewDatas;
				let pickerview = this.pickerview;
				pickerview[evt.detail.column] = evt.detail.value;
				let pickerviewLabels = [pickerviewDatas[0][pickerview[0]], pickerviewDatas[1][pickerview[1]]];
				let pickerviewLabel = pickerviewLabels.join(',');

				this.pickerview = pickerview;
				this.pickerviewLabel = pickerviewLabel;
				this.pickerviewDatas = pickerviewDatas;
			},
			changeSwitched(evt) {
				let checked = !evt.currentTarget.dataset.checked;
				this.setData({
					switched: checked
				});
			},
			changeDate(e) {
				this.date = e.detail.value;
			},
			changeSlider(evt) {
				let slider = evt.detail.value;
				this.slider = slider;
			},
			uploadUpload(e) {
				this.uploadImage(this, 'upload', 'uploadDatas');
			},
			delUpload(evt) {
				let { index } = evt.currentTarget.dataset;
				let Datas = this.uploadDatas;
				Datas.splice(index, 1);
				let upload = uploadDatas.join(',');
				this.uploadDatas = uploadDatas;
				this.upload = upload;
			},
			previewUpload(e) {
				uni.previewImage({
					current: e.currentTarget.url, // 当前显示图片的http链接
					urls: this.uploadDatas // 需要预览的图片http链接列表
				});
			},
			changeRate(evt) {
				let rate = evt.currentTarget.dataset.index;
				if (this.rate == rate) {
					rate = rate - 1;
				}
				this.rate = rate;
			}
		}
	};
</script>

<style lang="scss" scoped>
	.container {
		padding-left: 0px;
		padding-right: 0px;
	}
</style>
