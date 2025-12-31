.class public final Lorg/apache/xmlbeans/impl/store/PathDelegate;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;
    }
.end annotation


# static fields
.field private static _constructors:Ljava/util/HashMap;

.field static synthetic class$java$lang$String:Ljava/lang/Class;

.field static synthetic class$java$util$Map:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/xmlbeans/impl/store/PathDelegate;->_constructors:Ljava/util/HashMap;

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

.method public static declared-synchronized createInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;
    .locals 4

    const-class v0, Lorg/apache/xmlbeans/impl/store/PathDelegate;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/xmlbeans/impl/store/PathDelegate;->_constructors:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->init(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/xmlbeans/impl/store/PathDelegate;->_constructors:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :try_start_1
    sget-object v1, Lorg/apache/xmlbeans/impl/store/PathDelegate;->_constructors:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Constructor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "$xmlbeans!default_uri"

    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "$xmlbeans!default_uri"

    invoke-interface {p3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :cond_2
    :goto_1
    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    const/4 p1, 0x2

    aput-object p3, v2, p1

    const/4 p1, 0x3

    aput-object v1, v2, p1

    invoke-virtual {p0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/xmlbeans/impl/store/PathDelegate$SelectPathInterface;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_2
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized init(Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-class v2, Lorg/apache/xmlbeans/impl/store/PathDelegate;

    monitor-enter v2

    if-nez p0, :cond_0

    :try_start_0
    const-string p0, "org.apache.xmlbeans.impl.xpath.saxon.XBeansXPath"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_0
    :goto_0
    const/4 v3, 0x0

    :try_start_1
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    goto :goto_1

    :catch_0
    nop

    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_5

    :try_start_2
    sget-object v4, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    if-nez v4, :cond_1

    const-string v4, "java.lang.String"

    invoke-static {v4}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    sput-object v4, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    goto :goto_2

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_2
    sget-object v5, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    if-nez v5, :cond_2

    const-string v5, "java.lang.String"

    invoke-static {v5}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    sput-object v5, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    :cond_2
    sget-object v6, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$util$Map:Ljava/lang/Class;

    if-nez v6, :cond_3

    const-string v6, "java.util.Map"

    invoke-static {v6}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    sput-object v6, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$util$Map:Ljava/lang/Class;

    :cond_3
    sget-object v7, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    if-nez v7, :cond_4

    const-string v7, "java.lang.String"

    invoke-static {v7}, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    sput-object v7, Lorg/apache/xmlbeans/impl/store/PathDelegate;->class$java$lang$String:Ljava/lang/Class;

    :cond_4
    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Class;

    aput-object v4, v8, v1

    aput-object v5, v8, v0

    const/4 v0, 0x2

    aput-object v6, v8, v0

    const/4 v0, 0x3

    aput-object v7, v8, v0

    invoke-virtual {v3, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sget-object v1, Lorg/apache/xmlbeans/impl/store/PathDelegate;->_constructors:Ljava/util/HashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5

    :goto_3
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    monitor-exit v2

    throw p0

    :cond_5
    :goto_5
    monitor-exit v2

    return-void
.end method
