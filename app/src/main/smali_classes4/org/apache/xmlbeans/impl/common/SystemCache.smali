.class public Lorg/apache/xmlbeans/impl/common/SystemCache;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;


# instance fields
.field private tl_saxLoaders:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    const-string v0, "Could not instantiate class "

    .line 2
    .line 3
    const-string v1, "Value for system property \"xmlbean.systemcacheimpl\" points to a class ("

    .line 4
    .line 5
    new-instance v2, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 6
    .line 7
    invoke-direct {v2}, Lorg/apache/xmlbeans/impl/common/SystemCache;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v2, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 11
    .line 12
    const-string v2, "xmlbean.systemcacheimpl"

    .line 13
    .line 14
    invoke-static {v2}, Lorg/apache/xmlbeans/SystemProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    :try_start_0
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    instance-of v4, v3, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    goto :goto_3

    .line 33
    :cond_0
    new-instance v3, Ljava/lang/ClassCastException;

    .line 34
    .line 35
    new-instance v4, Ljava/lang/StringBuffer;

    .line 36
    .line 37
    invoke-direct {v4, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 41
    .line 42
    .line 43
    const-string v1, ") which does not derive from SystemCache"

    .line 44
    .line 45
    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-direct {v3, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :catch_0
    move-exception v1

    .line 57
    goto :goto_0

    .line 58
    :catch_1
    move-exception v1

    .line 59
    goto :goto_1

    .line 60
    :catch_2
    move-exception v0

    .line 61
    goto :goto_2

    .line 62
    :goto_0
    new-instance v3, Ljava/lang/RuntimeException;

    .line 63
    .line 64
    const-string v4, " as specified by \"xmlbean.systemcacheimpl\". A public empty constructor may be missing."

    .line 65
    .line 66
    invoke-static {v0, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 71
    .line 72
    .line 73
    throw v3

    .line 74
    :goto_1
    new-instance v3, Ljava/lang/RuntimeException;

    .line 75
    .line 76
    const-string v4, " as specified by \"xmlbean.systemcacheimpl\". An empty constructor may be missing."

    .line 77
    .line 78
    invoke-static {v0, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {v3, v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 83
    .line 84
    .line 85
    throw v3

    .line 86
    :goto_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 87
    .line 88
    const-string v3, "Cache class "

    .line 89
    .line 90
    const-string v4, " specified by \"xmlbean.systemcacheimpl\" was not found."

    .line 91
    .line 92
    invoke-static {v3, v2, v4}, Lch/qos/logback/core/joran/util/a;->C(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    .line 98
    .line 99
    throw v1

    .line 100
    :cond_1
    const/4 v3, 0x0

    .line 101
    :goto_3
    if-eqz v3, :cond_2

    .line 102
    .line 103
    check-cast v3, Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 104
    .line 105
    sput-object v3, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    .line 106
    .line 107
    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static final get()Lorg/apache/xmlbeans/impl/common/SystemCache;
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;

    return-object v0
.end method

.method public static final declared-synchronized set(Lorg/apache/xmlbeans/impl/common/SystemCache;)V
    .locals 1

    const-class v0, Lorg/apache/xmlbeans/impl/common/SystemCache;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->INSTANCE:Lorg/apache/xmlbeans/impl/common/SystemCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public addToTypeLoaderCache(Lorg/apache/xmlbeans/SchemaTypeLoader;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public getFromTypeLoaderCache(Ljava/lang/ClassLoader;)Lorg/apache/xmlbeans/SchemaTypeLoader;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSaxLoader()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setSaxLoader(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/common/SystemCache;->tl_saxLoaders:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
