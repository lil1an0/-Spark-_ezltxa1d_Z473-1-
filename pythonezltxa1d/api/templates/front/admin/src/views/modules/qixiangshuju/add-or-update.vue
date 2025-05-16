<template>
	<div class="addEdit-block">
		<el-form
			class="add-update-preview"
			ref="ruleForm"
			:model="ruleForm"
			:rules="rules"
			label-width="180px"
		>
			<template >
				<el-form-item class="input" v-if="type!='info'"  label="年份" prop="nianfen" >
					<el-input v-model="ruleForm.nianfen" placeholder="年份" clearable  :readonly="ro.nianfen"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="年份" prop="nianfen" >
					<el-input v-model="ruleForm.nianfen" placeholder="年份" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="月份" prop="yuefen" >
					<el-input v-model="ruleForm.yuefen" placeholder="月份" clearable  :readonly="ro.yuefen"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="月份" prop="yuefen" >
					<el-input v-model="ruleForm.yuefen" placeholder="月份" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="地区名称" prop="diqumingcheng" >
					<el-input v-model="ruleForm.diqumingcheng" placeholder="地区名称" clearable  :readonly="ro.diqumingcheng"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="地区名称" prop="diqumingcheng" >
					<el-input v-model="ruleForm.diqumingcheng" placeholder="地区名称" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均气温（℃）" prop="pingjunqiwen" >
					<el-input-number v-model="ruleForm.pingjunqiwen" placeholder="平均气温（℃）" :disabled="ro.pingjunqiwen"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均气温（℃）" prop="pingjunqiwen" >
					<el-input v-model="ruleForm.pingjunqiwen" placeholder="平均气温（℃）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均最低气温（℃）" prop="zuidiqiwen" >
					<el-input-number v-model="ruleForm.zuidiqiwen" placeholder="平均最低气温（℃）" :disabled="ro.zuidiqiwen"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均最低气温（℃）" prop="zuidiqiwen" >
					<el-input v-model="ruleForm.zuidiqiwen" placeholder="平均最低气温（℃）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均最高气温（℃）" prop="zuigaoqiwen" >
					<el-input-number v-model="ruleForm.zuigaoqiwen" placeholder="平均最高气温（℃）" :disabled="ro.zuigaoqiwen"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均最高气温（℃）" prop="zuigaoqiwen" >
					<el-input v-model="ruleForm.zuigaoqiwen" placeholder="平均最高气温（℃）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均空气湿度（%）" prop="kongqishidu" >
					<el-input-number v-model="ruleForm.kongqishidu" placeholder="平均空气湿度（%）" :disabled="ro.kongqishidu"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均空气湿度（%）" prop="kongqishidu" >
					<el-input v-model="ruleForm.kongqishidu" placeholder="平均空气湿度（%）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均风速（m/s）" prop="pingjunfengsu" >
					<el-input-number v-model="ruleForm.pingjunfengsu" placeholder="平均风速（m/s）" :disabled="ro.pingjunfengsu"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均风速（m/s）" prop="pingjunfengsu" >
					<el-input v-model="ruleForm.pingjunfengsu" placeholder="平均风速（m/s）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均风向" prop="pingjunfengxiang" >
					<el-input v-model="ruleForm.pingjunfengxiang" placeholder="平均风向" clearable  :readonly="ro.pingjunfengxiang"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="平均风向" prop="pingjunfengxiang" >
					<el-input v-model="ruleForm.pingjunfengxiang" placeholder="平均风向" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均光照时长（小时）" prop="guangzhaoshizhang" >
					<el-input-number v-model="ruleForm.guangzhaoshizhang" placeholder="平均光照时长（小时）" :disabled="ro.guangzhaoshizhang"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均光照时长（小时）" prop="guangzhaoshizhang" >
					<el-input v-model="ruleForm.guangzhaoshizhang" placeholder="平均光照时长（小时）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均光照强度（W/m²）" prop="guangzhaoqiangdu" >
					<el-input-number v-model="ruleForm.guangzhaoqiangdu" placeholder="平均光照强度（W/m²）" :disabled="ro.guangzhaoqiangdu"></el-input-number>
				</el-form-item>
				<el-form-item v-else class="input" label="平均光照强度（W/m²）" prop="guangzhaoqiangdu" >
					<el-input v-model="ruleForm.guangzhaoqiangdu" placeholder="平均光照强度（W/m²）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="平均紫外线强度（UV Index）" prop="junziwaixian" >
					<el-input v-model.number="ruleForm.junziwaixian" placeholder="平均紫外线强度（UV Index）" clearable  :readonly="ro.junziwaixian"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="平均紫外线强度（UV Index）" prop="junziwaixian" >
					<el-input v-model="ruleForm.junziwaixian" placeholder="平均紫外线强度（UV Index）" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="春耕气候变化描述" prop="bianhuamiaoshu" >
					<el-input v-model="ruleForm.bianhuamiaoshu" placeholder="春耕气候变化描述" clearable  :readonly="ro.bianhuamiaoshu"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="春耕气候变化描述" prop="bianhuamiaoshu" >
					<el-input v-model="ruleForm.bianhuamiaoshu" placeholder="春耕气候变化描述" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="秋收气候变化描述" prop="qiushouqihou" >
					<el-input v-model="ruleForm.qiushouqihou" placeholder="秋收气候变化描述" clearable  :readonly="ro.qiushouqihou"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="秋收气候变化描述" prop="qiushouqihou" >
					<el-input v-model="ruleForm.qiushouqihou" placeholder="秋收气候变化描述" readonly></el-input>
				</el-form-item>
				<el-form-item class="input" v-if="type!='info'"  label="影响春耕秋收的气象因素" prop="qixiangyinsu" >
					<el-input v-model="ruleForm.qixiangyinsu" placeholder="影响春耕秋收的气象因素" clearable  :readonly="ro.qixiangyinsu"></el-input>
				</el-form-item>
				<el-form-item v-else class="input" label="影响春耕秋收的气象因素" prop="qixiangyinsu" >
					<el-input v-model="ruleForm.qixiangyinsu" placeholder="影响春耕秋收的气象因素" readonly></el-input>
				</el-form-item>
			</template>
			<el-form-item class="btn">
				<el-button class="btn3"  v-if="type!='info'" type="success" @click="onSubmit">
					<span class="icon iconfont icon-xihuan"></span>
					提交
				</el-button>
				<el-button class="btn4" v-if="type!='info'" type="success" @click="back()">
					<span class="icon iconfont icon-xihuan"></span>
					取消
				</el-button>
				<el-button class="btn5" v-if="type=='info'" type="success" @click="back()">
					<span class="icon iconfont icon-xihuan"></span>
					返回
				</el-button>
			</el-form-item>
		</el-form>
    

	</div>
