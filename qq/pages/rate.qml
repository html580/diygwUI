<view class="container">
	<view class="diygw-form-item diygw-col-24">
		<view class="title"> 标题 </view>
		<view class="input" style="overflow-x: initial">
			<text qq:for="{{[1,2,3,4,5]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-starfill pointer" data-index="{{item}}" style="color:{{item<=rate?'#07c160':'#eee'}};font-size:24px" catchtap="changeRate">
				<input type="hidden" hidden name="rate" value="{{rate}}" />
			</text>
		</view>
	</view>
	<view class="diygw-form-item diygw-col-24">
		<view class="title"> 标题 </view>
		<view class="input" style="overflow-x: initial">
			<text qq:for="{{[1,2,3,4,5]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-appreciate pointer" data-index="{{item}}" style="color:{{item<=rate6?'#07c160':'#eee'}};font-size:24px" catchtap="changeRate6">
				<input type="hidden" hidden name="rate6" value="{{rate6}}" />
			</text>
		</view>
	</view>
	<view class="diygw-form-item diygw-col-24">
		<view class="title"> 标题 </view>
		<view class="input" style="overflow-x: initial">
			<text qq:for="{{[1,2,3,4,5,6,7]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-upstage pointer" data-index="{{item}}" style="color:{{item<=rate5?'rgba(241, 61, 7, 1)':'#eee'}};font-size:24px" catchtap="changeRate5">
				<input type="hidden" hidden name="rate5" value="{{rate5}}" />
			</text>
		</view>
	</view>
	<view class="diygw-form-item diygw-col-24">
		<view class="title"> 标题 </view>
		<view class="input" style="overflow-x: initial">
			<text qq:for="{{[1,2,3,4,5]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-choiceness pointer" data-index="{{item}}" style="color:{{item<=rate4?'#07c160':'#eee'}};font-size:37px" catchtap="changeRate4">
				<input type="hidden" hidden name="rate4" value="{{rate4}}" />
			</text>
		</view>
	</view>
	<view class="diygw-form-item diygw-col-24">
		<view class="title"> 标题 </view>
		<view class="input" style="overflow-x: initial">
			<text qq:for="{{[1,2,3,4,5]}}" qq:for-item="item" qq:for-index="index" class="diygwui diy-icon-attentionfavor pointer" data-index="{{item}}" style="color:{{item<=rate3?'#07c160':'#eee'}};font-size:24px" catchtap="changeRate3">
				<input type="hidden" hidden name="rate3" value="{{rate3}}" />
			</text>
		</view>
	</view>
	<view class="clearfix"></view>
</view>
