.class Lorg/apache/mina/filter/codec/ProtocolCodecSession$2;
.super Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/filter/codec/ProtocolCodecSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/filter/codec/ProtocolCodecSession;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/codec/ProtocolCodecSession;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/filter/codec/ProtocolCodecSession$2;->this$0:Lorg/apache/mina/filter/codec/ProtocolCodecSession;

    invoke-direct {p0}, Lorg/apache/mina/filter/codec/AbstractProtocolDecoderOutput;-><init>()V

    return-void
.end method


# virtual methods
.method public flush(Lorg/apache/mina/core/filterchain/IoFilter$NextFilter;Lorg/apache/mina/core/session/IoSession;)V
    .locals 0

    return-void
.end method
