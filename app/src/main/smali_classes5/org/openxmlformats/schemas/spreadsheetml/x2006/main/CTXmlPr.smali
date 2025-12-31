.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctxmlpr2c58type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTXmlPr;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getExtLst()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;
.end method

.method public abstract getMapId()J
.end method

.method public abstract getXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;
.end method

.method public abstract getXpath()Ljava/lang/String;
.end method

.method public abstract isSetExtLst()Z
.end method

.method public abstract setExtLst(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExtensionList;)V
.end method

.method public abstract setMapId(J)V
.end method

.method public abstract setXmlDataType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType$Enum;)V
.end method

.method public abstract setXpath(Ljava/lang/String;)V
.end method

.method public abstract unsetExtLst()V
.end method

.method public abstract xgetMapId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetXmlDataType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;
.end method

.method public abstract xgetXpath()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xsetMapId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetXmlDataType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXmlDataType;)V
.end method

.method public abstract xsetXpath(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method
