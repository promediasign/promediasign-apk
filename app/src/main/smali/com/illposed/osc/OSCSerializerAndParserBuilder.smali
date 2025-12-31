.class public Lcom/illposed/osc/OSCSerializerAndParserBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final identifierToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private usingDefaultHandlers:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->properties:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->identifierToType:Ljava/util/Map;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->usingDefaultHandlers:Z

    return-void
.end method


# virtual methods
.method public buildParser()Lcom/illposed/osc/OSCParser;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->identifierToType:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->getProperties()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->identifierToType:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-interface {v4}, Lcom/illposed/osc/argument/ArgumentHandler;->clone()Lcom/illposed/osc/argument/ArgumentHandler;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v4, v1}, Lcom/illposed/osc/argument/ArgumentHandler;->setProperties(Ljava/util/Map;)V

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Does not support cloning: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    iget-boolean v2, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->usingDefaultHandlers:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/illposed/osc/argument/handler/Activator;->createParserTypes()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_1
    new-instance v2, Lcom/illposed/osc/OSCParser;

    invoke-direct {v2, v0, v1}, Lcom/illposed/osc/OSCParser;-><init>(Ljava/util/Map;Ljava/util/Map;)V

    return-object v2
.end method

.method public buildSerializer(Lcom/illposed/osc/BytesReceiver;)Lcom/illposed/osc/OSCSerializer;
    .locals 4

    invoke-virtual {p0}, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->getProperties()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->identifierToType:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v2, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->identifierToType:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/illposed/osc/argument/ArgumentHandler;

    :try_start_0
    invoke-interface {v3}, Lcom/illposed/osc/argument/ArgumentHandler;->clone()Lcom/illposed/osc/argument/ArgumentHandler;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v3, v0}, Lcom/illposed/osc/argument/ArgumentHandler;->setProperties(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Does not support cloning: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    iget-boolean v2, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->usingDefaultHandlers:Z

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/illposed/osc/argument/handler/Activator;->createSerializerTypes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    new-instance v2, Lcom/illposed/osc/OSCSerializer;

    invoke-direct {v2, v1, v0, p1}, Lcom/illposed/osc/OSCSerializer;-><init>(Ljava/util/List;Ljava/util/Map;Lcom/illposed/osc/BytesReceiver;)V

    return-object v2
.end method

.method public getProperties()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/illposed/osc/OSCSerializerAndParserBuilder;->properties:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
