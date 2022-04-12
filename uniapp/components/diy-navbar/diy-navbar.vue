<template>
	<view>
		<view class="diy-navbar  diygw-top" :style="[{height:CustomBar + 'px'}]">
			<view class="diygw-title flex fixed" :style="style" :class="[bgImage!=''?'none-bg text-white bg-img':'',bgColor]">
				<view class="action flex align-center" @tap="BackPage" v-if="isBack">
					<text class="diy-icon-back title-bar-icon"></text>
					<slot name="backText"></slot>
				</view>
				<view v-if="isHome" @tap="BackHome"  class="title-bar-icon diy-icon-home margin-left titlebar-icon"></view>
				<view class="content title flex1 text-center" :style="[{top:StatusBar + 'px'}]">
					<slot name="content"></slot>
				</view>
				<slot name="right"></slot>
			</view>
		</view>
		<view  :style="[{paddingTop:CustomBar + 'px'}]"></view>
	</view>
</template>

<script>
	export default {
		data() {
			return {
				StatusBar: this.StatusBar,
				CustomBar: this.CustomBar
			};
		},
		name: 'diy-navbar',
		computed: {
			style() {
				var StatusBar= this.StatusBar;
				var CustomBar= this.CustomBar;
				var bgImage = this.bgImage;
				var style = `height:${CustomBar}px;padding-top:${StatusBar}px;`;
				if (this.bgImage) {
					style = `${style}background-image:url(${bgImage});`;
				}
				if(this.bgCustom){
                    let bgCustom  = this.bgCustom;
                    style = `${style}background-color:${bgCustom} !important;`;
                }
				if(this.color){
					let color  = this.color;
					style = `${style}color:${color} !important;`;
				}
				return style
			}
		},
		props: {
			bgColor: {
				type: String,
				default: ''
			},
			isBack: {
				type: [Boolean, String],
				default: false
			},
			isHome: {
				type: [Boolean, String],
				default: false
			},
			bgImage: {
				type: String,
				default: ''
			},
            bgCustom:{
                type: String,
                default: ''
            },
			backUrl:{
				type: String,
				default: ''
			},
			backdelta:{
				type:Number,
				default:0
			},
			color:{
				type: String,
				default: ''
			}
		},
		methods: {
			BackPage() {
				if(this.backUrl){
				   uni.redirectTo({
					 url: this.backUrl
				   })
				}else if(this.backdelta){
				  uni.navigateBack({
					delta: this.backdelta
				  });
				}else{
				  uni.navigateBack();
				} 
			},
			BackHome() {
				if(getApp().globalData.homePage){
					uni.reLaunch({
					    url: getApp().globalData.homePage
					});
				}else{
					uni.showToast({
						icon:'none',
						title:"请先设置首页地址"
					})
				}
				
			}
		}
	}
</script>

