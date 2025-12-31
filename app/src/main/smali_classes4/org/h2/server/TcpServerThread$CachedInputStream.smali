.class Lorg/h2/server/TcpServerThread$CachedInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/h2/server/TcpServerThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CachedInputStream"
.end annotation


# static fields
.field private static final DUMMY:Ljava/io/ByteArrayInputStream;


# instance fields
.field private pos:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    sput-object v0, Lorg/h2/server/TcpServerThread$CachedInputStream;->DUMMY:Ljava/io/ByteArrayInputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    if-nez p1, :cond_0

    sget-object v0, Lorg/h2/server/TcpServerThread$CachedInputStream;->DUMMY:Ljava/io/ByteArrayInputStream;

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    invoke-direct {p0, v0}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-nez p1, :cond_1

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    :cond_1
    return-void
.end method


# virtual methods
.method public getPos()J
    .locals 2

    iget-wide v0, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    return-wide v0
.end method

.method public read()I
    .locals 5

    .line 1
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_0

    iget-wide v1, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .line 2
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    iget-wide p2, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    :cond_0
    return p1
.end method

.method public skip(J)J
    .locals 3

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    iget-wide v0, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lorg/h2/server/TcpServerThread$CachedInputStream;->pos:J

    :cond_0
    return-wide p1
.end method