</template>
<script>
	import { 
		isNumber,
		isIntNumer,
	} from "@/utils/validate";
	export default {
		data() {
			var validateNumber = (rule, value, callback) => {
				if(!value){
					callback();
				} else if (!isNumber(value)) {
					callback(new Error("请输入数字"));
				} else {
					callback();
				}
			};
			var validateIntNumber = (rule, value, callback) => {
				if(!value){
					callback();
				} else if (!isIntNumer(value)) {
					callback(new Error("请输入整数"));
				} else {
					callback();
				}
			};
			return {
				id: '',
				type: '',
			
			
				ro:{
					nianfen : false,
					yuefen : false,
					diqumingcheng : false,
					pingjunqiwen : false,
					zuidiqiwen : false,
					zuigaoqiwen : false,
					kongqishidu : false,
					pingjunfengsu : false,
					pingjunfengxiang : false,
					guangzhaoshizhang : false,
					guangzhaoqiangdu : false,
					junziwaixian : false,
					bianhuamiaoshu : false,
					qiushouqihou : false,
					qixiangyinsu : false,
				},
			
				ruleForm: {
					nianfen: '',
					yuefen: '',
					diqumingcheng: '',
					pingjunqiwen: '',
					zuidiqiwen: '',
					zuigaoqiwen: '',
					kongqishidu: '',
					pingjunfengsu: '',
					pingjunfengxiang: '',
					guangzhaoshizhang: '',
					guangzhaoqiangdu: '',
					junziwaixian: '',
					bianhuamiaoshu: '',
					qiushouqihou: '',
					qixiangyinsu: '',
				},

				rules: {
					nianfen: [
					],
					yuefen: [
					],
					diqumingcheng: [
					],
					pingjunqiwen: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					zuidiqiwen: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					zuigaoqiwen: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					kongqishidu: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					pingjunfengsu: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					pingjunfengxiang: [
					],
					guangzhaoshizhang: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					guangzhaoqiangdu: [
						{ validator: validateNumber, trigger: 'blur' },
					],
					junziwaixian: [
						{ validator: validateIntNumber, trigger: 'blur' },
					],
					bianhuamiaoshu: [
					],
					qiushouqihou: [
					],
					qixiangyinsu: [
					],
				},
			};
		},
		props: ["parent"],
		computed: {



		},
		components: {
		},
		created() {
		},
		methods: {
			// 下载
			download(file){
				window.open(`${file}`)
			},
			// 初始化
			init(id,type) {
				if (id) {
					this.id = id;
					this.type = type;
				}
				if(this.type=='info'||this.type=='else'||this.type=='msg'){
					this.info(id);
				}else if(this.type=='logistics'){
					for(let x in this.ro) {
						this.ro[x] = true
					}
					this.logistics=false;
					this.info(id);
				}else if(this.type=='cross'){
					var obj = this.$storage.getObj('crossObj');
					for (var o in obj){
						if(o=='nianfen'){
							this.ruleForm.nianfen = obj[o];
							this.ro.nianfen = true;
							continue;
						}
						if(o=='yuefen'){
							this.ruleForm.yuefen = obj[o];
							this.ro.yuefen = true;
							continue;
						}
						if(o=='diqumingcheng'){
							this.ruleForm.diqumingcheng = obj[o];
							this.ro.diqumingcheng = true;
							continue;
						}
						if(o=='pingjunqiwen'){
							this.ruleForm.pingjunqiwen = obj[o];
							this.ro.pingjunqiwen = true;
							continue;
						}
						if(o=='zuidiqiwen'){
							this.ruleForm.zuidiqiwen = obj[o];
							this.ro.zuidiqiwen = true;
							continue;
						}
						if(o=='zuigaoqiwen'){
							this.ruleForm.zuigaoqiwen = obj[o];
							this.ro.zuigaoqiwen = true;
							continue;
						}
						if(o=='kongqishidu'){
							this.ruleForm.kongqishidu = obj[o];
							this.ro.kongqishidu = true;
							continue;
						}
						if(o=='pingjunfengsu'){
							this.ruleForm.pingjunfengsu = obj[o];
							this.ro.pingjunfengsu = true;
							continue;
						}
						if(o=='pingjunfengxiang'){
							this.ruleForm.pingjunfengxiang = obj[o];
							this.ro.pingjunfengxiang = true;
							continue;
						}
						if(o=='guangzhaoshizhang'){
							this.ruleForm.guangzhaoshizhang = obj[o];
							this.ro.guangzhaoshizhang = true;
							continue;
						}
						if(o=='guangzhaoqiangdu'){
							this.ruleForm.guangzhaoqiangdu = obj[o];
							this.ro.guangzhaoqiangdu = true;
							continue;
						}
						if(o=='junziwaixian'){
							this.ruleForm.junziwaixian = obj[o];
							this.ro.junziwaixian = true;
							continue;
						}
						if(o=='bianhuamiaoshu'){
							this.ruleForm.bianhuamiaoshu = obj[o];
							this.ro.bianhuamiaoshu = true;
							continue;
						}
						if(o=='qiushouqihou'){
							this.ruleForm.qiushouqihou = obj[o];
							this.ro.qiushouqihou = true;
							continue;
						}
						if(o=='qixiangyinsu'){
							this.ruleForm.qixiangyinsu = obj[o];
							this.ro.qixiangyinsu = true;
							continue;
						}
					}
				}
				// 获取用户信息
				this.$http({
					url: `${this.$storage.get('sessionTable')}/session`,
					method: "get"
				}).then(({ data }) => {
					if (data && data.code === 0) {
						var json = data.data;
					} else {
						this.$message.error(data.msg);
					}
				});
			
			},
			// 多级联动参数

			info(id) {
				this.$http({
					url: `qixiangshuju/info/${id}`,
					method: "get"
				}).then(({ data }) => {
					if (data && data.code === 0) {
						this.ruleForm = data.data;
						//解决前台上传图片后台不显示的问题
						let reg=new RegExp('../../../upload','g')//g代表全部
					} else {
						this.$message.error(data.msg);
					}
				});
			},

			// 提交
			async onSubmit() {
					var objcross = this.$storage.getObj('crossObj');
					if(!this.ruleForm.id) {
						delete this.ruleForm.userid
					}
					await this.$refs["ruleForm"].validate(async valid => {
						if (valid) {
							if(this.type=='cross'){
								var statusColumnName = this.$storage.get('statusColumnName');
								var statusColumnValue = this.$storage.get('statusColumnValue');
								if(statusColumnName!='') {
									var obj = this.$storage.getObj('crossObj');
									if(statusColumnName && !statusColumnName.startsWith("[")) {
										for (var o in obj){
											if(o==statusColumnName){
												obj[o] = statusColumnValue;
											}
										}
										var table = this.$storage.get('crossTable');
										await this.$http({
											url: `${table}/update`,
											method: "post",
											data: obj
										}).then(({ data }) => {});
									}
								}
							}
							
							await this.$http({
								url: `qixiangshuju/${!this.ruleForm.id ? "save" : "update"}`,
								method: "post",
								data: this.ruleForm
							}).then(async ({ data }) => {
								if (data && data.code === 0) {
									this.$message({
										message: "操作成功",
										type: "success",
										duration: 1500,
										onClose: () => {
											this.parent.showFlag = true;
											this.parent.addOrUpdateFlag = false;
											this.parent.qixiangshujuCrossAddOrUpdateFlag = false;
											this.parent.search();
											this.parent.contentStyleChange();
										}
									});
								} else {
									this.$message.error(data.msg);
								}
							});
						}
					});
			},
			// 获取uuid
			getUUID () {
				return new Date().getTime();
			},
			// 返回
			back() {
				this.parent.showFlag = true;
				this.parent.addOrUpdateFlag = false;
				this.parent.qixiangshujuCrossAddOrUpdateFlag = false;
				this.parent.contentStyleChange();
			},
		}
	};
