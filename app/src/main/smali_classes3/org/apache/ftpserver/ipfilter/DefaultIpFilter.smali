.class public Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;
.super Ljava/util/concurrent/CopyOnWriteArraySet;
.source "SourceFile"

# interfaces
.implements Lorg/apache/ftpserver/ipfilter/IpFilter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/CopyOnWriteArraySet<",
        "Lorg/apache/mina/filter/firewall/Subnet;",
        ">;",
        "Lorg/apache/ftpserver/ipfilter/IpFilter;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43d2709ebb57872fL


# instance fields
.field LOGGER:Lorg/slf4j/Logger;

.field private type:Lorg/apache/ftpserver/ipfilter/IpFilterType;


# direct methods
.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;-><init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/util/Collection;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    const-class v0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    if-eqz p2, :cond_1

    const-string v0, "[\\s,]+"

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p0, v2}, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->add(Ljava/lang/String;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {p2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Created DefaultIpFilter of type {} with the subnets {}"

    invoke-interface {p2, v0, p1, p0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Lorg/apache/ftpserver/ipfilter/IpFilterType;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ftpserver/ipfilter/IpFilterType;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/mina/filter/firewall/Subnet;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    const-class p2, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;

    invoke-static {p2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-void
.end method


# virtual methods
.method public accept(Ljava/net/InetAddress;)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter$1;->$SwitchMap$org$apache$ftpserver$ipfilter$IpFilterType:[I

    iget-object v4, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    if-eq v3, v1, :cond_7

    if-ne v3, v0, :cond_6

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Allowing connection from {} because blacklist is empty"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/firewall/Subnet;

    invoke-virtual {v4, p1}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v3, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Denying connection from {} because it matches with the blacklist subnet {}"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-interface {v3, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    return v2

    :cond_4
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Allowing connection from {} because it does not match any of the blacklist subnets"

    new-array v4, v1, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-interface {v0, v3, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return v1

    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown or unimplemented filter type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/mina/filter/firewall/Subnet;

    invoke-virtual {v4, p1}, Lorg/apache/mina/filter/firewall/Subnet;->inSubnet(Ljava/net/InetAddress;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v3, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v5, "Allowing connection from {} because it matches with the whitelist subnet {}"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object v4, v0, v1

    invoke-interface {v3, v5, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return v1

    :cond_a
    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "Denying connection from {} because it does not match any of the whitelist subnets"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-interface {v0, v3, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_b
    return v2
.end method

.method public add(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    aget-object v2, p1, v3

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {v0, v2, p1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Lorg/apache/mina/filter/firewall/Subnet;

    aget-object p1, p1, v3

    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    const/16 v1, 0x20

    invoke-direct {v0, p1, v1}, Lorg/apache/mina/filter/firewall/Subnet;-><init>(Ljava/net/InetAddress;I)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid IP Address or Subnet: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getType()Lorg/apache/ftpserver/ipfilter/IpFilterType;
    .locals 1

    iget-object v0, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-object v0
.end method

.method public setType(Lorg/apache/ftpserver/ipfilter/IpFilterType;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/ftpserver/ipfilter/DefaultIpFilter;->type:Lorg/apache/ftpserver/ipfilter/IpFilterType;

    return-void
.end method
