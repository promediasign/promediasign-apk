.class public abstract Lcom/dropbox/core/json/JsonReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final BinaryReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "[B>;"
        }
    .end annotation
.end field

.field public static final BooleanReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public static final Float64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final Int64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final StringReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt32Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UInt64Reader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public static final VoidReader:Lcom/dropbox/core/json/JsonReader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/dropbox/core/json/JsonReader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/dropbox/core/json/JsonReader$1;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$1;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UnsignedLongReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$2;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$2;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int64Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$3;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$3;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Int32Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$4;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$4;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt64Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$5;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$5;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->UInt32Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$6;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$6;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float64Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$7;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$7;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->Float32Reader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$8;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$8;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->StringReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$9;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$9;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BinaryReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$10;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$10;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->BooleanReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/dropbox/core/json/JsonReader$11;

    invoke-direct {v0}, Lcom/dropbox/core/json/JsonReader$11;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->VoidReader:Lcom/dropbox/core/json/JsonReader;

    new-instance v0, Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V

    sput-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expectObjectEnd(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->END_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    return-void

    :cond_0
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "expecting the end of an object (\"}\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0
.end method

.method public static expectObjectStart(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonLocation;
    .locals 2

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v0

    sget-object v1, Lcom/fasterxml/jackson/core/JsonToken;->START_OBJECT:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object v0

    invoke-static {p0}, Lcom/dropbox/core/json/JsonReader;->nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;

    return-object v0

    :cond_0
    new-instance v0, Lcom/dropbox/core/json/JsonReadException;

    const-string v1, "expecting the start of an object (\"{\")"

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v0
.end method

.method public static nextToken(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/fasterxml/jackson/core/JsonToken;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object p0
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p0

    throw p0
.end method

.method public static readBoolean(Lcom/fasterxml/jackson/core/JsonParser;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p0

    throw p0
.end method

.method public static readUnsignedLong(Lcom/fasterxml/jackson/core/JsonParser;)J
    .locals 6

    const-string v0, "expecting a non-negative number, got: "

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getLongValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-ltz v5, :cond_0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    return-wide v1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/dropbox/core/json/JsonReadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p0

    invoke-direct {v3, v0, p0}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    throw v3
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {p0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p0

    throw p0
.end method

.method public static skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->skipChildren()Lcom/fasterxml/jackson/core/JsonParser;

    invoke-virtual {p0}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public abstract read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation
.end method

.method public final readField(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    new-instance p3, Lcom/dropbox/core/json/JsonReadException;

    .line 9
    .line 10
    const-string v0, "duplicate field \""

    .line 11
    .line 12
    const-string v1, "\""

    .line 13
    .line 14
    invoke-static {v0, p2, v1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getTokenLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-direct {p3, p2, p1}, Lcom/dropbox/core/json/JsonReadException;-><init>(Ljava/lang/String;Lcom/fasterxml/jackson/core/JsonLocation;)V

    .line 23
    .line 24
    .line 25
    throw p3
.end method

.method public readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/core/JsonParser;",
            ")TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->read(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/dropbox/core/json/JsonReader;->validate(Ljava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The JSON library should ensure there\'s no tokens after the main value: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentLocation()Lcom/fasterxml/jackson/core/JsonLocation;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public readFully(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            ")TT;"
        }
    .end annotation

    .line 2
    :try_start_0
    sget-object v0, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v0, p1}, Lcom/fasterxml/jackson/core/JsonFactory;->createParser(Ljava/io/InputStream;)Lcom/fasterxml/jackson/core/JsonParser;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/dropbox/core/json/JsonReader;->readFully(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/fasterxml/jackson/core/JsonParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/dropbox/core/json/JsonReadException;->fromJackson(Lcom/fasterxml/jackson/core/JsonProcessingException;)Lcom/dropbox/core/json/JsonReadException;

    move-result-object p1

    throw p1
.end method

.method public validate(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    return-void
.end method
