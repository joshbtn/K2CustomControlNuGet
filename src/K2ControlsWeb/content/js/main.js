(function ($, window, document, undefined) {
    
	my.k2.controls.ExampleControl = {
        
		getValue: function (objInfo) {
			return $("#" + objInfo.CurrentControlID).val();
		},
        setValue: function (objInfo) {
			$("#" + objInof.CurrentControlID).val(ObjInfo.Value);
		},
		
		getProperty: function (objInfo) {},
        setProperty: function (objInfo) {
            if (objInfo.property == "Style") {
                my.k2.controls.ExampleControl.setStyle(null, objInfo.Value, $('#' + ObjInfo.CurrentControlId));
            }
        },
		
        setStyles: function (wrapper, styles, target) {
            var isRuntime = (wrapper == null);
            var options = {};
            var element = isRuntime ? jQuery(target) : wrapper;
            jQuery.extend(options, {
                "border": element,
                "background": element,
                "margin": element,
                "padding": element,
                "font": element,
                "horizontalAlign": element
            });
            StyleHelper.setStyles(options, styles);
        }
    };
	
}(jQuery, window, document));