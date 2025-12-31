.class public Lorg/apache/mina/filter/codec/ProtocolCodecFilter;
.super Lorg/apache/mina/core/filterchain/IoFilterAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;,
        Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;
    }
.end annotation


# static fields
.field private static final EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

.field private static final EMPTY_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final DECODER:Lorg/apache/mina/core/session/AttributeKey;

.field private final DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private final ENCODER:Lorg/apache/mina/core/session/AttributeKey;

.field private final ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

.field private final factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Class;

    sput-object v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    new-array v0, v0, [B

    invoke-static {v0}, Lorg/apache/mina/core/buffer/IoBuffer;->wrap([B)Lorg/apache/mina/core/buffer/IoBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/ProtocolEncoder;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/mina/filter/codec/ProtocolDecoder;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "encoder"

    const-class v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "decoder"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "decoderOut"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "encoderOut"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    const-class v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-class v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_PARAMS:[Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    invoke-virtual {p2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/ProtocolEncoder;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/filter/codec/ProtocolDecoder;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$2;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    return-void

    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "decoderClass cannot be initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoderClass cannot be initialized"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "decoderClass doesn\'t have a public default constructor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoderClass doesn\'t have a public default constructor."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "decoderClass: "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "encoderClass: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "decoderClass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "encoderClass"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecFactory;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "encoder"

    const-class v2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "decoder"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "decoderOut"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v1, "encoderOut"

    invoke-direct {v0, v2, v1}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "factory"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V
    .locals 5

    .line 3
    invoke-direct {p0}, Lorg/apache/mina/core/filterchain/IoFilterAdapter;-><init>()V

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-class v1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;

    const-string v2, "encoder"

    invoke-direct {v0, v1, v2}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v3, "decoder"

    invoke-direct {v0, v1, v3}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v4, "decoderOut"

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    new-instance v0, Lorg/apache/mina/core/session/AttributeKey;

    const-string v4, "encoderOut"

    invoke-direct {v0, v1, v4}, Lorg/apache/mina/core/session/AttributeKey;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$1;-><init>(Lorg/apache/mina/filter/codec/ProtocolCodecFilter;Lorg/apache/mina/filter/codec/ProtocolEncoder;Lorg/apache/mina/filter/codec/ProtocolDecoder;)V

    iput-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$000()Lorg/apache/mina/core/buffer/IoBuffer;
    .locals 1

    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->EMPTY_BUFFER:Lorg/apache/mina/core/buffer/IoBuffer;

    return-object v0
.end method

.method private disposeCodec(Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method private disposeDecoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to dispose: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private disposeDecoderOut(Lorg/apache/mina/core/session/IoSession;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private disposeEncoder(Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->removeAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->dispose(Lorg/apache/mina/core/session/IoSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object p1, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to dispose: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x29

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;
    .locals 1

    iget-object p2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    if-nez p2, :cond_0

    new-instance p2, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;

    invoke-direct {p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolDecoderOutputImpl;-><init>()V

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->DECODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0, p2}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method private getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$ProtocolEncoderOutputImpl;-><init>(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)V

    iget-object p2, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER_OUT:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/session/IoSession;->setAttribute(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public filterWrite(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 5

    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v1, :cond_8

    instance-of v1, v0, Lorg/apache/mina/core/file/FileRegion;

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v1, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;

    move-result-object v1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getEncoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/write/WriteRequest;)Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;

    move-result-object v2

    if-eqz v1, :cond_7

    if-eqz v2, :cond_6

    :try_start_0
    invoke-interface {v1, p2, v0, v2}, Lorg/apache/mina/filter/codec/ProtocolEncoder;->encode(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;Lorg/apache/mina/filter/codec/ProtocolEncoderOutput;)V

    check-cast v2, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;

    invoke-virtual {v2}, Lorg/apache/mina/filter/codec/AbstractProtocolEncoderOutput;->getMessageQueue()Ljava/util/Queue;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lorg/apache/mina/core/buffer/IoBuffer;

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {v2}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_3

    :cond_3
    :goto_1
    invoke-interface {p3}, Lorg/apache/mina/core/write/WriteRequest;->getDestination()Ljava/net/SocketAddress;

    move-result-object v2

    new-instance v3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4, v2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;-><init>(Ljava/lang/Object;Lorg/apache/mina/core/future/WriteFuture;Ljava/net/SocketAddress;)V

    invoke-interface {p1, p2, v3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    goto :goto_0

    :cond_4
    :goto_2
    new-instance v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    invoke-direct {v0, p3}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;-><init>(Lorg/apache/mina/core/write/WriteRequest;)V

    invoke-interface {p1, p2, v0}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_3
    instance-of p2, p1, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    if-eqz p2, :cond_5

    check-cast p1, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    goto :goto_4

    :cond_5
    new-instance p2, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    invoke-direct {p2, p1}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/Throwable;)V

    move-object p1, p2

    :goto_4
    throw p1

    :cond_6
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The encoderOut is null for the session "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Lorg/apache/mina/filter/codec/ProtocolEncoderException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "The encoder is null for the session "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/mina/filter/codec/ProtocolEncoderException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    :goto_5
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->filterWrite(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public getEncoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolEncoder;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->ENCODER:Lorg/apache/mina/core/session/AttributeKey;

    invoke-interface {p1, v0}, Lorg/apache/mina/core/session/IoSession;->getAttribute(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/mina/filter/codec/ProtocolEncoder;

    return-object p1
.end method

.method public messageReceived(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V
    .locals 7

    sget-object v0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Processing a MESSAGE_RECEIVED for session {}"

    invoke-interface {p2}, Lorg/apache/mina/core/session/IoSession;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    instance-of v0, p3, Lorg/apache/mina/core/buffer/IoBuffer;

    if-nez v0, :cond_0

    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageReceived(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Object;)V

    return-void

    :cond_0
    check-cast p3, Lorg/apache/mina/core/buffer/IoBuffer;

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v2

    :try_start_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v0, p2, p3, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->decode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/buffer/IoBuffer;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    instance-of v4, v3, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v4, :cond_2

    move-object v4, v3

    check-cast v4, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    goto :goto_2

    :cond_2
    new-instance v4, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v4, v3}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v4}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->getHexdump()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v5

    invoke-virtual {p3, v2}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->getHexDump()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;->setHexdump(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Lorg/apache/mina/core/buffer/IoBuffer;->position(I)Lorg/apache/mina/core/buffer/IoBuffer;

    :cond_3
    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p1, p2, v4}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->exceptionCaught(Lorg/apache/mina/core/session/IoSession;Ljava/lang/Throwable;)V

    instance-of v3, v3, Lorg/apache/mina/filter/codec/RecoverableProtocolDecoderException;

    if-eqz v3, :cond_4

    invoke-virtual {p3}, Lorg/apache/mina/core/buffer/IoBuffer;->position()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_4
    return-void
.end method

.method public messageSent(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V
    .locals 1

    instance-of v0, p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$EncodedWriteRequest;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    instance-of v0, p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    if-eqz v0, :cond_1

    check-cast p3, Lorg/apache/mina/filter/codec/ProtocolCodecFilter$MessageWriteRequest;

    invoke-virtual {p3}, Lorg/apache/mina/core/write/WriteRequestWrapper;->getParentRequest()Lorg/apache/mina/core/write/WriteRequest;

    move-result-object p3

    :cond_1
    invoke-interface {p1, p2, p3}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->messageSent(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/write/WriteRequest;)V

    return-void
.end method

.method public onPostRemove(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1}, Lorg/apache/mina/core/filterchain/IoFilterChain;->getSession()Lorg/apache/mina/core/session/IoSession;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    return-void
.end method

.method public onPreAdd(Lorg/apache/mina/core/filterchain/IoFilterChain;Ljava/lang/String;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)V
    .locals 0

    invoke-interface {p1, p0}, Lorg/apache/mina/core/filterchain/IoFilterChain;->contains(Lorg/apache/mina/core/filterchain/IoFilter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "You can\'t add the same filter instance more than once.  Create another instance and add it."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sessionClosed(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 3

    iget-object v0, p0, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->factory:Lorg/apache/mina/filter/codec/ProtocolCodecFactory;

    invoke-interface {v0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFactory;->getDecoder(Lorg/apache/mina/core/session/IoSession;)Lorg/apache/mina/filter/codec/ProtocolDecoder;

    move-result-object v0

    invoke-direct {p0, p2, p1}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->getDecoderOut(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;)Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;

    move-result-object v1

    :try_start_0
    invoke-interface {v0, p2, v1}, Lorg/apache/mina/filter/codec/ProtocolDecoder;->finishDecode(Lorg/apache/mina/core/session/IoSession;Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {p1, p2}, Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;->sessionClosed(Lorg/apache/mina/core/session/IoSession;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    instance-of v2, v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    if-eqz v2, :cond_0

    check-cast v0, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_1

    :cond_0
    new-instance v2, Lorg/apache/mina/filter/codec/ProtocolDecoderException;

    invoke-direct {v2, v0}, Lorg/apache/mina/filter/codec/ProtocolDecoderException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    :goto_0
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    invoke-direct {p0, p2}, Lorg/apache/mina/filter/codec/ProtocolCodecFilter;->disposeCodec(Lorg/apache/mina/core/session/IoSession;)V

    invoke-interface {v1, p1, p2}, Lorg/apache/mina/filter/codec/ProtocolDecoderOutput;->flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V

    throw v0
.end method
