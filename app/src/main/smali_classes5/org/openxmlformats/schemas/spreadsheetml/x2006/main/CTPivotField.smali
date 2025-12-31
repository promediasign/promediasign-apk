.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpivotfieldf961type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotField;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewAutoSortScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
.end method

.method public abstract getAllDrilled()Z
.end method

.method public abstract getAutoShow()Z
.end method

.method public abstract getAutoSortScope()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;
.end method

.method public abstract getAvgSubtotal()Z
.end method

.method public abstract getAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;
.end method

.method public abstract getCompact()Z
.end method

.method public abstract getCountASubtotal()Z
.end method

.method public abstract getCountSubtotal()Z
.end method

.method public abstract getDataField()Z
.end method

.method public abstract getDataSourceSort()Z
.end method

.method public abstract getDefaultAttributeDrillState()Z
.end method

.method public abstract getDefaultSubtotal()Z
.end method

.method public abstract getDragOff()Z
.end method

.method public abstract getDragToCol()Z
.end method

.method public abstract getDragToData()Z
.end method

.method public abstract getDragToPage()Z
.end method

.method public abstract getDragToRow()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getHiddenLevel()Z
.end method

.method public abstract getHideNewItems()Z
.end method

.method public abstract getIncludeNewItemsInFilter()Z
.end method

.method public abstract getInsertBlankRow()Z
.end method

.method public abstract getInsertPageBreak()Z
.end method

.method public abstract getItemPageCount()J
.end method

.method public abstract getItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;
.end method

.method public abstract getMaxSubtotal()Z
.end method

.method public abstract getMeasureFilter()Z
.end method

.method public abstract getMinSubtotal()Z
.end method

.method public abstract getMultipleItemSelectionAllowed()Z
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNonAutoSortDefault()Z
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getOutline()Z
.end method

.method public abstract getProductSubtotal()Z
.end method

.method public abstract getRankBy()J
.end method

.method public abstract getServerField()Z
.end method

.method public abstract getShowAll()Z
.end method

.method public abstract getShowDropDowns()Z
.end method

.method public abstract getShowPropAsCaption()Z
.end method

.method public abstract getShowPropCell()Z
.end method

.method public abstract getShowPropTip()Z
.end method

.method public abstract getSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType$Enum;
.end method

.method public abstract getStdDevPSubtotal()Z
.end method

.method public abstract getStdDevSubtotal()Z
.end method

.method public abstract getSubtotalCaption()Ljava/lang/String;
.end method

.method public abstract getSubtotalTop()Z
.end method

.method public abstract getSumSubtotal()Z
.end method

.method public abstract getTopAutoShow()Z
.end method

.method public abstract getUniqueMemberProperty()Ljava/lang/String;
.end method

.method public abstract getVarPSubtotal()Z
.end method

.method public abstract getVarSubtotal()Z
.end method

.method public abstract isSetAllDrilled()Z
.end method

.method public abstract isSetAutoShow()Z
.end method

.method public abstract isSetAutoSortScope()Z
.end method

.method public abstract isSetAvgSubtotal()Z
.end method

.method public abstract isSetAxis()Z
.end method

.method public abstract isSetCompact()Z
.end method

.method public abstract isSetCountASubtotal()Z
.end method

.method public abstract isSetCountSubtotal()Z
.end method

.method public abstract isSetDataField()Z
.end method

.method public abstract isSetDataSourceSort()Z
.end method

.method public abstract isSetDefaultAttributeDrillState()Z
.end method

.method public abstract isSetDefaultSubtotal()Z
.end method

.method public abstract isSetDragOff()Z
.end method

.method public abstract isSetDragToCol()Z
.end method

.method public abstract isSetDragToData()Z
.end method

.method public abstract isSetDragToPage()Z
.end method

.method public abstract isSetDragToRow()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHiddenLevel()Z
.end method

.method public abstract isSetHideNewItems()Z
.end method

.method public abstract isSetIncludeNewItemsInFilter()Z
.end method

.method public abstract isSetInsertBlankRow()Z
.end method

.method public abstract isSetInsertPageBreak()Z
.end method

.method public abstract isSetItemPageCount()Z
.end method

.method public abstract isSetItems()Z
.end method

.method public abstract isSetMaxSubtotal()Z
.end method

.method public abstract isSetMeasureFilter()Z
.end method

