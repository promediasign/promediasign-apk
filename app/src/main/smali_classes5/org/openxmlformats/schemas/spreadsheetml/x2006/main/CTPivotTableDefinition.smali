.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpivottabledefinitionb188type"

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 12
    .line 13
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewChartFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;
.end method

.method public abstract addNewColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
.end method

.method public abstract addNewColHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;
.end method

.method public abstract addNewColItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;
.end method

.method public abstract addNewConditionalFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;
.end method

.method public abstract addNewDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;
.end method

.method public abstract addNewFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;
.end method

.method public abstract addNewLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.end method

.method public abstract addNewPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
.end method

.method public abstract addNewPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
.end method

.method public abstract addNewPivotHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;
.end method

.method public abstract addNewPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;
.end method

.method public abstract addNewRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
.end method

.method public abstract addNewRowHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;
.end method

.method public abstract addNewRowItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;
.end method

.method public abstract getApplyAlignmentFormats()Z
.end method

.method public abstract getApplyBorderFormats()Z
.end method

.method public abstract getApplyFontFormats()Z
.end method

.method public abstract getApplyNumberFormats()Z
.end method

.method public abstract getApplyPatternFormats()Z
.end method

.method public abstract getApplyWidthHeightFormats()Z
.end method

.method public abstract getAsteriskTotals()Z
.end method

.method public abstract getAutoFormatId()J
.end method

.method public abstract getCacheId()J
.end method

.method public abstract getChartFormat()J
.end method

.method public abstract getChartFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;
.end method

.method public abstract getColFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;
.end method

.method public abstract getColGrandTotals()Z
.end method

.method public abstract getColHeaderCaption()Ljava/lang/String;
.end method

.method public abstract getColHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;
.end method

.method public abstract getColItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;
.end method

.method public abstract getCompact()Z
.end method

.method public abstract getCompactData()Z
.end method

.method public abstract getConditionalFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;
.end method

.method public abstract getCreatedVersion()S
.end method

.method public abstract getCustomListSort()Z
.end method

.method public abstract getDataCaption()Ljava/lang/String;
.end method

.method public abstract getDataFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;
.end method

.method public abstract getDataOnRows()Z
.end method

.method public abstract getDataPosition()J
.end method

.method public abstract getDisableFieldList()Z
.end method

.method public abstract getEditData()Z
.end method

.method public abstract getEnableDrill()Z
.end method

.method public abstract getEnableFieldProperties()Z
.end method

.method public abstract getEnableWizard()Z
.end method

.method public abstract getErrorCaption()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFieldListSortAscending()Z
.end method

.method public abstract getFieldPrintTitles()Z
.end method

.method public abstract getFilters()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;
.end method

.method public abstract getFormats()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;
.end method

.method public abstract getGrandTotalCaption()Ljava/lang/String;
.end method

.method public abstract getGridDropZones()Z
.end method

.method public abstract getImmersive()Z
.end method

.method public abstract getIndent()J
.end method

.method public abstract getItemPrintTitles()Z
.end method

.method public abstract getLocation()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;
.end method

.method public abstract getMdxSubqueries()Z
.end method

.method public abstract getMergeItem()Z
.end method

.method public abstract getMinRefreshableVersion()S
.end method

.method public abstract getMissingCaption()Ljava/lang/String;
.end method

.method public abstract getMultipleFieldFilters()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getOutlineData()Z
.end method

.method public abstract getPageFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;
.end method

.method public abstract getPageOverThenDown()Z
.end method

.method public abstract getPageStyle()Ljava/lang/String;
.end method

.method public abstract getPageWrap()J
.end method

.method public abstract getPivotFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;
.end method

.method public abstract getPivotHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;
.end method

.method public abstract getPivotTableStyle()Ljava/lang/String;
.end method

.method public abstract getPivotTableStyleInfo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;
.end method

.method public abstract getPreserveFormatting()Z
.end method

.method public abstract getPrintDrill()Z
.end method

.method public abstract getPublished()Z
.end method

.method public abstract getRowFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;
.end method

.method public abstract getRowGrandTotals()Z
.end method

.method public abstract getRowHeaderCaption()Ljava/lang/String;
.end method

.method public abstract getRowHierarchiesUsage()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;
.end method

.method public abstract getRowItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;
.end method

.method public abstract getShowCalcMbrs()Z
.end method

.method public abstract getShowDataDropDown()Z
.end method

.method public abstract getShowDataTips()Z
.end method

