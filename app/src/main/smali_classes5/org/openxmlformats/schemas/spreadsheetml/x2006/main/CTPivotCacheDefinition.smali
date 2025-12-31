.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpivotcachedefinition575ctype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPivotCacheDefinition;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
.end method

.method public abstract addNewCacheHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;
.end method

.method public abstract addNewCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.end method

.method public abstract addNewCalculatedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;
.end method

.method public abstract addNewCalculatedMembers()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;
.end method

.method public abstract addNewDimensions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;
.end method

.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract addNewKpis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;
.end method

.method public abstract addNewMaps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;
.end method

.method public abstract addNewMeasureGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;
.end method

.method public abstract addNewTupleCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;
.end method

.method public abstract getBackgroundQuery()Z
.end method

.method public abstract getCacheFields()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;
.end method

.method public abstract getCacheHierarchies()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;
.end method

.method public abstract getCacheSource()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;
.end method

.method public abstract getCalculatedItems()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;
.end method

.method public abstract getCalculatedMembers()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;
.end method

.method public abstract getCreatedVersion()S
.end method

.method public abstract getDimensions()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;
.end method

.method public abstract getEnableRefresh()Z
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getInvalid()Z
.end method

.method public abstract getKpis()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;
.end method

.method public abstract getMaps()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;
.end method

.method public abstract getMeasureGroups()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;
.end method

.method public abstract getMinRefreshableVersion()S
.end method

.method public abstract getMissingItemsLimit()J
.end method

.method public abstract getOptimizeMemory()Z
.end method

.method public abstract getRecordCount()J
.end method

.method public abstract getRefreshOnLoad()Z
.end method

.method public abstract getRefreshedBy()Ljava/lang/String;
.end method

.method public abstract getRefreshedDate()D
.end method

.method public abstract getRefreshedVersion()S
.end method

.method public abstract getSaveData()Z
.end method

.method public abstract getSupportAdvancedDrill()Z
.end method

.method public abstract getSupportSubquery()Z
.end method

.method public abstract getTupleCache()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;
.end method

.method public abstract getTupleCache2()Z
.end method

.method public abstract getUpgradeOnRefresh()Z
.end method

.method public abstract isSetBackgroundQuery()Z
.end method

.method public abstract isSetCacheHierarchies()Z
.end method

.method public abstract isSetCalculatedItems()Z
.end method

.method public abstract isSetCalculatedMembers()Z
.end method

.method public abstract isSetCreatedVersion()Z
.end method

.method public abstract isSetDimensions()Z
.end method

.method public abstract isSetEnableRefresh()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetId()Z
.end method

.method public abstract isSetInvalid()Z
.end method

.method public abstract isSetKpis()Z
.end method

.method public abstract isSetMaps()Z
.end method

.method public abstract isSetMeasureGroups()Z
.end method

.method public abstract isSetMinRefreshableVersion()Z
.end method

.method public abstract isSetMissingItemsLimit()Z
.end method

.method public abstract isSetOptimizeMemory()Z
.end method

.method public abstract isSetRecordCount()Z
.end method

.method public abstract isSetRefreshOnLoad()Z
.end method

.method public abstract isSetRefreshedBy()Z
.end method

.method public abstract isSetRefreshedDate()Z
.end method

.method public abstract isSetRefreshedVersion()Z
.end method

.method public abstract isSetSaveData()Z
.end method

.method public abstract isSetSupportAdvancedDrill()Z
.end method

.method public abstract isSetSupportSubquery()Z
.end method

.method public abstract isSetTupleCache()Z
.end method

.method public abstract isSetTupleCache2()Z
.end method

.method public abstract isSetUpgradeOnRefresh()Z
.end method

.method public abstract setBackgroundQuery(Z)V
.end method

.method public abstract setCacheFields(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheFields;)V
.end method

.method public abstract setCacheHierarchies(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheHierarchies;)V
.end method

.method public abstract setCacheSource(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCacheSource;)V
.end method

.method public abstract setCalculatedItems(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedItems;)V
.end method

.method public abstract setCalculatedMembers(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalculatedMembers;)V
.end method

