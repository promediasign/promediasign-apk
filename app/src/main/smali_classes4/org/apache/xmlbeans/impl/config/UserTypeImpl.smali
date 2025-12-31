.class public Lorg/apache/xmlbeans/impl/config/UserTypeImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/UserType;


# instance fields
.field private _javaName:Ljava/lang/String;

.field private _name:Lorg/apache/poi/javax/xml/namespace/QName;

.field private _staticHandler:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;)Lorg/apache/xmlbeans/impl/config/UserTypeImpl;
    .locals 1

    new-instance p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;

    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;-><init>()V

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getName()Lorg/apache/poi/javax/xml/namespace/QName;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getJavaname()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_javaName:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Usertypeconfig;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_staticHandler:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getJavaName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_javaName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Lorg/apache/poi/javax/xml/namespace/QName;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_name:Lorg/apache/poi/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getStaticHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/UserTypeImpl;->_staticHandler:Ljava/lang/String;

    return-object v0
.end method
