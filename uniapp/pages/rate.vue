<template>
	<view class="container">
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<template v-for="item in rateCount"> <text class="diy-icon-starfill pointer" :data-index="item" :style="{ color: item <= rate ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate" /> </template>
				<input type="hidden" hidden name="rate" :value="rate" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<template v-for="item in rate6Count"> <text class="diy-icon-appreciate pointer" :data-index="item" :style="{ color: item <= rate6 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate6" /> </template>
				<input type="hidden" hidden name="rate6" :value="rate6" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<template v-for="item in rate5Count"> <text class="diy-icon-upstage pointer" :data-index="item" :style="{ color: item <= rate5 ? 'rgba(241, 61, 7, 1)' : '#eee', fontSize: '24px' }" @tap="changeRate5" /> </template>
				<input type="hidden" hidden name="rate5" :value="rate5" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<template v-for="item in rate4Count"> <text class="diy-icon-choiceness pointer" :data-index="item" :style="{ color: item <= rate4 ? '#07c160' : '#eee', fontSize: '37px' }" @tap="changeRate4" /> </template>
				<input type="hidden" hidden name="rate4" :value="rate4" />
			</view>
		</view>
		<view class="diygw-form-item diygw-col-24">
			<view class="title"> 标题 </view>
			<view class="input" style="overflow-x: initial">
				<template v-for="item in rate3Count"> <text class="diy-icon-attentionfavor pointer" :data-index="item" :style="{ color: item <= rate3 ? '#07c160' : '#eee', fontSize: '24px' }" @tap="changeRate3" /> </template>
				<input type="hidden" hidden name="rate3" :value="rate3" />
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
				rateCount: 5,
				rate: 3,
				rate6Count: 5,
				rate6: 3,
				rate5Count: 7,
				rate5: 7,
				rate4Count: 5,
				rate4: 3,
				rate3Count: 5,
				rate3: 3
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
			changeRate(evt) {
				let rate = evt.currentTarget.dataset.index;
				if (this.rate == rate) {
					rate = rate - 1;
				}
				this.rate = rate;
			},
			changeRate6(evt) {
				let rate6 = evt.currentTarget.dataset.index;
				if (this.rate6 == rate6) {
					rate6 = rate6 - 1;
				}
				this.rate6 = rate6;
			},
			changeRate5(evt) {
				let rate5 = evt.currentTarget.dataset.index;
				if (this.rate5 == rate5) {
					rate5 = rate5 - 1;
				}
				this.rate5 = rate5;
			},
			changeRate4(evt) {
				let rate4 = evt.currentTarget.dataset.index;
				if (this.rate4 == rate4) {
					rate4 = rate4 - 1;
				}
				this.rate4 = rate4;
			},
			changeRate3(evt) {
				let rate3 = evt.currentTarget.dataset.index;
				if (this.rate3 == rate3) {
					rate3 = rate3 - 1;
				}
				this.rate3 = rate3;
			}
		}
	};
</script>

<style lang="scss" scoped></style>