.method public abstract getShowDrill()Z
.end method

.method public abstract getShowDropZones()Z
.end method

.method public abstract getShowEmptyCol()Z
.end method

.method public abstract getShowEmptyRow()Z
.end method

.method public abstract getShowError()Z
.end method

.method public abstract getShowHeaders()Z
.end method

.method public abstract getShowItems()Z
.end method

.method public abstract getShowMemberPropertyTips()Z
.end method

.method public abstract getShowMissing()Z
.end method

.method public abstract getShowMultipleLabel()Z
.end method

.method public abstract getSubtotalHiddenItems()Z
.end method

.method public abstract getTag()Ljava/lang/String;
.end method

.method public abstract getUpdatedVersion()S
.end method

.method public abstract getUseAutoFormatting()Z
.end method

.method public abstract getVacatedStyle()Ljava/lang/String;
.end method

.method public abstract getVisualTotals()Z
.end method

.method public abstract isSetApplyAlignmentFormats()Z
.end method

.method public abstract isSetApplyBorderFormats()Z
.end method

.method public abstract isSetApplyFontFormats()Z
.end method

.method public abstract isSetApplyNumberFormats()Z
.end method

.method public abstract isSetApplyPatternFormats()Z
.end method

.method public abstract isSetApplyWidthHeightFormats()Z
.end method

.method public abstract isSetAsteriskTotals()Z
.end method

.method public abstract isSetAutoFormatId()Z
.end method

.method public abstract isSetChartFormat()Z
.end method

.method public abstract isSetChartFormats()Z
.end method

.method public abstract isSetColFields()Z
.end method

.method public abstract isSetColGrandTotals()Z
.end method

.method public abstract isSetColHeaderCaption()Z
.end method

.method public abstract isSetColHierarchiesUsage()Z
.end method

.method public abstract isSetColItems()Z
.end method

.method public abstract isSetCompact()Z
.end method

.method public abstract isSetCompactData()Z
.end method

.method public abstract isSetConditionalFormats()Z
.end method

.method public abstract isSetCreatedVersion()Z
.end method

.method public abstract isSetCustomListSort()Z
.end method

.method public abstract isSetDataFields()Z
.end method

.method public abstract isSetDataOnRows()Z
.end method

.method public abstract isSetDataPosition()Z
.end method

.method public abstract isSetDisableFieldList()Z
.end method

.method public abstract isSetEditData()Z
.end method

.method public abstract isSetEnableDrill()Z
.end method

.method public abstract isSetEnableFieldProperties()Z
.end method

.method public abstract isSetEnableWizard()Z
.end method

.method public abstract isSetErrorCaption()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetFieldListSortAscending()Z
.end method

.method public abstract isSetFieldPrintTitles()Z
.end method

.method public abstract isSetFilters()Z
.end method

.method public abstract isSetFormats()Z
.end method

.method public abstract isSetGrandTotalCaption()Z
.end method

.method public abstract isSetGridDropZones()Z
.end method

.method public abstract isSetImmersive()Z
.end method

.method public abstract isSetIndent()Z
.end method

.method public abstract isSetItemPrintTitles()Z
.end method

.method public abstract isSetMdxSubqueries()Z
.end method

.method public abstract isSetMergeItem()Z
.end method

.method public abstract isSetMinRefreshableVersion()Z
.end method

.method public abstract isSetMissingCaption()Z
.end method

.method public abstract isSetMultipleFieldFilters()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetOutlineData()Z
.end method

.method public abstract isSetPageFields()Z
.end method

.method public abstract isSetPageOverThenDown()Z
.end method

.method public abstract isSetPageStyle()Z
.end method

.method public abstract isSetPageWrap()Z
.end method

.method public abstract isSetPivotFields()Z
.end method

.method public abstract isSetPivotHierarchies()Z
.end method

.method public abstract isSetPivotTableStyle()Z
.end method

.method public abstract isSetPivotTableStyleInfo()Z
.end method

.method public abstract isSetPreserveFormatting()Z
.end method

.method public abstract isSetPrintDrill()Z
.end method

.method public abstract isSetPublished()Z
.end method

.method public abstract isSetRowFields()Z
.end method

.method public abstract isSetRowGrandTotals()Z
.end method

.method public abstract isSetRowHeaderCaption()Z
.end method

.method public abstract isSetRowHierarchiesUsage()Z
.end method

.method public abstract isSetRowItems()Z
.end method

.method public abstract isSetShowCalcMbrs()Z
.end method

