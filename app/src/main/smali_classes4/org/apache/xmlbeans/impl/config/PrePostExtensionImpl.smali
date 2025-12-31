.class public Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/PrePostExtension;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

.field private static final PARAMTYPES_STRING:[Ljava/lang/String;

.field private static final SIGNATURE:Ljava/lang/String;

.field static synthetic class$org$apache$xmlbeans$impl$config$PrePostExtensionImpl:Ljava/lang/Class;


# instance fields
.field private _delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

.field private _delegateToClassName:Ljava/lang/String;

.field private _postSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

.field private _preSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

.field private _xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->class$org$apache$xmlbeans$impl$config$PrePostExtensionImpl:Ljava/lang/Class;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "org.apache.xmlbeans.impl.config.PrePostExtensionImpl"

    .line 6
    .line 7
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->class$(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->class$org$apache$xmlbeans$impl$config$PrePostExtensionImpl:Ljava/lang/Class;

    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    sput-boolean v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->$assertionsDisabled:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    .line 18
    .line 19
    const-string v0, "org.apache.poi.javax.xml.namespace.QName"

    .line 20
    .line 21
    const-string v1, "boolean"

    .line 22
    .line 23
    const-string v2, "int"

    .line 24
    .line 25
    const-string v3, "org.apache.xmlbeans.XmlObject"

    .line 26
    .line 27
    filled-new-array {v2, v3, v0, v1, v2}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "("

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    :goto_0
    sget-object v2, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    .line 37
    .line 38
    array-length v3, v2

    .line 39
    if-ge v1, v3, :cond_2

    .line 40
    .line 41
    aget-object v2, v2, v1

    .line 42
    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    const-string v3, ", "

    .line 46
    .line 47
    invoke-static {v0, v3}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    :cond_1
    invoke-static {v0, v2}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-string v1, ")"

    .line 59
    .line 60
    invoke-static {v0, v1}, LA/g;->h(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    .line 65
    .line 66
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

.method private initParamPrePost(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)V
    .locals 3

    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    if-nez v0, :cond_1

    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lorg/apache/xmlbeans/impl/jam/JClass;

    sput-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    sget-object v2, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_STRING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v2

    aput-object v2, v1, v0

    sget-object v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "JAM should have access to the following types "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return-void
.end method

.method private lookAfterPreAndPost(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;Lorg/apache/xmlbeans/XmlObject;)Z
    .locals 3

    sget-boolean v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    const-string p2, "Delegate to class handler expected."

    invoke-direct {p1, p2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->initParamPrePost(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    const-string v1, "preSet"

    sget-object v2, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-static {v0, v1, v2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getMethod(Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/lang/String;[Lorg/apache/xmlbeans/impl/jam/JClass;)Lorg/apache/xmlbeans/impl/jam/JMethod;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JMethod;->getReturnType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v0

    const-string v1, "boolean"

    invoke-interface {p1, v1}, Lorg/apache/xmlbeans/impl/jam/JamClassLoader;->loadClass(Ljava/lang/String;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "Method \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, ".preSet"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' should return boolean to be considered for a preSet handler."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    :cond_2
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    const-string v0, "postSet"

    sget-object v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->PARAMTYPES_PREPOST:[Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-static {p1, v0, v1}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->getMethod(Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/lang/String;[Lorg/apache/xmlbeans/impl/jam/JClass;)Lorg/apache/xmlbeans/impl/jam/JMethod;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_postSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    if-nez v0, :cond_3

    if-nez p1, :cond_3

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "prePostSet handler specified \'"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    invoke-interface {v0}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "\' but no preSet"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->SIGNATURE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " or postSet"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " methods found."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->error(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static newInstance(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;Lorg/apache/xmlbeans/impl/config/NameSet;Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;)Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;

    invoke-direct {v1}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;-><init>()V

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->validateClass(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object p1

    iput-object p1, v1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    if-nez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuffer;

    const-string p1, "Handler class \'"

    invoke-direct {p0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-interface {p2}, Lorg/apache/xmlbeans/impl/xb/xmlconfig/Extensionconfig$PrePostSet;->getStaticHandler()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "\' not found on classpath, skip validation."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/xmlbeans/impl/config/BindingConfigImpl;->warning(Ljava/lang/String;Lorg/apache/xmlbeans/XmlObject;)V

    return-object v1

    :cond_1
    invoke-direct {v1, p0, p2}, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->lookAfterPreAndPost(Lorg/apache/xmlbeans/impl/jam/JamClassLoader;Lorg/apache/xmlbeans/XmlObject;)Z

    move-result p0

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {v0, p1}, Lorg/apache/xmlbeans/impl/config/NameSet;->contains(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getHandlerNameForJavaSource()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClass:Lorg/apache/xmlbeans/impl/jam/JClass;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/config/InterfaceExtensionImpl;->emitType(Lorg/apache/xmlbeans/impl/jam/JClass;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNameSet()Lorg/apache/xmlbeans/impl/config/NameSet;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    return-object v0
.end method

.method public getStaticHandler()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_delegateToClassName:Ljava/lang/String;

    return-object v0
.end method

.method public hasNameSetIntersection(Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;)Z
    .locals 2

    sget-object v0, Lorg/apache/xmlbeans/impl/config/NameSet;->EMPTY:Lorg/apache/xmlbeans/impl/config/NameSet;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    iget-object p1, p1, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_xbeanSet:Lorg/apache/xmlbeans/impl/config/NameSet;

    invoke-virtual {v1, p1}, Lorg/apache/xmlbeans/impl/config/NameSet;->intersect(Lorg/apache/xmlbeans/impl/config/NameSet;)Lorg/apache/xmlbeans/impl/config/NameSet;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public hasPostCall()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_postSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPreCall()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/config/PrePostExtensionImpl;->_preSet:Lorg/apache/xmlbeans/impl/jam/JMethod;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
