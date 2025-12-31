.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "cttablestyleelementa658type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTTableStyleElement;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getDxfId()J
.end method

.method public abstract getSize()J
.end method

.method public abstract getType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;
.end method

.method public abstract isSetDxfId()Z
.end method

.method public abstract isSetSize()Z
.end method

.method public abstract setDxfId(J)V
.end method

.method public abstract setSize(J)V
.end method

.method public abstract setType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType$Enum;)V
.end method

.method public abstract unsetDxfId()V
.end method

.method public abstract unsetSize()V
.end method

.method public abstract xgetDxfId()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;
.end method

.method public abstract xgetSize()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xgetType()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType;
.end method

.method public abstract xsetDxfId(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STDxfId;)V
.end method

.method public abstract xsetSize(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method

.method public abstract xsetType(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STTableStyleType;)V
.end method