.method public abstract isSetShowDataDropDown()Z
.end method

.method public abstract isSetShowDataTips()Z
.end method

.method public abstract isSetShowDrill()Z
.end method

.method public abstract isSetShowDropZones()Z
.end method

.method public abstract isSetShowEmptyCol()Z
.end method

.method public abstract isSetShowEmptyRow()Z
.end method

.method public abstract isSetShowError()Z
.end method

.method public abstract isSetShowHeaders()Z
.end method

.method public abstract isSetShowItems()Z
.end method

.method public abstract isSetShowMemberPropertyTips()Z
.end method

.method public abstract isSetShowMissing()Z
.end method

.method public abstract isSetShowMultipleLabel()Z
.end method

.method public abstract isSetSubtotalHiddenItems()Z
.end method

.method public abstract isSetTag()Z
.end method

.method public abstract isSetUpdatedVersion()Z
.end method

.method public abstract isSetUseAutoFormatting()Z
.end method

.method public abstract isSetVacatedStyle()Z
.end method

.method public abstract isSetVisualTotals()Z
.end method

.method public abstract setApplyAlignmentFormats(Z)V
.end method

.method public abstract setApplyBorderFormats(Z)V
.end method

.method public abstract setApplyFontFormats(Z)V
.end method

.method public abstract setApplyNumberFormats(Z)V
.end method

.method public abstract setApplyPatternFormats(Z)V
.end method

.method public abstract setApplyWidthHeightFormats(Z)V
.end method

.method public abstract setAsteriskTotals(Z)V
.end method

.method public abstract setAutoFormatId(J)V
.end method

.method public abstract setCacheId(J)V
.end method

.method public abstract setChartFormat(J)V
.end method

.method public abstract setChartFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTChartFormats;)V
.end method

.method public abstract setColFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColFields;)V
.end method

.method public abstract setColGrandTotals(Z)V
.end method

.method public abstract setColHeaderCaption(Ljava/lang/String;)V
.end method

.method public abstract setColHierarchiesUsage(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColHierarchiesUsage;)V
.end method

.method public abstract setColItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColItems;)V
.end method

.method public abstract setCompact(Z)V
.end method

.method public abstract setCompactData(Z)V
.end method

.method public abstract setConditionalFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTConditionalFormats;)V
.end method

.method public abstract setCreatedVersion(S)V
.end method

.method public abstract setCustomListSort(Z)V
.end method

.method public abstract setDataCaption(Ljava/lang/String;)V
.end method

.method public abstract setDataFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataFields;)V
.end method

.method public abstract setDataOnRows(Z)V
.end method

.method public abstract setDataPosition(J)V
.end method

.method public abstract setDisableFieldList(Z)V
.end method

.method public abstract setEditData(Z)V
.end method

.method public abstract setEnableDrill(Z)V
.end method

.method public abstract setEnableFieldProperties(Z)V
.end method

.method public abstract setEnableWizard(Z)V
.end method

.method public abstract setErrorCaption(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFieldListSortAscending(Z)V
.end method

.method public abstract setFieldPrintTitles(Z)V
.end method

.method public abstract setFilters(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFilters;)V
.end method

.method public abstract setFormats(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTFormats;)V
.end method

.method public abstract setGrandTotalCaption(Ljava/lang/String;)V
.end method

.method public abstract setGridDropZones(Z)V
.end method

.method public abstract setImmersive(Z)V
.end method

.method public abstract setIndent(J)V
.end method

.method public abstract setItemPrintTitles(Z)V
.end method

.method public abstract setLocation(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTLocation;)V
.end method

.method public abstract setMdxSubqueries(Z)V
.end method

.method public abstract setMergeItem(Z)V
.end method

.method public abstract setMinRefreshableVersion(S)V
.end method

.method public abstract setMissingCaption(Ljava/lang/String;)V
.end method

.method public abstract setMultipleFieldFilters(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setOutlineData(Z)V
.end method

.method public abstract setPageFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageFields;)V
.end method

.method public abstract setPageOverThenDown(Z)V
.end method

.method public abstract setPageStyle(Ljava/lang/String;)V
.end method

.method public abstract setPageWrap(J)V
.end method

.method public abstract setPivotFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotFields;)V
.end method

.method public abstract setPivotHierarchies(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotHierarchies;)V
.end method

.method public abstract setPivotTableStyle(Ljava/lang/String;)V
.end method

