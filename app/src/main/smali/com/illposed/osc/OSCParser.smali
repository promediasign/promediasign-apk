.class public Lcom/illposed/osc/OSCParser;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/illposed/osc/OSCParser$UnknownArgumentTypeParseException;
    }
.end annotation


# static fields
.field private static final BUNDLE_START_BYTES:[B


# instance fields
.field private final bundleStartChecker:[B

.field private final identifierToType:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final log:Lorg/slf4j/Logger;

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "#bundle"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/illposed/osc/OSCParser;->BUNDLE_START_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lcom/illposed/osc/argument/ArgumentHandler;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lcom/illposed/osc/OSCParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/illposed/osc/OSCParser;->log:Lorg/slf4j/Logger;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/OSCParser;->identifierToType:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1, p2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/illposed/osc/OSCParser;->properties:Ljava/util/Map;

    const/4 p1, 0x7

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/illposed/osc/OSCParser;->bundleStartChecker:[B

    return-void
.end method

.method public static align(Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v0

    rem-int/lit8 v0, v0, 0x4

    rsub-int/lit8 v0, v0, 0x4

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method private convertBundle(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCBundle;
    .locals 4

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/illposed/osc/argument/handler/TimeTag64ArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lcom/illposed/osc/argument/OSCTimeTag64;

    .line 13
    .line 14
    new-instance v1, Lcom/illposed/osc/OSCBundle;

    .line 15
    .line 16
    invoke-direct {v1, v0}, Lcom/illposed/osc/OSCBundle;-><init>(Lcom/illposed/osc/argument/OSCTimeTag64;)V

    .line 17
    .line 18
    .line 19
    :goto_0
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    .line 25
    sget-object v0, Lcom/illposed/osc/argument/handler/IntegerArgumentHandler;->INSTANCE:Lcom/illposed/osc/argument/ArgumentHandler;

    .line 26
    .line 27
    invoke-interface {v0, p1}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Ljava/lang/Integer;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    rem-int/lit8 v2, v0, 0x4

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    add-int/2addr v3, v0

    .line 55
    invoke-virtual {p1, v3}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v2}, Lcom/illposed/osc/OSCParser;->convert(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v1, v0}, Lcom/illposed/osc/OSCBundle;->addPacket(Lcom/illposed/osc/OSCPacket;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    const-string v1, "Packet length has to be a multiple of 4, is:"

    .line 69
    .line 70
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    throw p1

    .line 78
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 79
    .line 80
    const-string v0, "Packet length may not be 0"

    .line 81
    .line 82
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_2
    return-object v1
.end method

.method private convertMessage(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCMessage;
    .locals 6

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->readTypes(Ljava/nio/ByteBuffer;)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/16 v4, 0x5b

    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_0

    add-int/lit8 v3, v3, 0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/illposed/osc/OSCParser;->readArray(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    invoke-interface {v1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/illposed/osc/OSCParser;->readArgument(Ljava/nio/ByteBuffer;C)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v3, Lcom/illposed/osc/OSCMessage;

    new-instance v4, Lcom/illposed/osc/OSCMessageInfo;

    invoke-direct {v4, v1}, Lcom/illposed/osc/OSCMessageInfo;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v0, v2, v4}, Lcom/illposed/osc/OSCMessage;-><init>(Ljava/lang/String;Ljava/util/List;Lcom/illposed/osc/OSCMessageInfo;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    move-exception v0

    new-instance v1, Lcom/illposed/osc/OSCParseException;

    invoke-direct {v1, v0, p1}, Lcom/illposed/osc/OSCParseException;-><init>(Ljava/lang/Throwable;Ljava/nio/ByteBuffer;)V

    throw v1
.end method

.method private isBundle(Ljava/nio/ByteBuffer;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    :try_start_0
    iget-object v1, p0, Lcom/illposed/osc/OSCParser;->bundleStartChecker:[B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/illposed/osc/OSCParser;->bundleStartChecker:[B

    sget-object v2, Lcom/illposed/osc/OSCParser;->BUNDLE_START_BYTES:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    return v1
.end method

.method private readArgument(Ljava/nio/ByteBuffer;C)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/OSCParser;->identifierToType:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/ArgumentHandler;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/illposed/osc/OSCParser$UnknownArgumentTypeParseException;

    invoke-direct {v0, p2, p1}, Lcom/illposed/osc/OSCParser$UnknownArgumentTypeParseException;-><init>(CLjava/nio/ByteBuffer;)V

    throw v0
.end method

.method private readArray(Ljava/nio/ByteBuffer;Ljava/lang/CharSequence;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/CharSequence;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    add-int v2, p3, v1

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x5d

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, v1, :cond_1

    add-int v3, p3, v0

    invoke-interface {p2, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-direct {p0, p1, v3}, Lcom/illposed/osc/OSCParser;->readArgument(Ljava/nio/ByteBuffer;C)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method

.method private readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/illposed/osc/OSCParser;->identifierToType:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/illposed/osc/argument/ArgumentHandler;

    invoke-interface {v0, p1}, Lcom/illposed/osc/argument/ArgumentHandler;->parse(Ljava/nio/ByteBuffer;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method private readTypes(Ljava/nio/ByteBuffer;)Ljava/lang/CharSequence;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v1, 0x2c

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->readString(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/illposed/osc/OSCParseException;

    const-string v1, "No \'44\' present after the address, but there is still more data left in the message"

    invoke-direct {v0, v1, p1}, Lcom/illposed/osc/OSCParseException;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    throw v0

    :cond_1
    const-string p1, ""

    :goto_0
    return-object p1
.end method


# virtual methods
.method public convert(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCPacket;
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->isBundle(Ljava/nio/ByteBuffer;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->convertBundle(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCBundle;

    move-result-object p1

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/illposed/osc/OSCParser;->convertMessage(Ljava/nio/ByteBuffer;)Lcom/illposed/osc/OSCMessage;

    move-result-object p1
    :try_end_0
    .catch Lcom/illposed/osc/OSCParser$UnknownArgumentTypeParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object v0, p0, Lcom/illposed/osc/OSCParser;->log:Lorg/slf4j/Logger;

    const-string v1, "Package ignored because: {}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
