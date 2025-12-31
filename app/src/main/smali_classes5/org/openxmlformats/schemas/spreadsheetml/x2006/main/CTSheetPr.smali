.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctsheetpr3ae0type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSheetPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
.end method

.method public abstract addNewPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
.end method

.method public abstract addNewTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getCodeName()Ljava/lang/String;
.end method

.method public abstract getEnableFormatConditionsCalculation()Z
.end method

.method public abstract getFilterMode()Z
.end method

.method public abstract getOutlinePr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;
.end method

.method public abstract getPageSetUpPr()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;
.end method

.method public abstract getPublished()Z
.end method

.method public abstract getSyncHorizontal()Z
.end method

.method public abstract getSyncRef()Ljava/lang/String;
.end method

.method public abstract getSyncVertical()Z
.end method

.method public abstract getTabColor()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;
.end method

.method public abstract getTransitionEntry()Z
.end method

.method public abstract getTransitionEvaluation()Z
.end method

.method public abstract isSetCodeName()Z
.end method

.method public abstract isSetEnableFormatConditionsCalculation()Z
.end method

.method public abstract isSetFilterMode()Z
.end method

.method public abstract isSetOutlinePr()Z
.end method

.method public abstract isSetPageSetUpPr()Z
.end method

.method public abstract isSetPublished()Z
.end method

.method public abstract isSetSyncHorizontal()Z
.end method

.method public abstract isSetSyncRef()Z
.end method

.method public abstract isSetSyncVertical()Z
.end method

.method public abstract isSetTabColor()Z
.end method

.method public abstract isSetTransitionEntry()Z
.end method

.method public abstract isSetTransitionEvaluation()Z
.end method

.method public abstract setCodeName(Ljava/lang/String;)V
.end method

.method public abstract setEnableFormatConditionsCalculation(Z)V
.end method

.method public abstract setFilterMode(Z)V
.end method

.method public abstract setOutlinePr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTOutlinePr;)V
.end method

.method public abstract setPageSetUpPr(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageSetUpPr;)V
.end method

.method public abstract setPublished(Z)V
.end method

.method public abstract setSyncHorizontal(Z)V
.end method

.method public abstract setSyncRef(Ljava/lang/String;)V
.end method

.method public abstract setSyncVertical(Z)V
.end method

.method public abstract setTabColor(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColor;)V
.end method

.method public abstract setTransitionEntry(Z)V
.end method

.method public abstract setTransitionEvaluation(Z)V
.end method

.method public abstract unsetCodeName()V
.end method

.method public abstract unsetEnableFormatConditionsCalculation()V
.end method

.method public abstract unsetFilterMode()V
.end method

.method public abstract unsetOutlinePr()V
.end method

.method public abstract unsetPageSetUpPr()V
.end method

.method public abstract unsetPublished()V
.end method

.method public abstract unsetSyncHorizontal()V
.end method

.method public abstract unsetSyncRef()V
.end method

.method public abstract unsetSyncVertical()V
.end method

.method public abstract unsetTabColor()V
.end method

.method public abstract unsetTransitionEntry()V
.end method

.method public abstract unsetTransitionEvaluation()V
.end method

.method public abstract xgetCodeName()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetEnableFormatConditionsCalculation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFilterMode()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetPublished()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSyncHorizontal()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetSyncRef()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;
.end method

.method public abstract xgetSyncVertical()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTransitionEntry()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetTransitionEvaluation()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xsetCodeName(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetEnableFormatConditionsCalculation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFilterMode(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetPublished(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSyncHorizontal(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetSyncRef(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRef;)V
.end method

.method public abstract xsetSyncVertical(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTransitionEntry(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetTransitionEvaluation(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method
