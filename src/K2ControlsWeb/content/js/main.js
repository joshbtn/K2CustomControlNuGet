(function ($, window, document, undefined) {
    window.my = window.my || {};
	window.my.k2 = window.my.k2 || {};
	window.my.k2.controls = window.my.k2.controls || {};

	var ExampleControl = my.k2.controls.ExampleControl = $.extend({}, SourceCode.Forms.Controls.Base.ControlType,{
        
		getValue: function (objInfo) {
			return $("#" + objInfo.CurrentControlID).val();
		},
		
        setValue: function (objInfo) {
			$("#" + objInof.CurrentControlID).val(ObjInfo.Value);
		},
		
		getProperty: function (objInfo) {
	        var $instance = $("#" + objInfo.CurrentControlID);
			return $instance.data(objInfo.property);
	    },

	    setProperty: function (objInfo) {
	        var $instance = $("#" + objInfo.CurrentControlID);
			$instance.data(objInfo.property, objInfo.Value)
	    }
		
    });
	
}(jQuery, window, document));