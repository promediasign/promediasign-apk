.class public Ludt/UDTOutputStream;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field private volatile closed:Z

.field private final socket:Ludt/UDTSocket;


# direct methods
.method public constructor <init>(Ludt/UDTSocket;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Ludt/UDTOutputStream;->socket:Ludt/UDTSocket;

    return-void
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Ludt/UDTOutputStream;->closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has been closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-boolean v0, p0, Ludt/UDTOutputStream;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ludt/UDTOutputStream;->closed:Z

    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Ludt/UDTOutputStream;->checkClosed()V

    iget-object v0, p0, Ludt/UDTOutputStream;->socket:Ludt/UDTSocket;

    invoke-virtual {v0}, Ludt/UDTSocket;->flush()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public isClosed()Z
    .locals 1

    iget-boolean v0, p0, Ludt/UDTOutputStream;->closed:Z

    return v0
.end method

.method public write(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ludt/UDTOutputStream;->checkClosed()V

    iget-object v0, p0, Ludt/UDTOutputStream;->socket:Ludt/UDTSocket;

    int-to-byte p1, p1

    const/4 v1, 0x1

    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {v0, v1}, Ludt/UDTSocket;->doWrite([B)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ludt/UDTOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ludt/UDTOutputStream;->checkClosed()V

    iget-object v0, p0, Ludt/UDTOutputStream;->socket:Ludt/UDTSocket;

    invoke-virtual {v0, p1, p2, p3}, Ludt/UDTSocket;->doWrite([BII)V

    return-void
.end method
