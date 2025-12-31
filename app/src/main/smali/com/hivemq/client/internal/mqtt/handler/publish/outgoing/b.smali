.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping;->a(Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttTopicAliasAutoMapping$Entry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
