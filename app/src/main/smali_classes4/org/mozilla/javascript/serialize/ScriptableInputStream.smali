.class public Lorg/mozilla/javascript/serialize/ScriptableInputStream;
.super Ljava/io/ObjectInputStream;
.source "SourceFile"


# instance fields
.field private classLoader:Ljava/lang/ClassLoader;

.field private scope:Lorg/mozilla/javascript/Scriptable;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lorg/mozilla/javascript/Scriptable;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object p2, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->scope:Lorg/mozilla/javascript/Scriptable;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/io/ObjectInputStream;->enableResolveObject(Z)Z

    invoke-static {}, Lorg/mozilla/javascript/Context;->getCurrentContext()Lorg/mozilla/javascript/Context;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/mozilla/javascript/Context;->getApplicationClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iput-object p1, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->classLoader:Ljava/lang/ClassLoader;

    :cond_0
    return-void
.end method


# virtual methods
.method public resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->classLoader:Ljava/lang/ClassLoader;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    :cond_0
    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public resolveObject(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/mozilla/javascript/serialize/ScriptableOutputStream$PendingLookup;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iget-object v0, p0, Lorg/mozilla/javascript/serialize/ScriptableInputStream;->scope:Lorg/mozilla/javascript/Scriptable;

    .line 12
    .line 13
    invoke-static {v0, p1}, Lorg/mozilla/javascript/serialize/ScriptableOutputStream;->lookupQualifiedName(Lorg/mozilla/javascript/Scriptable;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v1, Lorg/mozilla/javascript/Scriptable;->NOT_FOUND:Ljava/lang/Object;

    .line 18
    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    move-object p1, v0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v1, "Object "

    .line 26
    .line 27
    const-string v2, " not found upon deserialization."

    .line 28
    .line 29
    invoke-static {v1, p1, v2}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    throw v0

    .line 37
    :cond_1
    instance-of v0, p1, Lorg/mozilla/javascript/UniqueTag;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    check-cast p1, Lorg/mozilla/javascript/UniqueTag;

    .line 42
    .line 43
    invoke-virtual {p1}, Lorg/mozilla/javascript/UniqueTag;->readResolve()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    instance-of v0, p1, Lorg/mozilla/javascript/Undefined;

    .line 49
    .line 50
    if-eqz v0, :cond_3

    .line 51
    .line 52
    check-cast p1, Lorg/mozilla/javascript/Undefined;

    .line 53
    .line 54
    invoke-virtual {p1}, Lorg/mozilla/javascript/Undefined;->readResolve()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    :cond_3
    :goto_0
    return-object p1
.end method