.method public abstract setPivotTableStyleInfo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotTableStyle;)V
.end method

.method public abstract setPreserveFormatting(Z)V
.end method

.method public abstract setPrintDrill(Z)V
.end method

.method public abstract setPublished(Z)V
.end method

.method public abstract setRowFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowFields;)V
.end method

.method public abstract setRowGrandTotals(Z)V
.end method

.method public abstract setRowHeaderCaption(Ljava/lang/String;)V
.end method

.method public abstract setRowHierarchiesUsage(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowHierarchiesUsage;)V
.end method

.method public abstract setRowItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTRowItems;)V
.end method

.method public abstract setShowCalcMbrs(Z)V
.end method

.method public abstract setShowDataDropDown(Z)V
.end method

.method public abstract setShowDataTips(Z)V
.end method

.method public abstract setShowDrill(Z)V
.end method

.method public abstract setShowDropZones(Z)V
.end method

.method public abstract setShowEmptyCol(Z)V
.end method

.method public abstract setShowEmptyRow(Z)V
.end method

.method public abstract setShowError(Z)V
.end method

.method public abstract setShowHeaders(Z)V
.end method

.method public abstract setShowItems(Z)V
.end method

.method public abstract setShowMemberPropertyTips(Z)V
.end method

.method public abstract setShowMissing(Z)V
.end method

.method public abstract setShowMultipleLabel(Z)V
.end method

.method public abstract setSubtotalHiddenItems(Z)V
.end method

.method public abstract setTag(Ljava/lang/String;)V
.end method

.method public abstract setUpdatedVersion(S)V
.end method

.method public abstract setUseAutoFormatting(Z)V
.end method

.method public abstract setVacatedStyle(Ljava/lang/String;)V
.end method

.method public abstract setVisualTotals(Z)V
.end method

.method public abstract unsetApplyAlignmentFormats()V
.end method

.method public abstract unsetApplyBorderFormats()V
.end method

.method public abstract unsetApplyFontFormats()V
.end method

.method public abstract unsetApplyNumberFormats()V
.end method

.method public abstract unsetApplyPatternFormats()V
.end method

.method public abstract unsetApplyWidthHeightFormats()V
.end method

.method public abstract unsetAsteriskTotals()V
.end method

.method public abstract unsetAutoFormatId()V
.end method

.method public abstract unsetChartFormat()V
.end method

.method public abstract unsetChartFormats()V
.end method

.method public abstract unsetColFields()V
.end method

.method public abstract unsetColGrandTotals()V
.end method

.method public abstract unsetColHeaderCaption()V
.end method

.method public abstract unsetColHierarchiesUsage()V
.end method

.method public abstract unsetColItems()V
.end method

.method public abstract unsetCompact()V
.end method

.method public abstract unsetCompactData()V
.end method

.method public abstract unsetConditionalFormats()V
.end method

.method public abstract unsetCreatedVersion()V
.end method

.method public abstract unsetCustomListSort()V
.end method

.method public abstract unsetDataFields()V
.end method

.method public abstract unsetDataOnRows()V
.end method

.method public abstract unsetDataPosition()V
.end method

.method public abstract unsetDisableFieldList()V
.end method

.method public abstract unsetEditData()V
.end method

.method public abstract unsetEnableDrill()V
.end method

.method public abstract unsetEnableFieldProperties()V
.end method

.method public abstract unsetEnableWizard()V
.end method

.method public abstract unsetErrorCaption()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetFieldListSortAscending()V
.end method

.method public abstract unsetFieldPrintTitles()V
.end method

.method public abstract unsetFilters()V
.end method

.method public abstract unsetFormats()V
.end method

.method public abstract unsetGrandTotalCaption()V
.end method

.method public abstract unsetGridDropZones()V
.end method

.method public abstract unsetImmersive()V
.end method

.method public abstract unsetIndent()V
.end method

.method public abstract unsetItemPrintTitles()V
.end method

.method public abstract unsetMdxSubqueries()V
.end method

.method public abstract unsetMergeItem()V
.end method

.method public abstract unsetMinRefreshableVersion()V
.end method

.method public abstract unsetMissingCaption()V
.end method

.method public abstract unsetMultipleFieldFilters()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetOutlineData()V
.end method

.method public abstract unsetPageFields()V
.end method

.method public abstract unsetPageOverThenDown()V
.end method

.method public abstract unsetPageStyle()V
.end method

.method public abstract unsetPageWrap()V
.end method

.method public abstract unsetPivotFields()V
.end method

