.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctpagefield338atype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTPageField;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getCap()Ljava/lang/String;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getFld()I
.end method

.method public abstract getHier()I
.end method

.method public abstract getItem()J
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSetCap()Z
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetHier()Z
.end method

.method public abstract isSetItem()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract setCap(Ljava/lang/String;)V
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setFld(I)V
.end method

.method public abstract setHier(I)V
.end method

.method public abstract setItem(J)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract unsetCap()V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetHier()V
.end method

.method public abstract unsetItem()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract xgetCap()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetFld()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetHier()Lorg/apache/xmlbeans/XmlInt;
.end method

.method public abstract xgetItem()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xsetCap(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetFld(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetHier(Lorg/apache/xmlbeans/XmlInt;)V
.end method

.method public abstract xsetItem(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method
