.class public Lorg/apache/poi/util/CommonsLogger;
.super Lorg/apache/poi/util/POILogger;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lorg/apache/commons/logging/LogFactory;->getFactory()Lorg/apache/commons/logging/LogFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/poi/util/POILogger;-><init>()V

    return-void
.end method


# virtual methods
.method public _log(ILjava/lang/Object;)V
    .locals 1

    .line 1
    const/16 p2, 0x9

    const/4 v0, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    throw v0

    :cond_0
    throw v0

    :cond_1
    throw v0

    :cond_2
    throw v0

    :cond_3
    throw v0
.end method

.method public _log(ILjava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    const/16 p2, 0x9

    const/4 p3, 0x0

    if-eq p1, p2, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p2, 0x1

    throw p3

    :cond_0
    throw p3

    :cond_1
    throw p3

    :cond_2
    throw p3

    :cond_3
    throw p3
.end method

.method public check(I)Z
    .locals 2

    const/16 v0, 0x9

    const/4 v1, 0x0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x7

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    throw v1

    :cond_1
    throw v1

    :cond_2
    throw v1

    :cond_3
    throw v1

    :cond_4
    throw v1
.end method

.method public initialize(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method
