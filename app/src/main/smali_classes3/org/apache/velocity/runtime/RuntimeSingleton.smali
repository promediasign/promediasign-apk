.class public Lorg/apache/velocity/runtime/RuntimeSingleton;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/velocity/runtime/RuntimeConstants;


# static fields
.field private static ri:Lorg/apache/velocity/runtime/RuntimeInstance;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-direct {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;-><init>()V

    sput-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->addProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/velocity/runtime/parser/node/Node;",
            "Ljava/util/List<",
            "Lorg/apache/velocity/runtime/directive/Macro$MacroArg;",
            ">;",
            "Lorg/apache/velocity/Template;",
            ")Z"
        }
    .end annotation

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/velocity/runtime/RuntimeInstance;->addVelocimacro(Ljava/lang/String;Lorg/apache/velocity/runtime/parser/node/Node;Ljava/util/List;Lorg/apache/velocity/Template;)Z

    move-result p0

    return p0
.end method

.method public static clearProperty(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->clearProperty(Ljava/lang/String;)V

    return-void
.end method

.method public static getApplicationAttribute(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getApplicationAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static getConfiguration()Lorg/apache/velocity/util/ExtProperties;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getConfiguration()Lorg/apache/velocity/util/ExtProperties;

    move-result-object v0

    return-object v0
.end method

.method public static getContent(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getContent(Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;

    move-result-object p0

    return-object p0
.end method

.method public static getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getContent(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/runtime/resource/ContentResource;

    move-result-object p0

    return-object p0
.end method

.method public static getInt(Ljava/lang/String;)I
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getLoaderNameForResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLog()Lorg/slf4j/Logger;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getLog()Lorg/slf4j/Logger;

    move-result-object v0

    return-object v0
.end method

.method public static getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getRuntimeServices()Lorg/apache/velocity/runtime/RuntimeServices;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    return-object v0
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p0

    return-object p0
.end method

.method public static getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->getTemplate(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object p0

    return-object p0
.end method

.method public static getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getUberspect()Lorg/apache/velocity/util/introspection/Uberspect;

    move-result-object v0

    return-object v0
.end method

.method public static getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/velocity/runtime/RuntimeInstance;->getVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/directive/Directive;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized init()V
    .locals 2

    .line 1
    const-class v0, Lorg/apache/velocity/runtime/RuntimeSingleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static init(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->init(Ljava/lang/String;)V

    return-void
.end method

.method public static init(Ljava/util/Properties;)V
    .locals 1

    .line 3
    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->init(Ljava/util/Properties;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->isVelocimacro(Ljava/lang/String;Lorg/apache/velocity/Template;)Z

    move-result p0

    return p0
.end method

.method public static loadDirective(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->loadDirective(Ljava/lang/String;)V

    return-void
.end method

.method public static parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    move-result-object p0

    return-object p0
.end method

.method public static removeDirective(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->removeDirective(Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized reset()V
    .locals 2

    const-class v0, Lorg/apache/velocity/runtime/RuntimeSingleton;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v1}, Lorg/apache/velocity/runtime/RuntimeInstance;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->setConfiguration(Lorg/apache/velocity/util/ExtProperties;)V

    return-void
.end method

.method public static setProperties(Ljava/util/Properties;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0}, Lorg/apache/velocity/runtime/RuntimeInstance;->setProperties(Ljava/util/Properties;)V

    return-void
.end method

.method public static setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0, p0, p1}, Lorg/apache/velocity/runtime/RuntimeInstance;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;
    .locals 1

    sget-object v0, Lorg/apache/velocity/runtime/RuntimeSingleton;->ri:Lorg/apache/velocity/runtime/RuntimeInstance;

    invoke-virtual {v0}, Lorg/apache/velocity/runtime/RuntimeInstance;->getApplicationEventCartridge()Lorg/apache/velocity/app/event/EventCartridge;

    move-result-object v0

    return-object v0
.end method
