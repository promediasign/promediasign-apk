.class public Lorg/apache/xmlbeans/impl/jam/JamUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lorg/apache/xmlbeans/impl/jam/JamUtils;

.field private static SOURCE_POSITION_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/JamUtils;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/JamUtils;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/JamUtils;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/JamUtils;

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/JamUtils$1;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/JamUtils$1;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/JamUtils;->SOURCE_POSITION_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Lorg/apache/xmlbeans/impl/jam/JamUtils;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/JamUtils;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/JamUtils;

    return-object v0
.end method


# virtual methods
.method public getConstructorOn(Lorg/apache/xmlbeans/impl/jam/JConstructor;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 5

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JInvokable;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object p1

    if-eqz p1, :cond_0

    array-length v0, p1

    if-lez v0, :cond_0

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {v3}, Lorg/apache/xmlbeans/impl/jam/JParameter;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v3

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-virtual {p0, v3, v4}, Lorg/apache/xmlbeans/impl/jam/JamUtils;->loadClass(Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null ctor"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFieldOn(Lorg/apache/xmlbeans/impl/jam/JField;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null field"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getMethodOn(Lorg/apache/xmlbeans/impl/jam/JMethod;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 6

    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JInvokable;->getParameters()[Lorg/apache/xmlbeans/impl/jam/JParameter;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    new-array v2, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-interface {v4}, Lorg/apache/xmlbeans/impl/jam/JParameter;->getType()Lorg/apache/xmlbeans/impl/jam/JClass;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lorg/apache/xmlbeans/impl/jam/JamUtils;->loadClass(Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null method"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "null class"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public loadClass(Lorg/apache/xmlbeans/impl/jam/JClass;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 0

    invoke-interface {p1}, Lorg/apache/xmlbeans/impl/jam/JElement;->getQualifiedName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public placeInSourceOrder([Lorg/apache/xmlbeans/impl/jam/JElement;)V
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/JamUtils;->SOURCE_POSITION_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "null elements"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
