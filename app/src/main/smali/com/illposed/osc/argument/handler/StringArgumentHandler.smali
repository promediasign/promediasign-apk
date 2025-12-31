.class public Lcom/illposed/osc/argument/handler/StringArgumentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/illposed/osc/argument/ArgumentHandler;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/illposed/osc/argument/ArgumentHandler<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private charset:Ljava/nio/charset/Charset;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;-><init>(Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method private lengthOfCurrentString(Ljava/nio/ByteBuffer;)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method


# virtual methods
.method public bridge synthetic clone()Lcom/illposed/osc/argument/ArgumentHandler;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/illposed/osc/argument/handler/StringArgumentHandler;
    .locals 1

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->clone()Lcom/illposed/osc/argument/handler/StringArgumentHandler;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultIdentifier()C
    .locals 1

    const/16 v0, 0x73

    return v0
.end method

.method public getJavaClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    return-object v0
.end method

.method public isMarkerOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 3

    .line 2
    invoke-direct {p0, p1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->lengthOfCurrentString(Ljava/nio/ByteBuffer;)I

    move-result v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    :try_start_0
    iget-object v2, p0, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-static {p1}, Lcom/illposed/osc/OSCParser;->align(Ljava/nio/ByteBuffer;)V

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lcom/illposed/osc/OSCParseException;

    const-string v2, "Failed decoding a string argument"

    invoke-direct {v1, v2, v0, p1}, Lcom/illposed/osc/OSCParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/nio/ByteBuffer;)V

    throw v1
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    iput-object p1, p0, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setProperties(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "charset"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/Charset;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/illposed/osc/argument/handler/StringArgumentHandler;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_0
    return-void
.end method
