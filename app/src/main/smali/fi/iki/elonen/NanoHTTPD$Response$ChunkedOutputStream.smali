.class Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfi/iki/elonen/NanoHTTPD$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChunkedOutputStream"
.end annotation


# static fields
.field private static final DATA_CRLF:[B

.field private static final DATA_FINAL:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "0\r\n\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->DATA_FINAL:[B

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->DATA_CRLF:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object v1, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->DATA_FINAL:[B

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public write(I)V
    .locals 3

    .line 1
    int-to-byte p1, p1

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    aput-byte p1, v1, v2

    invoke-virtual {p0, v1, v2, v0}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([B)V
    .locals 2

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 4

    .line 3
    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const-string v1, "%x\r\n"

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V

    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    iget-object p1, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    sget-object p2, Lfi/iki/elonen/NanoHTTPD$Response$ChunkedOutputStream;->DATA_CRLF:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
