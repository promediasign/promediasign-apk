.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Documentation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$DocumentationDocument$Documentation:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xsdschema.DocumentationDocument$Documentation"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$1;->class$org$apache$xmlbeans$impl$xb$xsdschema$DocumentationDocument$Documentation:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLSCHEMA"

    .line 14
    .line 15
    const-string v2, "documentationa475elemtype"

    .line 16
    .line 17
    invoke-static {v0, v1, v2}, LA/g;->s(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/xmlbeans/SchemaComponent;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, Lorg/apache/xmlbeans/SchemaType;

    .line 22
    .line 23
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xsdschema/DocumentationDocument$Documentation;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract getLang()Ljava/lang/String;
.end method

.method public abstract getSource()Ljava/lang/String;
.end method

.method public abstract isSetLang()Z
.end method

.method public abstract isSetSource()Z
.end method

.method public abstract setLang(Ljava/lang/String;)V
.end method

.method public abstract setSource(Ljava/lang/String;)V
.end method

.method public abstract unsetLang()V
.end method

.method public abstract unsetSource()V
.end method

.method public abstract xgetLang()Lorg/apache/xmlbeans/XmlLanguage;
.end method

.method public abstract xgetSource()Lorg/apache/xmlbeans/XmlAnyURI;
.end method

.method public abstract xsetLang(Lorg/apache/xmlbeans/XmlLanguage;)V
.end method

.method public abstract xsetSource(Lorg/apache/xmlbeans/XmlAnyURI;)V
.end method
