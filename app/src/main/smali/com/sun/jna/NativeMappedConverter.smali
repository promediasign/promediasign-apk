.class public Lcom/sun/jna/NativeMappedConverter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/jna/TypeConverter;


# static fields
.field private static final converters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/ref/Reference<",
            "Lcom/sun/jna/NativeMappedConverter;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private final instance:Lcom/sun/jna/NativeMapped;

.field private final nativeType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final type:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/sun/jna/NativeMappedConverter;->converters:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-class v0, Lcom/sun/jna/NativeMapped;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    iput-object p1, p0, Lcom/sun/jna/NativeMappedConverter;->type:Ljava/lang/Class;

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->defaultValue()Lcom/sun/jna/NativeMapped;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/sun/jna/NativeMappedConverter;->instance:Lcom/sun/jna/NativeMapped;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/sun/jna/NativeMapped;->nativeType()Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/sun/jna/NativeMappedConverter;->nativeType:Ljava/lang/Class;

    .line 25
    .line 26
    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string v1, "Type must derive from "

    .line 30
    .line 31
    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/a;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    throw p1
.end method

.method public static getInstance(Ljava/lang/Class;)Lcom/sun/jna/NativeMappedConverter;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/sun/jna/NativeMappedConverter;"
        }
    .end annotation

    sget-object v0, Lcom/sun/jna/NativeMappedConverter;->converters:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/jna/NativeMappedConverter;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    new-instance v1, Lcom/sun/jna/NativeMappedConverter;

    invoke-direct {v1, p0}, Lcom/sun/jna/NativeMappedConverter;-><init>(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v0

    return-object v1

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public defaultValue()Lcom/sun/jna/NativeMapped;
    .locals 2

    iget-object v0, p0, Lcom/sun/jna/NativeMappedConverter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/jna/NativeMappedConverter;->type:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_0
    check-cast v0, Lcom/sun/jna/NativeMapped;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/sun/jna/NativeMappedConverter;->type:Ljava/lang/Class;

    invoke-static {v0}, Lcom/sun/jna/Klass;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/sun/jna/NativeMappedConverter;->instance:Lcom/sun/jna/NativeMapped;

    invoke-interface {v0, p1, p2}, Lcom/sun/jna/NativeMapped;->fromNative(Ljava/lang/Object;Lcom/sun/jna/FromNativeContext;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public nativeType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/jna/NativeMappedConverter;->nativeType:Ljava/lang/Class;

    return-object v0
.end method

.method public toNative(Ljava/lang/Object;Lcom/sun/jna/ToNativeContext;)Ljava/lang/Object;
    .locals 0

    if-nez p1, :cond_1

    const-class p1, Lcom/sun/jna/Pointer;

    iget-object p2, p0, Lcom/sun/jna/NativeMappedConverter;->nativeType:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/jna/NativeMappedConverter;->defaultValue()Lcom/sun/jna/NativeMapped;

    move-result-object p1

    :cond_1
    check-cast p1, Lcom/sun/jna/NativeMapped;

    invoke-interface {p1}, Lcom/sun/jna/NativeMapped;->toNative()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
