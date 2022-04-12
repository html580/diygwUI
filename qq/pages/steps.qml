<view class="container">
	<view class="diygw-title flex diygw-col-24 gradual-purple title-clz">
		<view class="title font-normal"> <text class="diygwui diy-icon-home"></text> 按钮在上方 </view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column-reverse">
		<view class="diygw-steps">
			<view class="diygw-step-item  {{index>stepsIndex?'':item.textClazz}}" qq:for="{{stepsDatas}}" qq:for-item="item" qq:for-index="index" data-key="index">
				<text class="  {{index>stepsIndex?item.icon:item.successIcon}}"></text>
				<text> {{item.text}} </text>
			</view>
		</view>
		<view class="flex justify-end">
			<button catchtap="changeSteps" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
			<button catchtap="changeSteps" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
		</view>
	</view>
	<view class="diygw-title flex diygw-col-24 cyan title3-clz">
		<view class="title font-normal"> <text class="diygwui diy-icon-home"></text> 箭头步骤 </view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<view class="diygw-steps steps-arrow">
			<view class="diygw-step-item  {{index>steps1Index?'':item.textClazz}}" qq:for="{{steps1Datas}}" qq:for-item="item" qq:for-index="index" data-key="index">
				<text class="  {{index>steps1Index?item.icon:item.successIcon}}"></text>
				<text> {{item.text}} </text>
			</view>
		</view>
		<view class="flex justify-end">
			<button catchtap="changeSteps1" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
			<button catchtap="changeSteps1" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
		</view>
	</view>
	<view class="diygw-title flex diygw-col-24 purple title1-clz">
		<view class="title font-normal"> <text class="diygwui diy-icon-home"></text> 数字步骤 </view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<view class="diygw-steps steps-numbers">
			<view class="diygw-step-item  {{index>steps3Index?'':item.textClazz}}" qq:for="{{steps3Datas}}" qq:for-item="item" qq:for-index="index" data-key="index">
				<text data-index="{{index + 1}}" class=" num {{index>steps3Index?item.icon:item.successIcon}}"></text>
				<text> {{item.text}} </text>
			</view>
		</view>
		<view class="flex justify-end">
			<button catchtap="changeSteps3" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
			<button catchtap="changeSteps3" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
		</view>
	</view>
	<view class="diygw-title flex diygw-col-24 gradual-orange title2-clz">
		<view class="title font-normal"> <text class="diygwui diy-icon-home"></text> 水平滚动步骤 </view>
	</view>
	<view class="flex diygw-col-24 flex-direction-column">
		<scroll-view scroll-x scroll-into-view="{{'scroll-' + steps2Index}}" scroll-with-animation>
			<view class="diygw-steps steps-numbers">
				<view id="{{'scroll-' + index}}" class="diygw-step-item  {{index>steps2Index?'':item.textClazz}}" qq:for="{{steps2Datas}}" qq:for-item="item" qq:for-index="index" data-key="index">
					<text data-index="{{index + 1}}" class=" num {{index>steps2Index?item.icon:item.successIcon}}"></text>
					<text> {{item.text}} </text>
				</view>
			</view>
		</scroll-view>
		<view class="flex justify-end">
			<button catchtap="changeSteps2" data-type="prev" class="diygw-btn line-green radius-xs flex-sub margin-xs">上一步</button>
			<button catchtap="changeSteps2" data-type="next" class="diygw-btn green radius-xs flex-sub margin-xs">下一步</button>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
