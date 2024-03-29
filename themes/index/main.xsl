<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" omit-xml-declaration="no" indent="yes" encoding="utf-8"/>
  <xsl:decimal-format grouping-separator=" " NaN=""/>
	<xsl:param name="title"></xsl:param>
	<xsl:param name="description"></xsl:param>
	<xsl:param name="keywords"></xsl:param>
	
	<xsl:param name="res_site_url"></xsl:param>
	<xsl:param name="res_engine_url"></xsl:param>
	<xsl:param name="current_url"></xsl:param>
	<xsl:param name="cur_rights"></xsl:param>
	
  <xsl:template match="page">  	
  	<head>
  		<title><xsl:value-of select="$title" disable-output-escaping="yes"/></title>
  		<meta name="description" content="{$description}" />
  		<meta name="keywords" content="{$keywords}" />
  		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
  		
  		<link rel="stylesheet" type="text/css" href="{$res_site_url}css/main.css" />
  		
  		<script src="{$res_engine_url}js/jquery.min.js"></script>
  		<script src="{$res_engine_url}js/utils.js"></script>
  	</head>  	
  	
		<body>
			<span class="msg_warning" style="display:none;" id="id_err_message"></span>
			<span class="msg_info" style="display:none;" id="id_info_message"></span>			
			
			<xsl:value-of select="parts/content" disable-output-escaping="yes"/>
	  </body>

  </xsl:template>

</xsl:stylesheet>
