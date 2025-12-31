.class final Lcom/dropbox/core/DbxAppInfo$1;
.super Lcom/dropbox/core/json/JsonReader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/DbxAppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/json/JsonReader<",
        "Lcom/dropbox/core/DbxAppInfo;",
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
.method public final read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAppInfo;
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_3

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    :try_start_0
    const-string v5, "key"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/dropbox/core/DbxAppInfo;->KeyReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v4, v1}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    const-string v5, "secret"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget-object v5, Lcom/dropbox/core/DbxAppInfo;->SecretReader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v4, v3}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v5, "host"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v5, Lcom/dropbox/core/DbxHost;->Reader:Lcom/dropbox/core/json/JsonReader;

    invoke-virtual {v5, p1, v4, v2}, Lcom/dropbox/core/json/JsonReader;->readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dropbox/core/DbxHost;

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    :try_end_0
    .catch Lcom/dropbox/core/json/JsonReadException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :goto_1
    invoke-virtual {p1, v4}, Lcom/dropbox/core/json/JsonReadException;->addFieldContext(Ljava/lang/String;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p1

    throw p1

    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/json/JsonReader;->expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V

    if-eqz v1, :cond_5

    if-nez v2, :cond_4

    sget-object v2, Lcom/dropbox/core/DbxHost;->DEFAULT:Lcom/dropbox/core/DbxHost;

    :cond_4
    new-instance p1, Lcom/dropbox/core/DbxAppInfo;

    invoke-direct {p1, v1, v3, v2}, Lcom/dropbox/core/DbxAppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/dropbox/core/DbxHost;)V

    return-object p1

    :cond_5
    new-instance p1, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "missing field \"key\""

    invoke-direct {p1, v1, v0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw p1
.end method

.method public bridge synthetic read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/dropbox/core/DbxAppInfo$1;->read(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/DbxAppInfo;

    move-result-object p1

    return-object p1
.end method
