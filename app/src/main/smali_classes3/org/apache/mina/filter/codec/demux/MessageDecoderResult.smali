.class public Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

.field public static OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "NEED_DATA"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NEED_DATA:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    new-instance v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    const-string v1, "NOT_OK"

    invoke-direct {v0, v1}, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->NOT_OK:Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/codec/demux/MessageDecoderResult;->name:Ljava/lang/String;

    return-object v0
.end method
