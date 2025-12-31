.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$Qnameconfig:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xmlconfig.Qnameconfig"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$Qnameconfig:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLCONFIG"

    .line 14
    .line 15
    const-string v2, "qnameconfig463ftype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract getJavaname()Ljava/lang/String;
.end method

.method public abstract getName()Lorg/apache/poi/javax/xml/namespace/QName;
.end method

.method public abstract getTarget()Ljava/util/List;
.end method

.method public abstract isSetJavaname()Z
.end method

.method public abstract isSetName()Z
.end method

.method public abstract isSetTarget()Z
.end method

.method public abstract setJavaname(Ljava/lang/String;)V
.end method

.method public abstract setName(Lorg/apache/poi/javax/xml/namespace/QName;)V
.end method

.method public abstract setTarget(Ljava/util/List;)V
.end method

.method public abstract unsetJavaname()V
.end method

.method public abstract unsetName()V
.end method

.method public abstract unsetTarget()V
.end method

.method public abstract xgetJavaname()Lorg/apache/xmlbeans/XmlString;
.end method

.method public abstract xgetName()Lorg/apache/xmlbeans/XmlQName;
.end method

.method public abstract xgetTarget()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetlist;
.end method

.method public abstract xsetJavaname(Lorg/apache/xmlbeans/XmlString;)V
.end method

.method public abstract xsetName(Lorg/apache/xmlbeans/XmlQName;)V
.end method

.method public abstract xsetTarget(Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnametargetlist;)V
.end method
