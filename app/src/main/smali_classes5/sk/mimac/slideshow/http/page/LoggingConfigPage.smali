.class public Lsk/mimac/slideshow/http/page/LoggingConfigPage;
.super Lsk/mimac/slideshow/http/page/AbstractTemplatePage;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfi/iki/elonen/NanoHTTPD$Method;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;-><init>(Lfi/iki/elonen/NanoHTTPD$Method;Ljava/util/Map;)V

    return-void
.end method

.method public static synthetic a(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lsk/mimac/slideshow/http/page/LoggingConfigPage;->lambda$getLoggers$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I

    move-result p0

    return p0
.end method

.method private getLoggers()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Lch/qos/logback/classic/Level;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lorg/slf4j/LoggerFactory;->getILoggerFactory()Lorg/slf4j/ILoggerFactory;

    move-result-object v1

    check-cast v1, Lch/qos/logback/classic/LoggerContext;

    invoke-virtual {v1}, Lch/qos/logback/classic/LoggerContext;->getLoggerList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/Logger;

    invoke-virtual {v2}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v3, Lsk/mimac/slideshow/utils/Couple;

    invoke-virtual {v2}, Lch/qos/logback/classic/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lch/qos/logback/classic/Logger;->getLevel()Lch/qos/logback/classic/Level;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v1, LE/a;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, LE/a;-><init>(I)V

    invoke-static {v0, v1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0
.end method

.method private static synthetic lambda$getLoggers$0(Lsk/mimac/slideshow/utils/Couple;Lsk/mimac/slideshow/utils/Couple;)I
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "ROOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1}, Lsk/mimac/slideshow/utils/Couple;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private processPost()V
    .locals 4

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "level-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;

    move-result-object v1

    :goto_1
    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v2

    check-cast v2, Lch/qos/logback/classic/Logger;

    invoke-virtual {v2, v1}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v1, "new-logger"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->params:Ljava/util/Map;

    const-string v2, "new-level"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lch/qos/logback/classic/Level;->toLevel(Ljava/lang/String;)Lch/qos/logback/classic/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/classic/Logger;->setLevel(Lch/qos/logback/classic/Level;)V

    :cond_3
    const-string v0, "Configuration was successfully saved"

    iput-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->resultMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTemplateName()Ljava/lang/String;
    .locals 1

    const-string v0, "pages/logging_config"

    return-object v0
.end method

.method public process()V
    .locals 9

    invoke-virtual {p0}, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->isPost()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/LoggingConfigPage;->processPost()V

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v1, "loggers"

    invoke-direct {p0}, Lsk/mimac/slideshow/http/page/LoggingConfigPage;->getLoggers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lsk/mimac/slideshow/http/page/AbstractTemplatePage;->model:Ljava/util/Map;

    const-string v7, "TRACE"

    const-string v8, "ALL"

    const-string v1, ""

    const-string v2, "OFF"

    const-string v3, "ERROR"

    const-string v4, "WARN"

    const-string v5, "INFO"

    const-string v6, "DEBUG"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, "levels"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
