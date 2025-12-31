.class final Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;
.super Lcom/dropbox/core/stone/StoneSerializer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/stone/StoneSerializers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DateSerializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StoneSerializer<",
        "Ljava/util/Date;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    invoke-direct {v0}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->INSTANCE:Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/dropbox/core/stone/StoneSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/util/Date;
    .locals 5

    invoke-static {p1}, Lcom/dropbox/core/stone/StoneSerializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    :try_start_0
    invoke-static {v0}, Lcom/dropbox/core/stone/Util;->parseTimestamp(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v1

    new-instance v2, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v3, "Malformed timestamp: \'"

    const-string v4, "\'"

    .line 2
    invoke-static {v3, v0, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-direct {v2, p1, v0, v1}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/stone/StoneSerializers$DateSerializer;->serialize(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method

.method public serialize(Ljava/util/Date;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/dropbox/core/stone/Util;->formatTimestamp(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    return-void
.end method
