.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcfvo7ca5type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTCfvo;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getGte()Z
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;
.end method

.method public abstract getVal()Ljava/lang/String;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract isSetGte()Z
.end method

.method public abstract isSetVal()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setGte(Z)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType$Enum;)V
.end method

.method public abstract setVal(Ljava/lang/String;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract unsetGte()V
.end method

.method public abstract unsetVal()V
.end method

.method public abstract xgetGte()Lorg/apache/xmlbeans/XmlBoolean;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;
.end method

.method public abstract xgetVal()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xsetGte(Lorg/apache/xmlbeans/XmlBoolean;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STCfvoType;)V
.end method

.method public abstract xsetVal(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method
