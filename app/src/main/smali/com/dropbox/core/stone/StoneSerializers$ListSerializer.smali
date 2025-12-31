.class final Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ListSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StoneSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StoneSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StoneSerializer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectStartArray(Lcom/fasterxml/jackson/core/JsonParser;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/core/JsonToken;->END_ARRAY:Lcom/fasterxml/jackson/core/JsonToken;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v1, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->expectEndArray(Lcom/fasterxml/jackson/core/JsonParser;)V

    return-object v0
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/util/List;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartArray(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/stone/StoneSerializers$ListSerializer;->underlying:Lcom/dropbox/core/stone/StoneSerializer;

    invoke-virtual {v1, v0, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndArray()V

    return-void
.end method
