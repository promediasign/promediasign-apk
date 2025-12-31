.class final Lcom/dropbox/core/json/JsonReader$5;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/json/JsonReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/json/JsonReader;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;
    .locals 5

    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->readUnsignedLong(Lcom/fasterxml/jackson/core/JsonParser;)J

    move-result-wide v0

    const-wide v2, 0x100000000L

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v2, Lcom/dropbox/core/json/JsonReadException;

    const-string v3, "expecting a 32-bit unsigned integer, got: "

    .line 1
    invoke-static {v3, v0, v1}, Lorg/apache/ftpserver/main/a;->h(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    invoke-direct {v2, v0, p1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v2
.end method

.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 7
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader$5;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
