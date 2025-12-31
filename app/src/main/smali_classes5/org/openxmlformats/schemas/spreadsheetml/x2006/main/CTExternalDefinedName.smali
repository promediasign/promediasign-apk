.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctexternaldefinedname9408type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTExternalDefinedName;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getRefersTo()Ljava/lang/String;
.end method

.method public abstract getSheetId()J
.end method

.method public abstract isSetRefersTo()Z
.end method

.method public abstract isSetSheetId()Z
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setRefersTo(Ljava/lang/String;)V
.end method

.method public abstract setSheetId(J)V
.end method

.method public abstract unsetRefersTo()V
.end method

.method public abstract unsetSheetId()V
.end method

.method public abstract xgetName()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetRefersTo()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;
.end method

.method public abstract xgetSheetId()Lorg/apache/xmlbeans/XmlUnsignedInt;
.end method

.method public abstract xsetName(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetRefersTo(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/STXstring;)V
.end method

.method public abstract xsetSheetId(Lorg/apache/xmlbeans/XmlUnsignedInt;)V
.end method
