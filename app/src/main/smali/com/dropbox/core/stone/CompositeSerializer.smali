.class public abstract Lcom/dropbox/core/stone/CompositeSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/stone/StoneSerializer<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method

.method public static hasTag(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    const-string v0, ".tag"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/dropbox/core/stone/CompositeSerializer;->hasTag(Lcom/fasterxml/jackson/core/JsonParser;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    invoke-static {p0}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0
.end method


# virtual methods
.method public writeTag(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, ".tag"

    invoke-virtual {p2, v0, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStringField(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
