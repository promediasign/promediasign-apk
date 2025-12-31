.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$Nsconfig:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xmlconfig.Nsconfig"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$Nsconfig:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLCONFIG"

    .line 14
    .line 15
    const-string v2, "nsconfigaebatype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract getPackage()Ljava/lang/String;
.end method

.method public abstract getPrefix()Ljava/lang/String;
.end method

.method public abstract getSuffix()Ljava/lang/String;
.end method

.method public abstract getUri()Ljava/lang/Object;
.end method

.method public abstract getUriprefix()Ljava/util/List;
.end method

.method public abstract isSetPackage()Z
.end method

.method public abstract isSetPrefix()Z
.end method

.method public abstract isSetSuffix()Z
.end method

.method public abstract isSetUri()Z
.end method

.method public abstract isSetUriprefix()Z
.end method

.method public abstract setPackage(Ljava/lang/String;)V
.end method

.method public abstract setPrefix(Ljava/lang/String;)V
.end method

.method public abstract setSuffix(Ljava/lang/String;)V
.end method

.method public abstract setUri(Ljava/lang/Object;)V
.end method

.method public abstract setUriprefix(Ljava/util/List;)V
.end method

.method public abstract unsetPackage()V
.end method

.method public abstract unsetPrefix()V
.end method

.method public abstract unsetSuffix()V
.end method

.method public abstract unsetUri()V
.end method

.method public abstract unsetUriprefix()V
.end method

.method public abstract xgetPackage()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetPrefix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetSuffix()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetUri()Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList;
.end method

.method public abstract xgetUriprefix()Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespacePrefixList;
.end method

.method public abstract xsetPackage(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetPrefix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetSuffix(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetUri(Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespaceList;)V
.end method

.method public abstract xsetUriprefix(Lorg/apache/xmlbeans/impl/xb/xmlconfig/NamespacePrefixList;)V
.end method
