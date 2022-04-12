<template>
	<view class="container">
		<view class="diygw-title flex diygw-col-24 gradual-purple title-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 按钮在上方 </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column-reverse">
			<view class="diygw-steps">
				<view class="diygw-step-item" :class="[index > stepsIndex ? '' : item.textClazz]" v-for="(item, index) in stepsDatas" :key="index">
					<text :class="[index > stepsIndex ? item.icon : item.successIcon]"></text>
					<text>
						{{ item.text }}
					</text>
				</view>
			</view>
			<view class="flex justify-end">
				<button @tap="changeSteps" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
				<button @tap="changeSteps" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24 cyan title3-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 箭头步骤 </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-steps steps-arrow">
				<view class="diygw-step-item" :class="[index > steps1Index ? '' : item.textClazz]" v-for="(item, index) in steps1Datas" :key="index">
					<text :class="[index > steps1Index ? item.icon : item.successIcon]"></text>
					<text>
						{{ item.text }}
					</text>
				</view>
			</view>
			<view class="flex justify-end">
				<button @tap="changeSteps1" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
				<button @tap="changeSteps1" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24 purple title1-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 数字步骤 </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<view class="diygw-steps steps-numbers">
				<view class="diygw-step-item" :class="[index > steps3Index ? '' : item.textClazz]" v-for="(item, index) in steps3Datas" :key="index">
					<text class="num" :data-index="index + 1" :class="[index > steps3Index ? item.icon : item.successIcon]"></text>
					<text>
						{{ item.text }}
					</text>
				</view>
			</view>
			<view class="flex justify-end">
				<button @tap="changeSteps3" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
				<button @tap="changeSteps3" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
			</view>
		</view>
		<view class="diygw-title flex diygw-col-24 gradual-orange title2-clz">
			<view class="title font-normal"> <text class="diy-icon-home"></text> 水平滚动步骤 </view>
		</view>
		<view class="flex diygw-col-24 flex-direction-column">
			<scroll-view scroll-x :scroll-into-view="'scroll-' + steps2Index" scroll-with-animation>
				<view class="diygw-steps steps-numbers">
					<view :id="'scroll-' + index" class="diygw-step-item" :class="[index > steps2Index ? '' : item.textClazz]" v-for="(item, index) in steps2Datas" :key="index">
						<text class="num" :data-index="index + 1" :class="[index > steps2Index ? item.icon : item.successIcon]"></text>
						<text>
							{{ item.text }}
						</text>
					</view>
				</view>
			</scroll-view>
			<view class="flex justify-end">
				<button @tap="changeSteps2" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
				<button @tap="changeSteps2" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
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
				stepsDatas: [
					{ text: `开始`, icon: 'diy-icon-title', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `等待`, icon: 'diy-icon-title', successIcon: 'diy-icon-emoji', textClazz: 'text-green' },
					{ text: `错误`, icon: 'diy-icon-title', successIcon: 'diy-icon-close', textClazz: 'text-green' },
					{ text: `完成`, icon: 'diy-icon-title', successIcon: 'diy-icon-check', textClazz: 'text-green' }
				],
				stepsIndex: 0,
				steps1Datas: [
					{ text: `开始`, icon: 'diy-icon-title', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `等待`, icon: 'diy-icon-title', successIcon: 'diy-icon-emoji', textClazz: 'text-green' },
					{ text: `错误`, icon: 'diy-icon-title', successIcon: 'diy-icon-close', textClazz: 'text-green' },
					{ text: `完成`, icon: 'diy-icon-title', successIcon: 'diy-icon-check', textClazz: 'text-green' }
				],
				steps1Index: 0,
				steps3Datas: [
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `等待`, icon: '', successIcon: 'diy-icon-emoji', textClazz: 'text-green' },
					{ text: `错误`, icon: '', successIcon: 'diy-icon-close', textClazz: 'text-green' },
					{ text: `完成`, icon: '', successIcon: 'diy-icon-check', textClazz: 'text-green' }
				],
				steps3Index: 0,
				steps2Datas: [
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `等待`, icon: '', successIcon: 'diy-icon-emoji', textClazz: 'text-green' },
					{ text: `错误`, icon: '', successIcon: 'diy-icon-close', textClazz: 'text-green' },
					{ text: `完成`, icon: '', successIcon: 'diy-icon-check', textClazz: 'text-green' },
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' },
					{ text: `开始`, icon: '', successIcon: 'diy-icon-usefullfill', textClazz: 'text-green' }
				],
				steps2Index: 0
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
			async init() {},
			changeSteps(evt) {
				let { type } = evt.currentTarget.dataset;
				if (type == 'prev') {
					if (this.stepsIndex > -1) {
						this.stepsIndex = this.stepsIndex - 1;
					} else {
						this.showToast('已经是初始位置', 'none');
					}
				} else {
					if (this.stepsIndex < this.stepsDatas.length - 1) {
						this.stepsIndex = this.stepsIndex + 1;
					} else {
						this.showToast('已经是最后一个', 'none');
					}
				}
			},
			changeSteps1(evt) {
				let { type } = evt.currentTarget.dataset;
				if (type == 'prev') {
					if (this.steps1Index > -1) {
						this.steps1Index = this.steps1Index - 1;
					} else {
						this.showToast('已经是初始位置', 'none');
					}
				} else {
					if (this.steps1Index < this.steps1Datas.length - 1) {
						this.steps1Index = this.steps1Index + 1;
					} else {
						this.showToast('已经是最后一个', 'none');
					}
				}
			},
			changeSteps3(evt) {
				let { type } = evt.currentTarget.dataset;
				if (type == 'prev') {
					if (this.steps3Index > -1) {
						this.steps3Index = this.steps3Index - 1;
					} else {
						this.showToast('已经是初始位置', 'none');
					}
				} else {
					if (this.steps3Index < this.steps3Datas.length - 1) {
						this.steps3Index = this.steps3Index + 1;
					} else {
						this.showToast('已经是最后一个', 'none');
					}
				}
			},
			changeSteps2(evt) {
				let { type } = evt.currentTarget.dataset;
				if (type == 'prev') {
					if (this.steps2Index > -1) {
						this.steps2Index = this.steps2Index - 1;
					} else {
						this.showToast('已经是初始位置', 'none');
					}
				} else {
					if (this.steps2Index < this.steps2Datas.length - 1) {
						this.steps2Index = this.steps2Index + 1;
					} else {
						this.showToast('已经是最后一个', 'none');
					}
				}
			}
		}
	};
</script>

<style lang="scss" scoped>
	.title-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 15px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.title3-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.title1-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
	.title2-clz {
		margin-left: 5px;
		border-bottom-left-radius: 6px;
		overflow: hidden;
		width: calc(100% - 5px - 5px) !important;
		border-top-left-radius: 6px;
		margin-top: 5px;
		border-top-right-radius: 6px;
		border-bottom-right-radius: 6px;
		margin-bottom: 5px;
		margin-right: 5px;
	}
</style>
