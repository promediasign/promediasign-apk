.class public Lorg/apache/mina/filter/reqres/RequestTimeoutException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x4cfa238cdbd330e4L


# instance fields
.field private final request:Lorg/apache/mina/filter/reqres/Request;


# direct methods
.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "request"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lorg/apache/mina/filter/reqres/Request;Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    if-eqz p1, :cond_0

    iput-object p1, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "request"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getRequest()Lorg/apache/mina/filter/reqres/Request;
    .locals 1

    iget-object v0, p0, Lorg/apache/mina/filter/reqres/RequestTimeoutException;->request:Lorg/apache/mina/filter/reqres/Request;

    return-object v0
.end method