.method public abstract isSetMinSubtotal()Z
.end method

.method public abstract isSetMultipleItemSelectionAllowed()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNonAutoSortDefault()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetOutline()Z
.end method

.method public abstract isSetProductSubtotal()Z
.end method

.method public abstract isSetRankBy()Z
.end method

.method public abstract isSetServerField()Z
.end method

.method public abstract isSetShowAll()Z
.end method

.method public abstract isSetShowDropDowns()Z
.end method

.method public abstract isSetShowPropAsCaption()Z
.end method

.method public abstract isSetShowPropCell()Z
.end method

.method public abstract isSetShowPropTip()Z
.end method

.method public abstract isSetSortType()Z
.end method

.method public abstract isSetStdDevPSubtotal()Z
.end method

.method public abstract isSetStdDevSubtotal()Z
.end method

.method public abstract isSetSubtotalCaption()Z
.end method

.method public abstract isSetSubtotalTop()Z
.end method

.method public abstract isSetSumSubtotal()Z
.end method

.method public abstract isSetTopAutoShow()Z
.end method

.method public abstract isSetUniqueMemberProperty()Z
.end method

.method public abstract isSetVarPSubtotal()Z
.end method

.method public abstract isSetVarSubtotal()Z
.end method

.method public abstract setAllDrilled(Z)V
.end method

.method public abstract setAutoShow(Z)V
.end method

.method public abstract setAutoSortScope(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTAutoSortScope;)V
.end method

.method public abstract setAvgSubtotal(Z)V
.end method

.method public abstract setAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis$Enum;)V
.end method

.method public abstract setCompact(Z)V
.end method

.method public abstract setCountASubtotal(Z)V
.end method

.method public abstract setCountSubtotal(Z)V
.end method

.method public abstract setDataField(Z)V
.end method

.method public abstract setDataSourceSort(Z)V
.end method

.method public abstract setDefaultAttributeDrillState(Z)V
.end method

.method public abstract setDefaultSubtotal(Z)V
.end method

.method public abstract setDragOff(Z)V
.end method

.method public abstract setDragToCol(Z)V
.end method

.method public abstract setDragToData(Z)V
.end method

.method public abstract setDragToPage(Z)V
.end method

.method public abstract setDragToRow(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setHiddenLevel(Z)V
.end method

.method public abstract setHideNewItems(Z)V
.end method

.method public abstract setIncludeNewItemsInFilter(Z)V
.end method

.method public abstract setInsertBlankRow(Z)V
.end method

.method public abstract setInsertPageBreak(Z)V
.end method

.method public abstract setItemPageCount(J)V
.end method

.method public abstract setItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTItems;)V
.end method

.method public abstract setMaxSubtotal(Z)V
.end method

.method public abstract setMeasureFilter(Z)V
.end method

.method public abstract setMinSubtotal(Z)V
.end method

.method public abstract setMultipleItemSelectionAllowed(Z)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNonAutoSortDefault(Z)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setOutline(Z)V
.end method

.method public abstract setProductSubtotal(Z)V
.end method

.method public abstract setRankBy(J)V
.end method

.method public abstract setServerField(Z)V
.end method

.method public abstract setShowAll(Z)V
.end method

.method public abstract setShowDropDowns(Z)V
.end method

.method public abstract setShowPropAsCaption(Z)V
.end method

.method public abstract setShowPropCell(Z)V
.end method

.method public abstract setShowPropTip(Z)V
.end method

.method public abstract setSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType$Enum;)V
.end method

.method public abstract setStdDevPSubtotal(Z)V
.end method

.method public abstract setStdDevSubtotal(Z)V
.end method

.method public abstract setSubtotalCaption(Ljava/lang/String;)V
.end method

.method public abstract setSubtotalTop(Z)V
.end method

.method public abstract setSumSubtotal(Z)V
.end method

.method public abstract setTopAutoShow(Z)V
.end method

.method public abstract setUniqueMemberProperty(Ljava/lang/String;)V
.end method

.method public abstract setVarPSubtotal(Z)V
.end method

.method public abstract setVarSubtotal(Z)V
.end method

.method public abstract unsetAllDrilled()V
.end method

.method public abstract unsetAutoShow()V
.end method

.method public abstract unsetAutoSortScope()V
.end method

.method public abstract unsetAvgSubtotal()V
.end method

