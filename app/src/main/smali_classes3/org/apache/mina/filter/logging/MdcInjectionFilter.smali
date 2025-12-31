.class public Lorg/apache/mina/filter/logging/MdcInjectionFilter;
.super Lorg/apache/mina/filter/util/CommonEventFilter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;
    }
.end annotation


# static fields
.field private static final CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;


# instance fields
.field private callDepth:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mdcKeys:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter;

    const-string v2, "context"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    const-class v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/util/EnumSet;->clone()Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    return-void
.end method

.method public varargs constructor <init>([Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/filter/util/CommonEventFilter;-><init>()V

    new-instance v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;

    invoke-direct {v0, p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter$1;-><init>(Lorg/apache/mina/filter/logging/MdcInjectionFilter;)V

    iput-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    return-void
.end method

.method private getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V

    :cond_0
    return-object v0
.end method

.method private static getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->CONTEXT_KEY:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p0, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-nez v1, :cond_0

    new-instance v1, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-interface {p0, v0, v1}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method public static getProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_1

    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    invoke-static {p1}, Lorg/slf4j/MDC;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static setProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->removeProperty(Lorg/apache/mina/core/session/IoSession;Ljava/lang/String;)V

    :cond_0
    invoke-static {p0}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1, p2}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "key should not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fillContext(Lorg/apache/mina/core/session/IoSession;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/mina/core/session/IoSession;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->handlerClass:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getHandler()Lorg/apache/mina/core/service/IoHandler;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localAddress:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getTransportMetadata()Lorg/apache/mina/core/service/TransportMetadata;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/mina/core/service/TransportMetadata;->getAddressType()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/net/InetSocketAddress;

    if-ne v0, v1, :cond_6

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v0

    check-cast v0, Ljava/net/InetSocketAddress;

    invoke-interface {p1}, Lorg/apache/mina/core/session/IoSession;->getLocalAddress()Ljava/net/SocketAddress;

    move-result-object p1

    check-cast p1, Ljava/net/InetSocketAddress;

    iget-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remoteIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v2, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->remotePort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localIp:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->mdcKeys:Ljava/util/EnumSet;

    sget-object v1, Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;->localPort:Lorg/apache/mina/filter/logging/MdcInjectionFilter$MdcKey;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-void
.end method

.method public filter(Lorg/apache/mina/core/filterchain/IoFilterEvent;)V
    .locals 6

    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lorg/apache/mina/core/session/IoEvent;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->getAndFillContext(Lorg/apache/mina/core/session/IoSession;)Ljava/util/Map;

    move-result-object v2

    if-nez v1, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v5, v4}, Lorg/slf4j/MDC;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/apache/mina/core/filterchain/IoFilterEvent;->fire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_2
    return-void

    :catchall_0
    move-exception p1

    if-nez v1, :cond_4

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/slf4j/MDC;->remove(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_4

    :cond_4
    iget-object v1, p0, Lorg/apache/mina/filter/logging/MdcInjectionFilter;->callDepth:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :goto_4
    throw p1
.end method
