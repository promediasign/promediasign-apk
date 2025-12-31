.class public Lorg/apache/xmlbeans/impl/common/ResolverUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static _entityResolver:Lorg/xml/sax/EntityResolver;

.field static synthetic class$java$lang$String:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "xmlbean.entityResolver"

    invoke-static {v0}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xml/sax/EntityResolver;

    sput-object v0, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->_entityResolver:Lorg/xml/sax/EntityResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    sput-object v0, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->_entityResolver:Lorg/xml/sax/EntityResolver;

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lorg/apache/ftpserver/main/a;->q(Ljava/lang/ClassNotFoundException;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    throw p0
.end method

.method public static getGlobalEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->_entityResolver:Lorg/xml/sax/EntityResolver;

    return-object v0
.end method

.method public static resolverForCatalog(Ljava/lang/String;)Lorg/xml/sax/EntityResolver;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v3, "org.apache.xml.resolver.CatalogManager"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const-string v5, "setCatalogFiles"

    sget-object v6, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->class$java$lang$String:Ljava/lang/Class;

    if-nez v6, :cond_1

    const-string v6, "java.lang.String"

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/xmlbeans/impl/common/ResolverUtil;->class$java$lang$String:Ljava/lang/Class;

    :cond_1
    new-array v7, v1, [Ljava/lang/Class;

    aput-object v6, v7, v0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, v4, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "org.apache.xml.resolver.tools.CatalogResolver"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    new-array v5, v1, [Ljava/lang/Class;

    aput-object v3, v5, v0

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xml/sax/EntityResolver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method
