const app = getApp();
Component({
  /**
   * 组件的一些选项
   */
  options: {
    addGlobalClass: true,
    multipleSlots: true
  },
  /**
   * 组件的对外属性
   */
  props: {
    bgColor: {
      type: String,
      value: ''
    }, 
    isCustom: {
      type: [Boolean, String],
      value: false
    },
    isExtend: {
      type: [Boolean, String],
      value: false
    },
    isHome: {
      type: [Boolean, String],
      value: false
    },
    isExtendRadious: {
      type: [Boolean, String],
      value: true
    },
    extendHeight:{
      type:Number,
      value:0
    },
    isBack: {
      type: [Boolean, String],
      value: false
    },
    backUrl: {
      type: String,
      value: ''
    }, 
    backdelta:{
      type:Number,
      value:0
    },
    bgImage: {
      type: String,
      value: ''
    },
    bgCustom:{
      type: String,
      value: ''
    },
    color:{
      type: String,
      value: ''
    }
  },
  /**
   * 组件的初始数据
   */
  data: {
    StatusBar: '',
    CustomBar: ''
  },
 didMount() {
      let thiz = this
      if(!app.globalData.StatusBar){
        my.getSystemInfo({
          success: (e) => {
            app.globalData.StatusBar = e.statusBarHeight;
            let capsule = my.getMenuButtonBoundingClientRect();
            app.globalData.WindowWidth = e.windowWidth;
            app.globalData.PixelRatio = 750 / e.windowWidth;
            if (capsule.bottom) {
              app.globalData.Custom = capsule;
              app.globalData.CustomBar = capsule.bottom + capsule.top - e.statusBarHeight;
            } else {
              app.globalData.CustomBar = e.statusBarHeight + 50;
            }
            thiz.setData({
                StatusBar: app.globalData.StatusBar,
                CustomBar: app.globalData.CustomBar,
                Custom: app.globalData.Custom
            })
          }
        });
      }else{
        thiz.setData({
            StatusBar: app.globalData.StatusBar,
            CustomBar: app.globalData.CustomBar,
            Custom: app.globalData.Custom
        })
      }
   },
  /**
   * 组件的方法列表
   */
  methods: {
    BackPage() {
        if(this.data.backUrl){
           my.redirectTo({
             url: this.data.backUrl
           })
        }else if(this.data.backdelta){
          my.navigateBack({
            delta: this.data.backdelta
          });
        }else{
          my.navigateBack({
            delta: 1
          });
        } 
    },
    BackHome() {
      if(getApp().globalData.homePage){
        my.reLaunch({
            url: getApp().globalData.homePage
        });
      }else{
        my.showToast({
          icon:'none',
          title:"请先设置首页地址"
        })
      }
    }
  }
})