.class public interface abstract Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-class v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;

    .line 2
    .line 3
    const-string v1, "schemaorg_apache_xmlbeans.system.sF1327CCA741569E70F9CA8C9AF9B44B2"

    .line 4
    .line 5
    const-string v2, "ctschema0e6atype"

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
    sput-object v0, Lorg/openxmlformats/schemas/spreadsheetml/x2006/main/CTSchema;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract getID()Ljava/lang/String;
.end method

.method public abstract getNamespace()Ljava/lang/String;
.end method

.method public abstract getSchemaRef()Ljava/lang/String;
.end method

.method public abstract isSetNamespace()Z
.end method

.method public abstract isSetSchemaRef()Z
.end method

.method public abstract setID(Ljava/lang/String;)V
.end method

.method public abstract setNamespace(Ljava/lang/String;)V
.end method

.method public abstract setSchemaRef(Ljava/lang/String;)V
.end method

.method public abstract unsetNamespace()V
.end method

.method public abstract unsetSchemaRef()V
.end method

.method public abstract xgetID()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetNamespace()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSchemaRef()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xsetID(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetNamespace(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSchemaRef(Lorg/apache/xmlbeans/XmlString;)V
.end method
