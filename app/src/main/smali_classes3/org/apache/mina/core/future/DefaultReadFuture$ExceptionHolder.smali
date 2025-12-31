.class Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/mina/core/future/DefaultReadFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ExceptionHolder"
.end annotation


# instance fields
.field private final exception:Ljava/lang/Throwable;


# direct methods
.method private constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->exception:Ljava/lang/Throwable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Throwable;Lorg/apache/mina/core/future/DefaultReadFuture$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic access$000(Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;)Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lorg/apache/mina/core/future/DefaultReadFuture$ExceptionHolder;->exception:Ljava/lang/Throwable;

    return-object p0
.end method
