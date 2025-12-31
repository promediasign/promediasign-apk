.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctdatafield6f0ftype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTDataField;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getBaseField()I
.end method

.method public abstract getBaseItem()J
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFld()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNumFmtId()J
.end method

.method public abstract getShowDataAs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;
.end method

.method public abstract getSubtotal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;
.end method

.method public abstract isSetBaseField()Z
.end method

.method public abstract isSetBaseItem()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetNumFmtId()Z
.end method

.method public abstract isSetShowDataAs()Z
.end method

.method public abstract isSetSubtotal()Z
.end method

.method public abstract setBaseField(I)V
.end method

.method public abstract setBaseItem(J)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFld(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNumFmtId(J)V
.end method

.method public abstract setShowDataAs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs$Enum;)V
.end method

.method public abstract setSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction$Enum;)V
.end method

.method public abstract unsetBaseField()V
.end method

.method public abstract unsetBaseItem()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetNumFmtId()V
.end method

.method public abstract unsetShowDataAs()V
.end method

.method public abstract unsetSubtotal()V
.end method

.method public abstract xgetBaseField()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetBaseItem()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetNumFmtId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;
.end method

.method public abstract xgetShowDataAs()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;
.end method

.method public abstract xgetSubtotal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;
.end method

.method public abstract xsetBaseField(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetBaseItem(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetNumFmtId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STNumFmtId;)V
.end method

.method public abstract xsetShowDataAs(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STShowDataAs;)V
.end method

.method public abstract xsetSubtotal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDataConsolidateFunction;)V
.end method
