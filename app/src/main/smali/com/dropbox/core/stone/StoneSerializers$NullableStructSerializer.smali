.class final Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NullableStructSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StructSerializer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final underlying:Lcom/dropbox/core/stone/StructSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/dropbox/core/stone/StructSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/stone/StructSerializer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Z)TT;"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_NULL:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    :goto_0
    return-void
.end method

.method public serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            "Z)V"
        }
    .end annotation

    .line 2
    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeNull()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/dropbox/core/stone/StoneSerializers$NullableStructSerializer;->underlying:Lcom/dropbox/core/stone/StructSerializer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/dropbox/core/stone/StructSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    :goto_0
    return-void
.end method
