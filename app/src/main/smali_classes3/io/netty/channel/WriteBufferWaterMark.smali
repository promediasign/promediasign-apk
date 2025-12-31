.class public final Lio/netty/channel/WriteBufferWaterMark;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

.field private static final DEFAULT_HIGH_WATER_MARK:I = 0x10000

.field private static final DEFAULT_LOW_WATER_MARK:I = 0x8000


# instance fields
.field private final high:I

.field private final low:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lio/netty/channel/WriteBufferWaterMark;

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    const v3, 0x8000

    invoke-direct {v0, v3, v1, v2}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    sput-object v0, Lio/netty/channel/WriteBufferWaterMark;->DEFAULT:Lio/netty/channel/WriteBufferWaterMark;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lio/netty/channel/WriteBufferWaterMark;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    const-string p3, "low"

    invoke-static {p1, p3}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const-string v0, "write buffer\'s high water mark cannot be less than  low water mark ("

    const-string v1, "): "

    .line 2
    invoke-static {v0, p1, v1, p2}, LA/g;->f(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_1
    :goto_0
    iput p1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    iput p2, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    return-void
.end method


# virtual methods
.method public high()I
    .locals 1

    iget v0, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    return v0
.end method

.method public low()I
    .locals 1

    iget v0, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/16 v0, 0x37

    .line 2
    .line 3
    const-string v1, "WriteBufferWaterMark(low: "

    .line 4
    .line 5
    invoke-static {v0, v1}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lio/netty/channel/WriteBufferWaterMark;->low:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ", high: "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lio/netty/channel/WriteBufferWaterMark;->high:I

    .line 20
    .line 21
    const-string v2, ")"

    .line 22
    .line 23
    invoke-static {v2, v1, v0}, Lorg/apache/ftpserver/main/a;->g(Ljava/lang/String;ILjava/lang/StringBuilder;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method
