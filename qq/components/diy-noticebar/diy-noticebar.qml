<view class="diy-notice-bar flex1" style="{{'background:'+(bgColor)+';'+('padding:'+(padding)+';')}}">
  <view class="flex align-center" style="{{'color:'+color+';font-size:'+fontSize+'rpx;'}}">
    <block qq:if="{{leftImg}}">
      <image class="diy-notice-img" src="{{leftImg}}"></image>
    </block>
    <block qq:if="{{leftIcon}}"><text class="{{leftIcon}}" color="{{computeColor}}"></text></block>
    <view class="diy-notice-box flex1" id="diy-notice-box">
      <block qq:if="{{vertical}}">
        <view class="diy-notice-swiper flex1">
          <slot name="content"></slot>
        </view>
      </block>
      <block qq:else>
        <view class="diy-notice-content flex1" style="{{'animation-duration:'+(animationDuration)+';'+('animation-play-state:'+(animationPlayState)+';')}}" id="diy-notice-content">
          <view  class="diy-notice-text">
            <slot name="content"></slot>
          </view>
        </view>
      </block>
    </view>
  </view>
</view>