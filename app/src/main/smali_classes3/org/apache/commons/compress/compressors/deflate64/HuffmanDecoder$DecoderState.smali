.class abstract Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DecoderState"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/deflate64/HuffmanDecoder$DecoderState;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract available()I
.end method

.method public abstract hasData()Z
.end method

.method public abstract read([BII)I
.end method

.method public abstract state()Lorg/apache/commons/compress/compressors/deflate64/HuffmanState;
.end method