</script>
<style lang="scss" scoped>
	.addEdit-block {
		padding: 30px 20px 20px 20px;
	}
	.add-update-preview {
		border: 1px solid #BFBFBF;
		padding: 40px 30% 20px 10%;
		background: #FFFFFF;
	}
	.amap-wrapper {
		width: 100%;
		height: 500px;
	}
	
	.search-box {
		position: absolute;
	}
	
	.el-date-editor.el-input {
		width: auto;
	}
	.add-update-preview /deep/ .el-form-item {
		border: 0px solid #eee;
		padding: 0;
		margin: 0 0 26px 0;
		display: inline-block;
		width: 100%;
	}
	.add-update-preview .el-form-item /deep/ .el-form-item__label {
		padding: 0 10px 0 0;
		color: #666;
		font-weight: 600;
		width: 180px;
		font-size: 16px;
		line-height: 40px;
		text-align: right;
	}
	
	.add-update-preview .el-form-item /deep/ .el-form-item__content {
		margin-left: 180px;
	}
	.add-update-preview .el-form-item span.text {
		border: 0px solid #E8E8E8;
		cursor: pointer;
		border-radius: 0px;
		padding: 0 15px;
		margin: 0 20px 0 0;
		color: #666;
		background: #fff;
		width: 360px;
		font-size: 15px;
		line-height: 34px;
		text-align: left;
		height: 34px;
	}
	
	.add-update-preview .el-input {
		width: 100%;
	}
	.add-update-preview .el-input /deep/ .el-input__inner {
		border: 1px dashed #bfbfbf;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		width: 100%;
		font-size: 16px;
		min-width: 360px;
		height: 40px;
	}
	.add-update-preview .el-input /deep/ .el-input__inner[readonly="readonly"] {
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .el-input-number {
		text-align: left;
		width: 100%;
	}
	.add-update-preview .el-input-number /deep/ .el-input__inner {
		text-align: left;
		border: 1px dashed #bfbfbf;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		width: 100%;
		font-size: 16px;
		min-width: 360px;
		height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .is-disabled .el-input__inner {
		text-align: left;
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__decrease {
		display: none;
	}
	.add-update-preview .el-input-number /deep/ .el-input-number__increase {
		display: none;
	}
	.add-update-preview .el-select {
		width: 100%;
	}
	.add-update-preview .el-select /deep/ .el-input__inner {
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .el-select /deep/ .is-disabled .el-input__inner {
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 12px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .el-date-editor {
		width: 100%;
	}
	.add-update-preview .el-date-editor /deep/ .el-input__inner {
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 30px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .el-date-editor /deep/ .el-input__inner[readonly="readonly"] {
		border: 1px dashed #bfbfbf;
		cursor: not-allowed;
		border-radius: 0px;
		padding: 0 30px;
		color: #666;
		background: none;
		width: 100%;
		font-size: 16px;
		height: 40px;
	}
	.add-update-preview .viewBtn {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		padding: 0 30px;
		margin: 0 20px 0 0;
		color: #666;
		background: #fff;
		width: auto;
		font-size: 15px;
		line-height: 34px;
		text-align: left;
		height: 34px;
		.iconfont {
			margin: 0 2px;
			color: #666;
			font-size: 16px;
			height: 34px;
		}
	}
	.add-update-preview .viewBtn:hover {
		opacity: 0.8;
	}
	.add-update-preview .downBtn {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		padding: 0 30px;
		margin: 0 20px 0 0;
		color: #666;
		background: #fff;
		width: auto;
		font-size: 15px;
		line-height: 34px;
		height: 34px;
		.iconfont {
			margin: 0 2px;
			color: #666;
			font-size: 16px;
			height: 34px;
		}
	}
	.add-update-preview .downBtn:hover {
		opacity: 0.8;
	}
	.add-update-preview .unBtn {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		padding: 0 30px;
		margin: 0 20px 0 0;
		color: #666;
		background: #fff;
		width: auto;
		font-size: 15px;
		line-height: 34px;
		text-align: left;
		height: 34px;
		.iconfont {
			margin: 0 2px;
			color: #fff;
			display: none;
			font-size: 14px;
			height: 34px;
		}
	}
	.add-update-preview .unBtn:hover {
		opacity: 0.8;
	}
	.add-update-preview /deep/ .el-upload--picture-card {
		background: transparent;
		border: 0;
		border-radius: 0;
		width: auto;
		height: auto;
		line-height: initial;
		vertical-align: middle;
	}
	
	.add-update-preview /deep/ .upload .upload-img {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		color: #666;
		background: #fff;
		width: 90px;
		font-size: 24px;
		line-height: 60px;
		text-align: center;
		height: 60px;
	}
	
	.add-update-preview /deep/ .el-upload-list .el-upload-list__item {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		color: #666;
		background: #fff;
		width: 90px;
		font-size: 24px;
		line-height: 60px;
		text-align: center;
		height: 60px;
	}
	
	.add-update-preview /deep/ .el-upload .el-icon-plus {
		border: 1px dashed #bfbfbf;
		cursor: pointer;
		border-radius: 0px;
		color: #666;
		background: #fff;
		width: 90px;
		font-size: 24px;
		line-height: 60px;
		text-align: center;
		height: 60px;
	}
	.add-update-preview /deep/ .el-upload__tip {
		color: #666;
		font-size: 15px;
	}
	
	.add-update-preview .el-textarea /deep/ .el-textarea__inner {
		border: 1px dashed #bfbfbf;
		border-radius: 0px;
		padding: 12px;
		color: #666;
		background: #fff;
		width: 100%;
		font-size: 14px;
		min-width: 400px;
		height: 120px;
	}
	.add-update-preview .el-textarea /deep/ .el-textarea__inner[readonly="readonly"] {
				border: 1px dashed #bfbfbf;
				border-radius: 0px;
				padding: 12px;
				color: #666;
				background: #fff;
				width: 100%;
				font-size: 14px;
				min-width: 400px;
				height: 120px;
			}
	.add-update-preview .el-form-item.btn {
		padding: 0;
		margin: 20px 0 0;
		.btn1 {
			border: 0px solid #ccc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 10px;
			margin: 0 10px 0 0;
			color: #fff;
			background: linear-gradient( 135deg, #097499 0%, #A5DDFD 100%);
			width: auto;
			font-size: 16px;
			min-width: 110px;
			height: 40px;
			.iconfont {
				margin: 0 2px;
				color: #fff;
				display: none;
				font-size: 14px;
				height: 40px;
			}
		}
		.btn1:hover {
			opacity: 0.8;
		}
		.btn2 {
			border: 0px solid #ccc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 10px;
			margin: 0 10px 0 0;
			color: #fff;
			background: linear-gradient( 135deg, #097499 0%, #A5DDFD 100%);
			width: auto;
			font-size: 16px;
			min-width: 110px;
			height: 40px;
			.iconfont {
				margin: 0 2px;
				color: #fff;
				display: none;
				font-size: 14px;
				height: 34px;
			}
		}
		.btn2:hover {
			opacity: 0.8;
		}
		.btn3 {
			border: 0px solid #ccc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 10px;
			margin: 0 10px 0 0;
			color: #fff;
			background: linear-gradient( 135deg, #097499 0%, #A5DDFD 100%);
			width: auto;
			font-size: 16px;
			min-width: 110px;
			height: 40px;
			.iconfont {
				margin: 0 2px;
				color: #fff;
				display: none;
				font-size: 14px;
				height: 40px;
			}
		}
		.btn3:hover {
			opacity: 0.8;
		}
		.btn4 {
			border: 0px solid #ccc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 10px;
			margin: 0 10px 0 0;
			color: #fff;
			background: linear-gradient( 135deg, #097499 0%, #A5DDFD 100%);
			width: auto;
			font-size: 16px;
			min-width: 110px;
			height: 40px;
			.iconfont {
				margin: 0 2px;
				color: #fff;
				display: none;
				font-size: 14px;
				height: 40px;
			}
		}
		.btn4:hover {
			opacity: 0.8;
		}
		.btn5 {
			border: 0px solid #ccc;
			cursor: pointer;
			border-radius: 4px;
			padding: 0 10px;
			margin: 0 10px 0 0;
			color: #fff;
			background: linear-gradient( 135deg, #097499 0%, #A5DDFD 100%);
			width: auto;
			font-size: 16px;
			min-width: 110px;
			height: 40px;
			.iconfont {
				margin: 0 2px;
				color: #fff;
				display: none;
				font-size: 14px;
				height: 40px;
			}
		}
		.btn5:hover {
			opacity: 0.8;
		}
	}
</style>
