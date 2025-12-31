.class Lorg/apache/poi/hpsf/Blob;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private _value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/apache/poi/hpsf/Blob;->_value:[B

    if-lez v0, :cond_0

    invoke-interface {p1, v1}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    :cond_0
    return-void
.end method
