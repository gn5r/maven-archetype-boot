<#--  指定したデータタイプを変換する  -->
<#function convertDataType dataType>
  <#local result = dataType?replace("Date", "LocalDate")>
  <#local result = dataType?replace("Timestamp", "LocalDateTime")>
  <#return result>
</#function>

<#--  指定したパッケージ名を変換する  -->
<#function convertImportType packageName>
  <#local result = packageName?replace("java.sql.Date", "java.time.LocalDate")>
  <#local result = packageName?replace("java.sql.Timestamp", "java.time.LocalDateTime")>
  <#return result>
</#function>

<#-- author -->
<#assign author = "gn5r">

<#-- since -->
<#assign since = "1.0.0">