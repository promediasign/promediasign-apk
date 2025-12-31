.class public Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANCE:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;

.field static synthetic class$com$sun$javadoc$RootDoc:Ljava/lang/Class;

.field static synthetic class$org$apache$xmlbeans$impl$jam$internal$javadoc$JavadocResults:Ljava/lang/Class;


# instance fields
.field private mRootsPerThread:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;

    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->mRootsPerThread:Ljava/lang/ThreadLocal;

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

.method private static getHolder()Ljava/lang/Object;
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$org$apache$xmlbeans$impl$jam$internal$javadoc$JavadocResults:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.impl.jam.internal.javadoc.JavadocResults"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$org$apache$xmlbeans$impl$jam$internal$javadoc$JavadocResults:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->INSTANCE:Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;

    return-object v0
.end method

.method public static getRoot()Lcom/sun/javadoc/RootDoc;
    .locals 4

    :try_start_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->getHolder()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "_getRoot"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/javadoc/RootDoc;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static prepare()V
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$org$apache$xmlbeans$impl$jam$internal$javadoc$JavadocResults:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.xmlbeans.impl.jam.internal.javadoc.JavadocResults"

    invoke-static {v1}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$org$apache$xmlbeans$impl$jam$internal$javadoc$JavadocResults:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setContextClassLoader(Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public static setRoot(Lcom/sun/javadoc/RootDoc;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->getHolder()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "_setRoot"

    sget-object v5, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$com$sun$javadoc$RootDoc:Ljava/lang/Class;

    if-nez v5, :cond_0

    const-string v5, "com.sun.javadoc.RootDoc"

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->class$com$sun$javadoc$RootDoc:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    new-array v6, v1, [Ljava/lang/Class;

    aput-object v5, v6, v0

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v0

    invoke-virtual {v3, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method


# virtual methods
.method public _getRoot()Lcom/sun/javadoc/RootDoc;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->mRootsPerThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/javadoc/RootDoc;

    return-object v0
.end method

.method public _setRoot(Lcom/sun/javadoc/RootDoc;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/jam/internal/javadoc/JavadocResults;->mRootsPerThread:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
