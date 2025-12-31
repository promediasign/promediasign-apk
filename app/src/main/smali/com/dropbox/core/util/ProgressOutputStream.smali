.class public Lcom/dropbox/core/util/ProgressOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private completed:J

.field private underlying:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->completed:J

    return-void
.end method

.method private track(I)V
    .locals 4

    iget-wide v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->completed:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->completed:J

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;->track(I)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    array-length p1, p1

    invoke-direct {p0, p1}, Lcom/dropbox/core/util/ProgressOutputStream;->track(I)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/dropbox/core/util/ProgressOutputStream;->underlying:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    invoke-direct {p0, p3}, Lcom/dropbox/core/util/ProgressOutputStream;->track(I)V

    return-void
.end method
