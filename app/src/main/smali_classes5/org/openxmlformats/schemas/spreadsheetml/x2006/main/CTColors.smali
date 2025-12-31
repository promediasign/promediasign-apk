.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctcolors6579type"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTColors;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract addNewIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;
.end method

.method public abstract addNewMruColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;
.end method

.method public abstract getIndexedColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;
.end method

.method public abstract getMruColors()Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;
.end method

.method public abstract isSetIndexedColors()Z
.end method

.method public abstract isSetMruColors()Z
.end method

.method public abstract setIndexedColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTIndexedColors;)V
.end method

.method public abstract setMruColors(Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTMRUColors;)V
.end method

.method public abstract unsetIndexedColors()V
.end method

.method public abstract unsetMruColors()V
.end method
