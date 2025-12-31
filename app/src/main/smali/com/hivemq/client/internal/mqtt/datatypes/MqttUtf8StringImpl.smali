.class public Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field public static final PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# instance fields
.field private binary:[B

.field private conversions:I

.field private string:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    const-string v1, "MQTT"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    sput-object v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->PROTOCOL_NAME:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    return-void
.end method

.method public static checkLength(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    mul-int/lit8 v0, v0, 0x3

    .line 6
    .line 7
    const v1, 0xffff

    .line 8
    .line 9
    .line 10
    if-le v0, v1, :cond_1

    .line 11
    .line 12
    invoke-static {p0}, Lcom/hivemq/client/internal/util/Utf8Util;->encodedLength(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-gt v0, v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v2, " ["

    .line 22
    .line 23
    invoke-static {p1, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v2, 0x0

    .line 28
    const/16 v3, 0xa

    .line 29
    .line 30
    const-string v4, "...] must not be longer than 65535 bytes, but was "

    .line 31
    .line 32
    invoke-static {p0, v2, v3, p1, v4}, Ls/a;->h(Ljava/lang/String;IILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const-string p0, " bytes."

    .line 36
    .line 37
    invoke-static {p0, v0, p1}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v1

    .line 45
    :cond_1
    :goto_0
    return-void
.end method

.method public static checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "] must not contain unmatched UTF-16 surrogate, found at index "

    const-string v4, "."

    const-string v5, " ["

    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v6

    if-ne v1, v6, :cond_0

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] must not contain null character (U+0000), found at index "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static decode(Lio/netty/buffer/ByteBuf;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 0

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->decode(Lio/netty/buffer/ByteBuf;)[B

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isWellFormed([B)Z
    .locals 6

    invoke-static {p0}, Lcom/hivemq/client/internal/util/Utf8Util;->isWellFormed([B)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    return v4

    :cond_0
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-byte v3, p0, v2

    if-nez v3, :cond_1

    return v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkLength(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->checkWellFormed(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-direct {p1, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public static of([B)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 1

    .line 2
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->isInRange([B)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->isWellFormed([B)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;-><init>([B)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 2
    check-cast p1, Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->compareTo(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)I

    move-result p1

    return p1
.end method

.method public encode(Lio/netty/buffer/ByteBuf;)V
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encode([BLio/netty/buffer/ByteBuf;)V

    return-void
.end method

.method public encodedLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttBinaryData;->encodedLength([B)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    iget-object v1, p1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    :cond_3
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toBinary()[B
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toBinary()[B

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->string:Ljava/lang/String;

    iget v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->conversions:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->binary:[B

    :cond_1
    move-object v0, v1

    :cond_2
    return-object v0
.end method
