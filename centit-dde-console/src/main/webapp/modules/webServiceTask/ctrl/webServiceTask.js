define(function(require) {
//	var Page = require('core/page') Page是基础公共控制器，提供了一些公共方法，所有的子页面控制器都必须引用并继承它。
    var Config = require('config');
    var Core = require('core/core');
    var Page = require('core/page');

/*  加载角色编辑控制器 require('./roleinfo.edit')   调用injecte方法注入该控制器的实例  */
    
//   角色编辑控制器
    var webServiceTaskAdd = require('./webServiceTask.add');
    var webServiceTaskEdit = require('./webServiceTask.edit');
    var webServiceTaskRemove = require('./webServiceTask.remove');
    var webServiceTaskRun = require('./webServiceTask.run');

    // 业务信息
    var webServiceTask = Page.extend(function() {
    	
    	
//    	调用injecte方法注入该控制器的实例(角色编辑控制器)
    	this.injecte([
          new webServiceTaskAdd('webServiceTask_add'),
          new webServiceTaskEdit('webServiceTask_edit'),
          new webServiceTaskRemove('webServiceTask_remove'),
          new webServiceTaskRun('webServiceTask_transfer_run')
    	]);
    	
    	// @override
    	this.load = function(panel) {
    		var table = this.table = panel.find('table');
//			this.load 页面加载方法，我们要在这里初始化表格
//			panel.find('table') 建议在panel上下文环境中查找DOM元素，防止一些意外情况的发生，比如重名
//			cdatagrid方法是继承自EasyUI的datagrid，只需要多传入一个参数：this即控制器本身示例对象，就可以自动关联搜索栏 工具栏
//			就是这样，一个可以查询 分页具有工具栏的表格就完成了！
    		table.cdatagrid({
    			controller: this
    		});
    	};
    	
    });

    return webServiceTask;
});