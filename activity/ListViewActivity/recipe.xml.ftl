<?xml version="1.0"?>
<recipe>
    <#include "../common/recipe_manifest.xml.ftl" />

	<#if appCompat && !(hasDependency('com.android.support:appcompat-v7'))>
    	<dependency mavenUrl="com.android.support:appcompat-v7:${buildApi}.+"/>
	</#if>
	
	<#if appCompat && !(hasDependency('com.jakewharton:butterknife'))>
    	<dependency mavenUrl="com.jakewharton:butterknife:5.1.1"/>
	</#if>

    <instantiate from="root/res/layout/activity_list_view.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
                 
    <instantiate from="root/res/layout/list_view_item.xml.ftl"
                 to="${escapeXmlAttribute(resOut)}/layout/${itemLayoutName}.xml" />

    <instantiate from="root/src/app_package/ListViewActivity.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
                   
    <instantiate from="root/src/app_package/ListViewAdapter.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${adapterName}.java" />
                   
    <instantiate from="root/src/app_package/ListViewItem.java.ftl"
                   to="${escapeXmlAttribute(srcOut)}/${itemName}.java" />                              

    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
</recipe>
