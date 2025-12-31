.class Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/mina/util/byteaccess/CompositeByteArray$CursorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;-><init>(Lorg/apache/mina/util/byteaccess/CompositeByteArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;


# direct methods
.method public constructor <init>(Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enteredFirstComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method

.method public enteredLastComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method

.method public enteredNextComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    iget-object p1, p0, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase$1;->this$0:Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;

    invoke-virtual {p1}, Lorg/apache/mina/util/byteaccess/CompositeByteArrayRelativeBase;->cursorPassedFirstComponent()V

    return-void
.end method

.method public enteredPreviousComponent(ILorg/apache/mina/util/byteaccess/ByteArray;)V
    .locals 0

    return-void
.end method