.method public abstract unsetAxis()V
.end method

.method public abstract unsetCompact()V
.end method

.method public abstract unsetCountASubtotal()V
.end method

.method public abstract unsetCountSubtotal()V
.end method

.method public abstract unsetDataField()V
.end method

.method public abstract unsetDataSourceSort()V
.end method

.method public abstract unsetDefaultAttributeDrillState()V
.end method

.method public abstract unsetDefaultSubtotal()V
.end method

.method public abstract unsetDragOff()V
.end method

.method public abstract unsetDragToCol()V
.end method

.method public abstract unsetDragToData()V
.end method

.method public abstract unsetDragToPage()V
.end method

.method public abstract unsetDragToRow()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHiddenLevel()V
.end method

.method public abstract unsetHideNewItems()V
.end method

.method public abstract unsetIncludeNewItemsInFilter()V
.end method

.method public abstract unsetInsertBlankRow()V
.end method

.method public abstract unsetInsertPageBreak()V
.end method

.method public abstract unsetItemPageCount()V
.end method

.method public abstract unsetItems()V
.end method

.method public abstract unsetMaxSubtotal()V
.end method

.method public abstract unsetMeasureFilter()V
.end method

.method public abstract unsetMinSubtotal()V
.end method

.method public abstract unsetMultipleItemSelectionAllowed()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNonAutoSortDefault()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetOutline()V
.end method

.method public abstract unsetProductSubtotal()V
.end method

.method public abstract unsetRankBy()V
.end method

.method public abstract unsetServerField()V
.end method

.method public abstract unsetShowAll()V
.end method

.method public abstract unsetShowDropDowns()V
.end method

.method public abstract unsetShowPropAsCaption()V
.end method

.method public abstract unsetShowPropCell()V
.end method

.method public abstract unsetShowPropTip()V
.end method

.method public abstract unsetSortType()V
.end method

.method public abstract unsetStdDevPSubtotal()V
.end method

.method public abstract unsetStdDevSubtotal()V
.end method

.method public abstract unsetSubtotalCaption()V
.end method

.method public abstract unsetSubtotalTop()V
.end method

.method public abstract unsetSumSubtotal()V
.end method

.method public abstract unsetTopAutoShow()V
.end method

.method public abstract unsetUniqueMemberProperty()V
.end method

.method public abstract unsetVarPSubtotal()V
.end method

.method public abstract unsetVarSubtotal()V
.end method

.method public abstract xgetAllDrilled()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAutoShow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAvgSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetAxis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;
.end method

.method public abstract xgetCompact()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCountASubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCountSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDataSourceSort()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDefaultAttributeDrillState()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDefaultSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragOff()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToCol()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToPage()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetDragToRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHiddenLevel()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetHideNewItems()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIncludeNewItemsInFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetInsertBlankRow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetInsertPageBreak()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetItemPageCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetMaxSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMeasureFilter()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMultipleItemSelectionAllowed()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetNonAutoSortDefault()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetOutline()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetProductSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRankBy()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetServerField()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowAll()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowDropDowns()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowPropAsCaption()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowPropCell()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetShowPropTip()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSortType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType;
.end method

.method public abstract xgetStdDevPSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetStdDevSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSubtotalCaption()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetSubtotalTop()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSumSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTopAutoShow()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUniqueMemberProperty()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetVarPSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetVarSubtotal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetAllDrilled(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAutoShow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAvgSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetAxis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STAxis;)V
.end method

.method public abstract xsetCompact(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCountASubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCountSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDataSourceSort(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDefaultAttributeDrillState(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDefaultSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragOff(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToCol(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToPage(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetDragToRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHiddenLevel(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetHideNewItems(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIncludeNewItemsInFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetInsertBlankRow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetInsertPageBreak(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetItemPageCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetMaxSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMeasureFilter(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMultipleItemSelectionAllowed(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetNonAutoSortDefault(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetOutline(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetProductSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRankBy(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetServerField(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowAll(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowDropDowns(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowPropAsCaption(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowPropCell(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetShowPropTip(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSortType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STFieldSortType;)V
.end method

.method public abstract xsetStdDevPSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetStdDevSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSubtotalCaption(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetSubtotalTop(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSumSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTopAutoShow(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUniqueMemberProperty(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetVarPSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetVarSubtotal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
