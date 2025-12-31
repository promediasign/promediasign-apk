.class Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;
.super Lorg/apache/mina/util/byteaccess/BufferByteArray;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArray;->removeTo(I)Lorg/apache/mina/util/byteaccess/ByteArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;Lorg/apache/mina/core/buffer/IoBuffer;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArray$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArray;

    invoke-direct {p0, p2}, Lorg/apache/mina/util/byteaccess/BufferByteArray;-><init>(Lorg/apache/mina/core/buffer/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public free()V
    .locals 0

    return-void
.end method
