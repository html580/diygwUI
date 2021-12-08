<template>
	<view class="container">
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate1Count"> <text class="diy-icon-starfill pointer" :style="{ color: item <= rate1 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate1(item)" /> </template>
					<input type="hidden" hidden name="rate1" :value="rate1" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate2Count"> <text class="diy-icon-appreciatefill pointer" :style="{ color: item <= rate2 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate2(item)" /> </template>
					<input type="hidden" hidden name="rate2" :value="rate2" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate3Count"> <text class="diy-icon-upstagefill pointer" :style="{ color: item <= rate3 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate3(item)" /> </template>
					<input type="hidden" hidden name="rate3" :value="rate3" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate4Count"> <text class="diy-icon-sponsorfill pointer" :style="{ color: item <= rate4 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate4(item)" /> </template>
					<input type="hidden" hidden name="rate4" :value="rate4" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate5Count"> <text class="diy-icon-selectionfill pointer" :style="{ color: item <= rate5 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate5(item)" /> </template>
					<input type="hidden" hidden name="rate5" :value="rate5" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate6Count"> <text class="diy-icon-emojiflashfill pointer" :style="{ color: item <= rate6 ? '#07c160' : '#eee', fontSize: '37px' }" @tap="changeRate6(item)" /> </template>
					<input type="hidden" hidden name="rate6" :value="rate6" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate7Count"> <text class="diy-icon-emojiflashfill pointer" :style="{ color: item <= rate7 ? 'rgba(247, 45, 5, 1)' : '#eee', fontSize: '37px' }" @tap="changeRate7(item)" /> </template>
					<input type="hidden" hidden name="rate7" :value="rate7" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate8Count"> <text class="diy-icon-focus pointer" :style="{ color: item <= rate8 ? 'rgba(247, 45, 5, 1)' : '#eee', fontSize: '37px' }" @tap="changeRate8(item)" /> </template>
					<input type="hidden" hidden name="rate8" :value="rate8" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rate9Count"> <text class="diy-icon-friendfamous pointer" :style="{ color: item <= rate9 ? 'rgba(1, 71, 169, 1)' : '#eee', fontSize: '37px' }" @tap="changeRate9(item)" /> </template>
					<input type="hidden" hidden name="rate9" :value="rate9" />
				</div>
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<div class="input" style="overflow-x: initial">
					<template v-for="item in rateCount"> <text class="diy-icon-goodsfavor pointer" :style="{ color: item <= rate ? 'rgba(4, 208, 69, 1)' : '#eee', fontSize: '37px' }" @tap="changeRate(item)" /> </template>
					<input type="hidden" hidden name="rate" :value="rate" />
				</div>
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
				rate1Count: 5,
				rate1: 3,
				rate2Count: 5,
				rate2: 3,
				rate3Count: 6,
				rate3: 3,
				rate4Count: 8,
				rate4: 3,
				rate5Count: 8,
				rate5: 4,
				rate6Count: 6,
				rate6: 3,
				rate7Count: 6,
				rate7: 3,
				rate8Count: 6,
				rate8: 4,
				rate9Count: 6,
				rate9: 3,
				rateCount: 6,
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
			async init() {},
			changeRate1(index) {
				this.rate1 = index;
			},
			changeRate2(index) {
				this.rate2 = index;
			},
			changeRate3(index) {
				this.rate3 = index;
			},
			changeRate4(index) {
				this.rate4 = index;
			},
			changeRate5(index) {
				this.rate5 = index;
			},
			changeRate6(index) {
				this.rate6 = index;
			},
			changeRate7(index) {
				this.rate7 = index;
			},
			changeRate8(index) {
				this.rate8 = index;
			},
			changeRate9(index) {
				this.rate9 = index;
			},
			changeRate(index) {
				this.rate = index;
			}
		}
	};
</script>

<style lang="scss"></style>