.method public abstract unsetPivotHierarchies()V
.end method

.method public abstract unsetPivotTableStyle()V
.end method

.method public abstract unsetPivotTableStyleInfo()V
.end method

.method public abstract unsetPreserveFormatting()V
.end method

.method public abstract unsetPrintDrill()V
.end method

.method public abstract unsetPublished()V
.end method

.method public abstract unsetRowFields()V
.end method

.method public abstract unsetRowGrandTotals()V
.end method

.method public abstract unsetRowHeaderCaption()V
.end method

.method public abstract unsetRowHierarchiesUsage()V
.end method

.method public abstract unsetRowItems()V
.end method

.method public abstract unsetShowCalcMbrs()V
.end method

.method public abstract unsetShowDataDropDown()V
.end method

.method public abstract unsetShowDataTips()V
.end method

.method public abstract unsetShowDrill()V
.end method

.method public abstract unsetShowDropZones()V
.end method

.method public abstract unsetShowEmptyCol()V
.end method

.method public abstract unsetShowEmptyRow()V
.end method

.method public abstract unsetShowError()V
.end method

.method public abstract unsetShowHeaders()V
.end method

.method public abstract unsetShowItems()V
.end method

.method public abstract unsetShowMemberPropertyTips()V
.end method

.method public abstract unsetShowMissing()V
.end method

.method public abstract unsetShowMultipleLabel()V
.end method

.method public abstract unsetSubtotalHiddenItems()V
.end method

.method public abstract unsetTag()V
.end method

.method public abstract unsetUpdatedVersion()V
.end method

.method public abstract unsetUseAutoFormatting()V
.end method

.method public abstract unsetVacatedStyle()V
.end method

.method public abstract unsetVisualTotals()V
.end method

.method public abstract xgetApplyAlignmentFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyBorderFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyFontFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyNumberFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyPatternFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetApplyWidthHeightFormats()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAsteriskTotals()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoFormatId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCacheId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetChartFormat()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetColGrandTotals()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetColHeaderCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetCompact()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCompactData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCreatedVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetCustomListSort()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetDataOnRows()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataPosition()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetDisableFieldList()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEditData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEnableDrill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEnableFieldProperties()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetEnableWizard()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetErrorCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetFieldListSortAscending()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFieldPrintTitles()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetGrandTotalCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetGridDropZones()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetImmersive()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIndent()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetItemPrintTitles()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMdxSubqueries()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMergeItem()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinRefreshableVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetMissingCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetMultipleFieldFilters()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetOutline()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetOutlineData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPageOverThenDown()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPageStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetPageWrap()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetPivotTableStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetPreserveFormatting()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPrintDrill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPublished()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowGrandTotals()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRowHeaderCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetShowCalcMbrs()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowDataDropDown()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowDataTips()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowDrill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowDropZones()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowEmptyCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowEmptyRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowError()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowHeaders()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowItems()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowMemberPropertyTips()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowMissing()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowMultipleLabel()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSubtotalHiddenItems()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTag()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetUpdatedVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetUseAutoFormatting()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVacatedStyle()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetVisualTotals()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetApplyAlignmentFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyBorderFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyFontFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyNumberFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyPatternFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetApplyWidthHeightFormats(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAsteriskTotals(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoFormatId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCacheId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetChartFormat(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetColGrandTotals(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetColHeaderCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetCompact(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCompactData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCreatedVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetCustomListSort(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetDataOnRows(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataPosition(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetDisableFieldList(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEditData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEnableDrill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEnableFieldProperties(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetEnableWizard(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetErrorCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetFieldListSortAscending(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFieldPrintTitles(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetGrandTotalCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetGridDropZones(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetImmersive(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIndent(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetItemPrintTitles(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMdxSubqueries(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMergeItem(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinRefreshableVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetMissingCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetMultipleFieldFilters(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetOutline(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetOutlineData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPageOverThenDown(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPageStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetPageWrap(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetPivotTableStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetPreserveFormatting(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPrintDrill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPublished(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowGrandTotals(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRowHeaderCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetShowCalcMbrs(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowDataDropDown(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowDataTips(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowDrill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowDropZones(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowEmptyCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowEmptyRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowError(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowHeaders(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowItems(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowMemberPropertyTips(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowMissing(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowMultipleLabel(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSubtotalHiddenItems(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTag(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetUpdatedVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetUseAutoFormatting(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVacatedStyle(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetVisualTotals(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