.method public abstract setCreatedVersion(S)V
.end method

.method public abstract setDimensions(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDimensions;)V
.end method

.method public abstract setEnableRefresh(Z)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setId(Ljava/lang/String;)V
.end method

.method public abstract setInvalid(Z)V
.end method

.method public abstract setKpis(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPCDKPIs;)V
.end method

.method public abstract setMaps(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureDimensionMaps;)V
.end method

.method public abstract setMeasureGroups(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMeasureGroups;)V
.end method

.method public abstract setMinRefreshableVersion(S)V
.end method

.method public abstract setMissingItemsLimit(J)V
.end method

.method public abstract setOptimizeMemory(Z)V
.end method

.method public abstract setRecordCount(J)V
.end method

.method public abstract setRefreshOnLoad(Z)V
.end method

.method public abstract setRefreshedBy(Ljava/lang/String;)V
.end method

.method public abstract setRefreshedDate(D)V
.end method

.method public abstract setRefreshedVersion(S)V
.end method

.method public abstract setSaveData(Z)V
.end method

.method public abstract setSupportAdvancedDrill(Z)V
.end method

.method public abstract setSupportSubquery(Z)V
.end method

.method public abstract setTupleCache(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTupleCache;)V
.end method

.method public abstract setTupleCache2(Z)V
.end method

.method public abstract setUpgradeOnRefresh(Z)V
.end method

.method public abstract unsetBackgroundQuery()V
.end method

.method public abstract unsetCacheHierarchies()V
.end method

.method public abstract unsetCalculatedItems()V
.end method

.method public abstract unsetCalculatedMembers()V
.end method

.method public abstract unsetCreatedVersion()V
.end method

.method public abstract unsetDimensions()V
.end method

.method public abstract unsetEnableRefresh()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetId()V
.end method

.method public abstract unsetInvalid()V
.end method

.method public abstract unsetKpis()V
.end method

.method public abstract unsetMaps()V
.end method

.method public abstract unsetMeasureGroups()V
.end method

.method public abstract unsetMinRefreshableVersion()V
.end method

.method public abstract unsetMissingItemsLimit()V
.end method

.method public abstract unsetOptimizeMemory()V
.end method

.method public abstract unsetRecordCount()V
.end method

.method public abstract unsetRefreshOnLoad()V
.end method

.method public abstract unsetRefreshedBy()V
.end method

.method public abstract unsetRefreshedDate()V
.end method

.method public abstract unsetRefreshedVersion()V
.end method

.method public abstract unsetSaveData()V
.end method

.method public abstract unsetSupportAdvancedDrill()V
.end method

.method public abstract unsetSupportSubquery()V
.end method

.method public abstract unsetTupleCache()V
.end method

.method public abstract unsetTupleCache2()V
.end method

.method public abstract unsetUpgradeOnRefresh()V
.end method

.method public abstract xgetBackgroundQuery()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCreatedVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetEnableRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetId()Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;
.end method

.method public abstract xgetInvalid()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetMinRefreshableVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetMissingItemsLimit()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetOptimizeMemory()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRecordCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetRefreshOnLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetRefreshedBy()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetRefreshedDate()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetRefreshedVersion()Lorg/apache/xmlbeans/XmlUnsignedByte;
.end method

.method public abstract xgetSaveData()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSupportAdvancedDrill()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSupportSubquery()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTupleCache2()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetUpgradeOnRefresh()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetBackgroundQuery(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCreatedVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetEnableRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetId(Lorg/openxmlformats/schemas/officeDocument/x2006/relationships/STRelationshipId;)V
.end method

.method public abstract xsetInvalid(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetMinRefreshableVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetMissingItemsLimit(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetOptimizeMemory(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRecordCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetRefreshOnLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetRefreshedBy(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetRefreshedDate(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetRefreshedVersion(Lorg/apache/xmlbeans/XmlUnsignedByte;)V
.end method

.method public abstract xsetSaveData(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSupportAdvancedDrill(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSupportSubquery(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTupleCache2(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetUpgradeOnRefresh(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
