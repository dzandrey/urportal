/* Copyright (C) YOOtheme GmbH, http://www.gnu.org/licenses/gpl.html GNU/GPL */

(function(t){var o=function(){};o.prototype=t.extend(o.prototype,{name:"ApplicationEdit",options:{url:"index.php?option=com_zoo&controller=configuration",application_id:0,application_group:""},initialize:function(o,a){this.options=t.extend({},this.options,a);var i=this;var e=t("#parameter-accordion");var n=t("#template");n.bind("change",function(){var o=t('<span class="loader">').insertAfter(n);e.fadeOut();t.ajax({url:i.options.url,data:{task:"getApplicationParams",format:"raw","cid[]":i.options.application_id,group:i.options.application_group,template:t(this).val()},success:function(t){e.html(t).fadeIn().accordionMenu({mode:"slide",display:0});o.remove()}})})}});t.fn[o.prototype.name]=function(){var a=arguments;var i=a[0]?a[0]:null;return this.each(function(){var e=t(this);if(o.prototype[i]&&e.data(o.prototype.name)&&i!="initialize"){e.data(o.prototype.name)[i].apply(e.data(o.prototype.name),Array.prototype.slice.call(a,1))}else if(!i||t.isPlainObject(i)){var n=new o;if(o.prototype["initialize"]){n.initialize.apply(n,t.merge([e],a))}e.data(o.prototype.name,n)}else{t.error("Method "+i+" does not exist on jQuery."+o.name)}})}})(jQuery);