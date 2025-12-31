.class public Lorg/apache/velocity/Template;
.super Lorg/apache/velocity/runtime/resource/Resource;
.source "SourceFile"


# instance fields
.field private errorCondition:Lorg/apache/velocity/exception/VelocityException;

.field private macros:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private provideScope:Z

.field private scopeName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lorg/apache/velocity/runtime/resource/Resource;-><init>()V

    const-string v0, "template"

    iput-object v0, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/velocity/Template;->provideScope:Z

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x11

    const v2, 0x3f333333    # 0.7f

    invoke-direct {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Lorg/apache/velocity/Template;->macros:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/apache/velocity/runtime/resource/Resource;->setType(I)V

    return-void
.end method


# virtual methods
.method public getMacros()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/velocity/Template;->macros:Ljava/util/Map;

    return-object v0
.end method

.method public initDocument()V
    .locals 5

    const-string v0, ".provide.scope.control"

    new-instance v1, Lorg/apache/velocity/context/InternalContextAdapterImpl;

    new-instance v2, Lorg/apache/velocity/VelocityContext;

    invoke-direct {v2}, Lorg/apache/velocity/VelocityContext;-><init>()V

    invoke-direct {v1, v2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;-><init>(Lorg/apache/velocity/context/Context;)V

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->pushCurrentTemplateName(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    check-cast v3, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    iget-object v4, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-virtual {v3, v1, v4}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->init(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    iget-boolean v4, p0, Lorg/apache/velocity/Template;->provideScope:Z

    invoke-interface {v3, v0, v4}, Lorg/apache/velocity/runtime/RuntimeServices;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lorg/apache/velocity/Template;->provideScope:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    invoke-virtual {v1, v2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    invoke-virtual {v1, v2}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    throw v0
.end method

.method public merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/velocity/Template;->merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/util/List;)V

    return-void
.end method

.method public merge(Lorg/apache/velocity/context/Context;Ljava/io/Writer;Ljava/util/List;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    if-nez v0, :cond_b

    iget-object v0, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    if-eqz v0, :cond_a

    new-instance v0, Lorg/apache/velocity/context/InternalContextAdapterImpl;

    invoke-direct {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;-><init>(Lorg/apache/velocity/context/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setMacroLibraries(Ljava/util/List;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_0
    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v2, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getTemplate(Ljava/lang/String;)Lorg/apache/velocity/Template;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/apache/velocity/exception/ParseErrorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_3

    :goto_1
    new-instance p2, Ljava/lang/RuntimeException;

    const-string p3, "parse failed in template  "

    const-string v0, "."

    .line 2
    invoke-static {p3, v1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 3
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :goto_2
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string p3, "parser"

    invoke-interface {p2, p3}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/velocity/exception/ParseErrorException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p3, v0, v1

    const/4 p3, 0x2

    aput-object p1, v0, p3

    const-string p3, "syntax error in template {}: {}"

    invoke-interface {p2, p3, v0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    throw p1

    :goto_3
    iget-object p2, p0, Lorg/apache/velocity/runtime/resource/Resource;->log:Lorg/slf4j/Logger;

    const-string p3, "cannot find template {}"

    invoke-interface {p2, p3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    throw p1

    :cond_0
    iget-boolean p1, p0, Lorg/apache/velocity/Template;->provideScope:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    new-instance p3, Lorg/apache/velocity/runtime/directive/Scope;

    iget-object v1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p3, p0, v1}, Lorg/apache/velocity/runtime/directive/Scope;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, p3}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    iget-object p3, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-virtual {v0, p3}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->pushCurrentTemplateName(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    iget-object p3, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    check-cast p3, Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    invoke-virtual {p3, v0, p2}, Lorg/apache/velocity/runtime/parser/node/SimpleNode;->render(Lorg/apache/velocity/context/InternalContextAdapter;Ljava/io/Writer;)Z
    :try_end_1
    .catch Lorg/apache/velocity/runtime/directive/StopCommand; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    iget-boolean p1, p0, Lorg/apache/velocity/Template;->provideScope:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p2

    if-eqz p2, :cond_2

    :goto_4
    iget-object p2, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p1

    :goto_5
    invoke-virtual {v0, p2, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    :cond_2
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    :goto_6
    iget-object p2, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p1

    goto :goto_5

    :cond_3
    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_9

    :catchall_0
    move-exception p2

    goto :goto_a

    :catch_3
    move-exception p2

    goto :goto_7

    :catch_4
    move-exception p2

    goto :goto_8

    :goto_7
    :try_start_2
    new-instance p3, Lorg/apache/velocity/exception/VelocityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Error rendering template \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p3, v1, p2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :goto_8
    invoke-virtual {p2, p0}, Lorg/apache/velocity/runtime/directive/StopCommand;->isFor(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    const-string v1, "rendering"

    invoke-interface {p3, v1}, Lorg/apache/velocity/runtime/RuntimeServices;->getLog(Ljava/lang/String;)Lorg/slf4j/Logger;

    move-result-object p3

    invoke-virtual {p2}, Lorg/apache/velocity/runtime/directive/StopCommand;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v0}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    iget-boolean p1, p0, Lorg/apache/velocity/Template;->provideScope:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    goto :goto_6

    :cond_5
    :goto_9
    return-void

    :cond_6
    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    invoke-virtual {v0}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->popCurrentTemplateName()V

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->setCurrentResource(Lorg/apache/velocity/runtime/resource/Resource;)V

    iget-boolean p1, p0, Lorg/apache/velocity/Template;->provideScope:Z

    if-eqz p1, :cond_9

    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Lorg/apache/velocity/runtime/directive/Scope;

    if-eqz p3, :cond_9

    check-cast p1, Lorg/apache/velocity/runtime/directive/Scope;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p3

    if-nez p3, :cond_8

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getReplaced()Ljava/lang/Object;

    move-result-object p1

    :goto_b
    invoke-virtual {v0, p3, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_7
    iget-object p1, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lorg/apache/velocity/context/InternalContextAdapterImpl;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_c

    :cond_8
    iget-object p3, p0, Lorg/apache/velocity/Template;->scopeName:Ljava/lang/String;

    invoke-virtual {p1}, Lorg/apache/velocity/runtime/directive/Scope;->getParent()Lorg/apache/velocity/runtime/directive/Scope;

    move-result-object p1

    goto :goto_b

    :cond_9
    :goto_c
    throw p2

    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "Template merging failed. The document is null, most likely due to a parsing error."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    throw v0
.end method

.method public process()Z
    .locals 5

    const-string v0, "Exception thrown processing Template "

    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    iput-object v1, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    :try_start_0
    iget-object v1, p0, Lorg/apache/velocity/runtime/resource/Resource;->resourceLoader:Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/resource/Resource;->getEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/velocity/runtime/resource/loader/ResourceLoader;->getResourceReader(Ljava/lang/String;Ljava/lang/String;)Ljava/io/Reader;

    move-result-object v1
    :try_end_0
    .catch Lorg/apache/velocity/exception/ResourceNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    if-eqz v1, :cond_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->rsvc:Lorg/apache/velocity/runtime/RuntimeServices;

    invoke-interface {v3, v2, p0}, Lorg/apache/velocity/runtime/RuntimeServices;->parse(Ljava/io/Reader;Lorg/apache/velocity/Template;)Lorg/apache/velocity/runtime/parser/node/SimpleNode;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->data:Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/velocity/Template;->initDocument()V
    :try_end_1
    .catch Lorg/apache/velocity/runtime/parser/ParseException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/velocity/exception/TemplateInitException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    if-eqz v1, :cond_0

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v1, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v1, v0}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v2

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_3

    :goto_1
    :try_start_3
    new-instance v3, Lorg/apache/velocity/exception/VelocityException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/apache/velocity/runtime/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0, v2}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    throw v3

    :goto_2
    new-instance v2, Lorg/apache/velocity/exception/ParseErrorException;

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Lorg/apache/velocity/exception/VelocityException;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    throw v2

    :goto_3
    new-instance v2, Lorg/apache/velocity/exception/ParseErrorException;

    iget-object v3, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-direct {v2, v0, v3}, Lorg/apache/velocity/exception/ParseErrorException;-><init>(Lorg/apache/velocity/runtime/parser/ParseException;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/io/Reader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_5

    :catch_4
    move-exception v1

    iget-object v2, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    if-nez v2, :cond_1

    new-instance v0, Lorg/apache/velocity/exception/VelocityException;

    invoke-direct {v0, v1}, Lorg/apache/velocity/exception/VelocityException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_5
    throw v0

    :cond_2
    new-instance v0, Lorg/apache/velocity/exception/ResourceNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown resource error for resource "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/velocity/runtime/resource/Resource;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/velocity/exception/ResourceNotFoundException;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    throw v0

    :catch_5
    move-exception v0

    iput-object v0, p0, Lorg/apache/velocity/Template;->errorCondition:Lorg/apache/velocity/exception/VelocityException;

    throw v0
.end method
