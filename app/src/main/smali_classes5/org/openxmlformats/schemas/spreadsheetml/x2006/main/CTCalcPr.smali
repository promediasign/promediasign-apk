.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcalcprd480type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCalcPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getCalcCompleted()Z
.end method

.method public abstract getCalcId()J
.end method

.method public abstract getCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;
.end method

.method public abstract getCalcOnSave()Z
.end method

.method public abstract getConcurrentCalc()Z
.end method

.method public abstract getConcurrentManualCount()J
.end method

.method public abstract getForceFullCalc()Z
.end method

.method public abstract getFullCalcOnLoad()Z
.end method

.method public abstract getFullPrecision()Z
.end method

.method public abstract getIterate()Z
.end method

.method public abstract getIterateCount()J
.end method

.method public abstract getIterateDelta()D
.end method

.method public abstract getRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;
.end method

.method public abstract isSetCalcCompleted()Z
.end method

.method public abstract isSetCalcId()Z
.end method

.method public abstract isSetCalcMode()Z
.end method

.method public abstract isSetCalcOnSave()Z
.end method

.method public abstract isSetConcurrentCalc()Z
.end method

.method public abstract isSetConcurrentManualCount()Z
.end method

.method public abstract isSetForceFullCalc()Z
.end method

.method public abstract isSetFullCalcOnLoad()Z
.end method

.method public abstract isSetFullPrecision()Z
.end method

.method public abstract isSetIterate()Z
.end method

.method public abstract isSetIterateCount()Z
.end method

.method public abstract isSetIterateDelta()Z
.end method

.method public abstract isSetRefMode()Z
.end method

.method public abstract setCalcCompleted(Z)V
.end method

.method public abstract setCalcId(J)V
.end method

.method public abstract setCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode$Enum;)V
.end method

.method public abstract setCalcOnSave(Z)V
.end method

.method public abstract setConcurrentCalc(Z)V
.end method

.method public abstract setConcurrentManualCount(J)V
.end method

.method public abstract setForceFullCalc(Z)V
.end method

.method public abstract setFullCalcOnLoad(Z)V
.end method

.method public abstract setFullPrecision(Z)V
.end method

.method public abstract setIterate(Z)V
.end method

.method public abstract setIterateCount(J)V
.end method

.method public abstract setIterateDelta(D)V
.end method

.method public abstract setRefMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode$Enum;)V
.end method

.method public abstract unsetCalcCompleted()V
.end method

.method public abstract unsetCalcId()V
.end method

.method public abstract unsetCalcMode()V
.end method

.method public abstract unsetCalcOnSave()V
.end method

.method public abstract unsetConcurrentCalc()V
.end method

.method public abstract unsetConcurrentManualCount()V
.end method

.method public abstract unsetForceFullCalc()V
.end method

.method public abstract unsetFullCalcOnLoad()V
.end method

.method public abstract unsetFullPrecision()V
.end method

.method public abstract unsetIterate()V
.end method

.method public abstract unsetIterateCount()V
.end method

.method public abstract unsetIterateDelta()V
.end method

.method public abstract unsetRefMode()V
.end method

.method public abstract xgetCalcCompleted()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetCalcId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetCalcMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;
.end method

.method public abstract xgetCalcOnSave()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetConcurrentCalc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetConcurrentManualCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetForceFullCalc()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFullCalcOnLoad()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetFullPrecision()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIterate()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetIterateCount()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetIterateDelta()Lorg/apache/xmlbeans/XmlDouble;
.end method

.method public abstract xgetRefMode()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;
.end method

.method public abstract xsetCalcCompleted(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetCalcId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetCalcMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCalcMode;)V
.end method

.method public abstract xsetCalcOnSave(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetConcurrentCalc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetConcurrentManualCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetForceFullCalc(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFullCalcOnLoad(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetFullPrecision(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIterate(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetIterateCount(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetIterateDelta(Lorg/apache/xmlbeans/XmlDouble;)V
.end method

.method public abstract xsetRefMode(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STRefMode;)V
.end method
