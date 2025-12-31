.class public final Lcom/zaxxer/hikari/pool/HikariMBeanElf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/zaxxer/hikari/pool/HikariMBeanElf;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->LOGGER:Lorg/slf4j/Logger;

    new-instance v0, Lcom/zaxxer/hikari/pool/HikariMBeanElf;

    invoke-direct {v0}, Lcom/zaxxer/hikari/pool/HikariMBeanElf;-><init>()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerMBeans(Lcom/zaxxer/hikari/HikariConfig;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 6

    const-string v0, ")"

    const-string v1, "com.zaxxer.hikari:type=Pool ("

    const-string v2, "com.zaxxer.hikari:type=PoolConfig ("

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isRegisterMbeans()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v3

    new-instance v4, Ljavax/management/ObjectName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljavax/management/ObjectName;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v3, p0, v4}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    invoke-interface {v3, p1, v2}, Ljavax/management/MBeanServer;->registerMBean(Ljava/lang/Object;Ljavax/management/ObjectName;)Ljavax/management/ObjectInstance;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->LOGGER:Lorg/slf4j/Logger;

    const-string p1, "You cannot use the same pool name for separate pool instances."

    invoke-interface {p0, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    sget-object p1, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Unable to register management beans."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static unregisterMBeans(Lcom/zaxxer/hikari/HikariConfig;Lcom/zaxxer/hikari/pool/BaseHikariPool;)V
    .locals 5

    const-string p1, ")"

    const-string v0, "com.zaxxer.hikari:type=Pool ("

    const-string v1, "com.zaxxer.hikari:type=PoolConfig ("

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->isRegisterMbeans()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getPlatformMBeanServer()Ljavax/management/MBeanServer;

    move-result-object v2

    new-instance v3, Ljavax/management/ObjectName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/management/ObjectName;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/zaxxer/hikari/AbstractHikariConfig;->getPoolName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljavax/management/ObjectName;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljavax/management/MBeanServer;->isRegistered(Ljavax/management/ObjectName;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {v2, v3}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V

    invoke-interface {v2, v1}, Ljavax/management/MBeanServer;->unregisterMBean(Ljavax/management/ObjectName;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object p1, Lcom/zaxxer/hikari/pool/HikariMBeanElf;->LOGGER:Lorg/slf4j/Logger;

    const-string v0, "Unable to unregister management beans."

    invoke-interface {p1, v0, p0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
