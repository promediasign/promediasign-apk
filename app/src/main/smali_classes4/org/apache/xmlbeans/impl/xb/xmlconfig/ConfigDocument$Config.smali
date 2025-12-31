.class public interface abstract Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/XmlObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config$Factory;
    }
.end annotation


# static fields
.field public static final type:Lorg/apache/xmlbeans/SchemaType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$ConfigDocument$Config:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.xb.xmlconfig.ConfigDocument$Config"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$1;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$1;->class$org$apache$xmlbeans$impl$xb$xmlconfig$ConfigDocument$Config:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const-string v1, "schemaorg_apache_xmlbeans.system.sXMLCONFIG"

    .line 14
    .line 15
    const-string v2, "configf467elemtype"

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
    sput-object v0, Lorg/apache/xmlbeans/impl/xb/xmlconfig/ConfigDocument$Config;->type:Lorg/apache/xmlbeans/SchemaType;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public abstract addNewExtension()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract addNewNamespace()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract addNewQname()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract addNewUsertype()Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract getExtensionArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract getExtensionArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract getNamespaceArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract getNamespaceArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract getQnameArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract getQnameArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract getUsertypeArray(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract getUsertypeArray()[Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract insertNewExtension(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;
.end method

.method public abstract insertNewNamespace(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;
.end method

.method public abstract insertNewQname(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;
.end method

.method public abstract insertNewUsertype(I)Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;
.end method

.method public abstract removeExtension(I)V
.end method

.method public abstract removeNamespace(I)V
.end method

.method public abstract removeQname(I)V
.end method

.method public abstract removeUsertype(I)V
.end method

.method public abstract setExtensionArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
.end method

.method public abstract setExtensionArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig;)V
.end method

.method public abstract setNamespaceArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;)V
.end method

.method public abstract setNamespaceArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Nsconfig;)V
.end method

.method public abstract setQnameArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;)V
.end method

.method public abstract setQnameArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Qnameconfig;)V
.end method

.method public abstract setUsertypeArray(ILorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V
.end method

.method public abstract setUsertypeArray([Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)V
.end method

.method public abstract sizeOfExtensionArray()I
.end method

.method public abstract sizeOfNamespaceArray()I
.end method

.method public abstract sizeOfQnameArray()I
.end method

.method public abstract sizeOfUsertypeArray()I
.end method
