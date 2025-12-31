.class public Lcom/jcraft/jsch/ChannelSftp;
.super Lcom/jcraft/jsch/ChannelSession;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;,
        Lcom/jcraft/jsch/ChannelSftp$LsEntry;,
        Lcom/jcraft/jsch/ChannelSftp$Header;,
        Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    }
.end annotation


# static fields
.field private static final file_separator:Ljava/lang/String;

.field private static final file_separatorc:C

.field private static fs_is_bs:Z


# instance fields
.field private ackid:[I

.field private buf:Lcom/jcraft/jsch/Buffer;

.field private client_version:I

.field private cwd:Ljava/lang/String;

.field private extension_hardlink:Z

.field private extension_posix_rename:Z

.field private extension_statvfs:Z

.field private extensions:Ljava/util/Hashtable;

.field private fEncoding:Ljava/lang/String;

.field private fEncoding_is_utf8:Z

.field private home:Ljava/lang/String;

.field private interactive:Z

.field private io_in:Ljava/io/InputStream;

.field private lcwd:Ljava/lang/String;

.field private obuf:Lcom/jcraft/jsch/Buffer;

.field private opacket:Lcom/jcraft/jsch/Packet;

.field private packet:Lcom/jcraft/jsch/Packet;

.field private rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

.field private seq:I

.field private server_version:I

.field private version:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    sput-object v0, Lcom/jcraft/jsch/ChannelSftp;->file_separator:Ljava/lang/String;

    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lcom/jcraft/jsch/ChannelSftp;->file_separatorc:C

    int-to-byte v0, v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/jcraft/jsch/ChannelSftp;->fs_is_bs:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSession;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->interactive:Z

    const/4 v1, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->ackid:[I

    const/4 v2, 0x3

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->client_version:I

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->version:Ljava/lang/String;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    iput-boolean v0, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    new-instance v0, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;-><init>(Lcom/jcraft/jsch/ChannelSftp;I)V

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    const/high16 v0, 0x200000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSizeMax(I)V

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalWindowSize(I)V

    const v0, 0x8000

    invoke-virtual {p0, v0}, Lcom/jcraft/jsch/Channel;->setLocalPacketSize(I)V

    return-void
.end method

.method private _realpath(Ljava/lang/String;)[B
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendREALPATH([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    iget v0, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v1, 0x68

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 v0, 0x4

    const-string v1, ""

    invoke-direct {p1, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_2
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, p1, -0x1

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v0

    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v2, 0x3

    if-gt p1, v2, :cond_3

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move p1, v1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method private _sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendCLOSE([B)V

    const/4 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p1

    return p1
.end method

.method private _stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1

    return-object p1
.end method

.method private _stat([B)Lcom/jcraft/jsch/SftpATTRS;
    .locals 4

    .line 2
    const-string v0, ""

    const/4 v1, 0x4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendSTAT([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x69

    if-eq p1, v2, :cond_1

    const/16 v2, 0x65

    if-ne p1, v2, :cond_0

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p1}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_1
    instance-of v2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_2

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_2
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public static synthetic access$000(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    return p0
.end method

.method public static synthetic access$100(Lcom/jcraft/jsch/ChannelSftp;[BJ[BII)I
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/jcraft/jsch/ChannelSftp;->sendWRITE([BJ[BII)I

    move-result p0

    return p0
.end method

.method public static synthetic access$1000(Lcom/jcraft/jsch/ChannelSftp;[BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/jcraft/jsch/ChannelSftp;->sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V

    return-void
.end method

.method public static synthetic access$1100(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    return-void
.end method

.method public static synthetic access$1200(Lcom/jcraft/jsch/ChannelSftp;[BII)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/jcraft/jsch/ChannelSftp;)Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/jcraft/jsch/ChannelSftp;[ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$400(Lcom/jcraft/jsch/ChannelSftp;[BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$500(Lcom/jcraft/jsch/ChannelSftp;Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$600(Lcom/jcraft/jsch/ChannelSftp;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->skip(J)V

    return-void
.end method

.method public static synthetic access$700(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/Buffer;
    .locals 0

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/jcraft/jsch/ChannelSftp;)I
    .locals 0

    iget p0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    return p0
.end method

.method public static synthetic access$900(Lcom/jcraft/jsch/ChannelSftp;)Lcom/jcraft/jsch/ChannelSftp$RequestQueue;
    .locals 0

    iget-object p0, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    return-object p0
.end method

.method private checkStatus([ILcom/jcraft/jsch/ChannelSftp$Header;)Z
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p2}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p2

    iget v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget v1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    if-eqz p1, :cond_0

    const/4 v2, 0x0

    iget p2, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    aput p2, p1, v2

    :cond_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 p1, 0x65

    if-ne v1, p1, :cond_2

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, p2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const/4 p2, 0x4

    const-string v0, ""

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private fill([BII)I
    .locals 2

    .line 1
    move v0, p2

    :goto_0
    if-lez p3, :cond_1

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v1, p1, v0, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-lez v1, :cond_0

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "inputstream is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    sub-int/2addr v0, p2

    return v0
.end method

.method private fill(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->reset()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    return-void
.end method

.method private getCwd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/ChannelSftp;->getHome()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->cwd:Ljava/lang/String;

    return-object v0
.end method

.method private glob_remote(Ljava/lang/String;)Ljava/util/Vector;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    new-instance v2, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    const/16 v3, 0x2f

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-gez v3, :cond_0

    .line 17
    .line 18
    invoke-static/range {p1 .. p1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return-object v2

    .line 26
    :cond_0
    const/4 v4, 0x1

    .line 27
    if-nez v3, :cond_1

    .line 28
    .line 29
    const/4 v5, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v5, v3

    .line 32
    :goto_0
    const/4 v6, 0x0

    .line 33
    invoke-virtual {v1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    add-int/2addr v3, v4

    .line 38
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v5}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    new-array v4, v4, [[B

    .line 47
    .line 48
    invoke-direct {v0, v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    const-string v7, "/"

    .line 53
    .line 54
    if-nez v5, :cond_3

    .line 55
    .line 56
    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-nez v4, :cond_2

    .line 61
    .line 62
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    :cond_2
    invoke-static {v3}, Lorg/apache/ftpserver/main/a;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v1}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    return-object v2

    .line 85
    :cond_3
    aget-object v1, v4, v6

    .line 86
    .line 87
    iget-object v4, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v3, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    .line 90
    .line 91
    .line 92
    move-result-object v4

    .line 93
    invoke-direct {v0, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    .line 94
    .line 95
    .line 96
    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 97
    .line 98
    invoke-direct {v4, v0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    .line 99
    .line 100
    .line 101
    iget-object v5, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 102
    .line 103
    invoke-direct {v0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 108
    .line 109
    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 110
    .line 111
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 112
    .line 113
    invoke-direct {v0, v9, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 114
    .line 115
    .line 116
    const-string v5, ""

    .line 117
    .line 118
    const/4 v9, 0x4

    .line 119
    const/16 v10, 0x65

    .line 120
    .line 121
    if-eq v8, v10, :cond_5

    .line 122
    .line 123
    const/16 v11, 0x66

    .line 124
    .line 125
    if-ne v8, v11, :cond_4

    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_4
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    .line 129
    .line 130
    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 131
    .line 132
    .line 133
    throw v1

    .line 134
    :cond_5
    :goto_1
    if-ne v8, v10, :cond_6

    .line 135
    .line 136
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 137
    .line 138
    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 139
    .line 140
    .line 141
    move-result v8

    .line 142
    iget-object v11, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 143
    .line 144
    invoke-direct {v0, v11, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    .line 145
    .line 146
    .line 147
    :cond_6
    iget-object v8, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 148
    .line 149
    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    const/4 v11, 0x0

    .line 154
    move-object v12, v11

    .line 155
    :goto_2
    invoke-direct {v0, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    .line 156
    .line 157
    .line 158
    iget-object v13, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 159
    .line 160
    invoke-direct {v0, v13, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    .line 165
    .line 166
    iget v14, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    .line 167
    .line 168
    if-eq v14, v10, :cond_8

    .line 169
    .line 170
    const/16 v15, 0x68

    .line 171
    .line 172
    if-ne v14, v15, :cond_7

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_7
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    .line 176
    .line 177
    invoke-direct {v1, v9, v5}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v1

    .line 181
    :cond_8
    :goto_3
    if-ne v14, v10, :cond_a

    .line 182
    .line 183
    iget-object v1, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 184
    .line 185
    invoke-direct {v0, v1, v13}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    .line 186
    .line 187
    .line 188
    invoke-direct {v0, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z

    .line 189
    .line 190
    .line 191
    move-result v1

    .line 192
    if-eqz v1, :cond_9

    .line 193
    .line 194
    return-object v2

    .line 195
    :cond_9
    return-object v11

    .line 196
    :cond_a
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 197
    .line 198
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->rewind()V

    .line 199
    .line 200
    .line 201
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 202
    .line 203
    iget-object v14, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 204
    .line 205
    invoke-direct {v0, v14, v6, v9}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    .line 206
    .line 207
    .line 208
    add-int/lit8 v13, v13, -0x4

    .line 209
    .line 210
    iget-object v14, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 211
    .line 212
    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->getInt()I

    .line 213
    .line 214
    .line 215
    move-result v14

    .line 216
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 217
    .line 218
    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->reset()V

    .line 219
    .line 220
    .line 221
    :goto_4
    if-lez v14, :cond_14

    .line 222
    .line 223
    if-lez v13, :cond_d

    .line 224
    .line 225
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 226
    .line 227
    invoke-virtual {v15}, Lcom/jcraft/jsch/Buffer;->shift()V

    .line 228
    .line 229
    .line 230
    iget-object v15, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 231
    .line 232
    iget-object v6, v15, Lcom/jcraft/jsch/Buffer;->buffer:[B

    .line 233
    .line 234
    array-length v9, v6

    .line 235
    iget v15, v15, Lcom/jcraft/jsch/Buffer;->index:I

    .line 236
    .line 237
    add-int v10, v15, v13

    .line 238
    .line 239
    if-le v9, v10, :cond_b

    .line 240
    .line 241
    move v9, v13

    .line 242
    goto :goto_5

    .line 243
    :cond_b
    array-length v9, v6

    .line 244
    sub-int/2addr v9, v15

    .line 245
    :goto_5
    iget-object v10, v0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    .line 246
    .line 247
    invoke-virtual {v10, v6, v15, v9}, Ljava/io/InputStream;->read([BII)I

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-gtz v6, :cond_c

    .line 252
    .line 253
    goto :goto_8

    .line 254
    :cond_c
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 255
    .line 256
    iget v10, v9, Lcom/jcraft/jsch/Buffer;->index:I

    .line 257
    .line 258
    add-int/2addr v10, v6

    .line 259
    iput v10, v9, Lcom/jcraft/jsch/Buffer;->index:I

    .line 260
    .line 261
    sub-int/2addr v13, v6

    .line 262
    :cond_d
    iget-object v6, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 263
    .line 264
    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 265
    .line 266
    .line 267
    move-result-object v6

    .line 268
    iget v9, v0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    .line 269
    .line 270
    const/4 v10, 0x3

    .line 271
    if-gt v9, v10, :cond_e

    .line 272
    .line 273
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 274
    .line 275
    invoke-virtual {v9}, Lcom/jcraft/jsch/Buffer;->getString()[B

    .line 276
    .line 277
    .line 278
    :cond_e
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    .line 279
    .line 280
    invoke-static {v9}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    .line 281
    .line 282
    .line 283
    iget-boolean v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    .line 284
    .line 285
    if-nez v9, :cond_f

    .line 286
    .line 287
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    .line 288
    .line 289
    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object v9

    .line 293
    const-string v10, "UTF-8"

    .line 294
    .line 295
    invoke-static {v9, v10}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    .line 296
    .line 297
    .line 298
    move-result-object v10

    .line 299
    goto :goto_6

    .line 300
    :cond_f
    move-object v10, v6

    .line 301
    move-object v9, v11

    .line 302
    :goto_6
    invoke-static {v1, v10}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    .line 303
    .line 304
    .line 305
    move-result v10

    .line 306
    if-eqz v10, :cond_13

    .line 307
    .line 308
    if-nez v9, :cond_10

    .line 309
    .line 310
    iget-object v9, v0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    .line 311
    .line 312
    invoke-static {v6, v9}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v9

    .line 316
    :cond_10
    if-nez v12, :cond_12

    .line 317
    .line 318
    invoke-virtual {v3, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    if-nez v6, :cond_11

    .line 323
    .line 324
    invoke-virtual {v3, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v12

    .line 328
    goto :goto_7

    .line 329
    :cond_11
    move-object v12, v3

    .line 330
    :cond_12
    :goto_7
    new-instance v6, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-virtual {v2, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 346
    .line 347
    .line 348
    :cond_13
    add-int/lit8 v14, v14, -0x1

    .line 349
    .line 350
    const/4 v6, 0x0

    .line 351
    const/4 v9, 0x4

    .line 352
    const/16 v10, 0x65

    .line 353
    .line 354
    goto/16 :goto_4

    .line 355
    .line 356
    :cond_14
    :goto_8
    const/4 v6, 0x0

    .line 357
    const/4 v9, 0x4

    .line 358
    const/16 v10, 0x65

    .line 359
    .line 360
    goto/16 :goto_2
.end method

.method private header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;
    .locals 3

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->rewind()V

    iget-object v0, p1, Lcom/jcraft/jsch/Buffer;->buffer:[B

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-direct {p0, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v0

    add-int/lit8 v0, v0, -0x5

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getByte()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iput p1, p2, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    return-object p2
.end method

.method private isPattern(Ljava/lang/String;[[B)Z
    .locals 1

    .line 1
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    aput-object p1, p2, v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isPattern([B)Z

    move-result p1

    return p1
.end method

.method private isPattern([B)Z
    .locals 6

    .line 2
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-byte v3, p1, v2

    const/16 v4, 0x2a

    const/4 v5, 0x1

    if-eq v3, v4, :cond_2

    const/16 v4, 0x3f

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/16 v4, 0x5c

    if-ne v3, v4, :cond_1

    add-int/lit8 v3, v2, 0x1

    if-ge v3, v0, :cond_1

    move v2, v3

    :cond_1
    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    :goto_1
    return v5

    :cond_3
    return v1
.end method

.method private isUnique(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->glob_remote(Ljava/lang/String;)Ljava/util/Vector;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 p1, 0x0

    .line 13
    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Ljava/lang/String;

    .line 18
    .line 19
    return-object p1

    .line 20
    :cond_0
    new-instance v1, Lcom/jcraft/jsch/SftpException;

    .line 21
    .line 22
    const-string v2, " is not unique: "

    .line 23
    .line 24
    invoke-static {p1, v2}, Lorg/apache/ftpserver/main/a;->n(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {v0}, Ljava/util/Vector;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    const/4 v0, 0x4

    .line 40
    invoke-direct {v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    .line 41
    .line 42
    .line 43
    throw v1
.end method

.method private putHEAD(BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v0, p1, p2}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    return-void
.end method

.method private putHEAD(Lcom/jcraft/jsch/Buffer;BI)V
    .locals 1

    .line 2
    const/16 v0, 0x5e

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    iget v0, p0, Lcom/jcraft/jsch/Channel;->recipient:I

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    add-int/lit8 v0, p3, 0x4

    invoke-virtual {p1, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putByte(B)V

    return-void
.end method

.method private remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/16 v1, 0x2f

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    return-object p1

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->getCwd()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const-string v1, "/"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1

    .line 28
    :cond_1
    invoke-static {v0, v1, p1}, Lorg/apache/ftpserver/main/a;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1
.end method

.method private sendCLOSE([B)V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendINIT()V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, p0, v2}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendOPEN([BI)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x11

    const/4 v1, 0x3

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x15

    invoke-virtual {p2, v0, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendOPENDIR([B)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendOPENR([B)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendOPEN([BI)V

    return-void
.end method

.method private sendPacketPath(B[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[BLjava/lang/String;)V

    return-void
.end method

.method private sendPacketPath(B[BLjava/lang/String;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    array-length v0, p2

    add-int/lit8 v0, v0, 0x9

    if-nez p3, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget p3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v1, p3, 0x1

    iput v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x4

    add-int/2addr v0, p1

    const/16 p1, -0x38

    invoke-direct {p0, p1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {p1, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {p3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    :goto_0
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1, p2}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p1

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p1, p2, p0, v0}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return-void
.end method

.method private sendREAD([BJILcom/jcraft/jsch/ChannelSftp$RequestQueue;)V
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    array-length v0, p1

    add-int/lit8 v0, v0, 0x15

    const/4 v1, 0x5

    invoke-direct {p0, v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p4}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    add-int/lit8 p1, p1, 0x19

    invoke-virtual {v0, v1, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    if-eqz p5, :cond_0

    iget p1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p5, p1, p2, p3, p4}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->add(IJI)V

    :cond_0
    return-void
.end method

.method private sendREADDIR([B)V
    .locals 1

    const/16 v0, 0xc

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendREALPATH([B)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendSTAT([B)V
    .locals 1

    const/16 v0, 0x11

    invoke-direct {p0, v0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendPacketPath(B[B)V

    return-void
.end method

.method private sendWRITE([BJ[BII)I
    .locals 7

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Packet;->reset()V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object v1, v0, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v2, v1

    iget v3, v0, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/lit8 v4, v3, 0x22

    array-length v5, p1

    const/16 v6, 0x80

    invoke-static {v4, v5, p6, v6}, LA/g;->a(IIII)I

    move-result v4

    if-ge v2, v4, :cond_0

    array-length p6, v1

    add-int/lit8 v3, v3, 0x22

    array-length v1, p1

    add-int/2addr v3, v1

    add-int/2addr v3, v6

    sub-int/2addr p6, v3

    :cond_0
    array-length v1, p1

    const/16 v2, 0x15

    add-int/2addr v1, v2

    add-int/2addr v1, p6

    const/4 v3, 0x6

    invoke-direct {p0, v0, v3, v1}, Lcom/jcraft/jsch/ChannelSftp;->putHEAD(Lcom/jcraft/jsch/Buffer;BI)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget v1, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->seq:I

    invoke-virtual {v0, v1}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p1}, Lcom/jcraft/jsch/Buffer;->putString([B)V

    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v0, p2, p3}, Lcom/jcraft/jsch/Buffer;->putLong(J)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    iget-object p3, p2, Lcom/jcraft/jsch/Buffer;->buffer:[B

    if-eq p3, p4, :cond_1

    invoke-virtual {p2, p4, p5, p6}, Lcom/jcraft/jsch/Buffer;->putString([BII)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->putInt(I)V

    iget-object p2, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p2, p6}, Lcom/jcraft/jsch/Buffer;->skip(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object p2

    iget-object p3, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    array-length p1, p1

    const/4 p4, 0x4

    invoke-static {p1, v2, p6, p4}, LA/g;->a(IIII)I

    move-result p1

    invoke-virtual {p2, p3, p0, p1}, Lcom/jcraft/jsch/Session;->write(Lcom/jcraft/jsch/Packet;Lcom/jcraft/jsch/Channel;I)V

    return p6
.end method

.method private skip(J)V
    .locals 5

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-gtz v4, :cond_0

    goto :goto_1

    :cond_0
    sub-long/2addr p1, v2

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private throwStatusError(Lcom/jcraft/jsch/Buffer;I)V
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getLength()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object p1

    new-instance v0, Lcom/jcraft/jsch/SftpException;

    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p2, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_0
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    const-string v0, "Failure"

    invoke-direct {p1, p2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public disconnect()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/Channel;->disconnect()V

    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    .line 1
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/jcraft/jsch/ChannelSftp;->get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/jcraft/jsch/SftpProgressMonitor;J)Ljava/io/InputStream;
    .locals 8

    .line 2
    const-string v0, ""

    const/4 v1, 0x4

    :try_start_0
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v2, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v2}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->isUnique(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v4, p1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->_stat([B)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v2

    if-eqz p2, :cond_0

    const-string v5, "??"

    invoke-virtual {v2}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v6

    const/4 v3, 0x1

    move-object v2, p2

    invoke-interface/range {v2 .. v7}, Lcom/jcraft/jsch/SftpProgressMonitor;->init(ILjava/lang/String;Ljava/lang/String;J)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    invoke-direct {p0, p1}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENR([B)V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {p1, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object p1

    iget v2, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget p1, p1, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v2}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v2, 0x65

    if-eq p1, v2, :cond_2

    const/16 v3, 0x66

    if-ne p1, v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p1, v1, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result p1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v2, p1}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_3
    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {p1}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    iget-object p1, p0, Lcom/jcraft/jsch/ChannelSftp;->rq:Lcom/jcraft/jsch/ChannelSftp$RequestQueue;

    invoke-virtual {p1}, Lcom/jcraft/jsch/ChannelSftp$RequestQueue;->init()V

    new-instance p1, Lcom/jcraft/jsch/ChannelSftp$2;

    move-object v2, p1

    move-object v3, p0

    move-wide v4, p3

    move-object v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/jcraft/jsch/ChannelSftp$2;-><init>(Lcom/jcraft/jsch/ChannelSftp;JLcom/jcraft/jsch/SftpProgressMonitor;[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :goto_2
    instance-of p2, p1, Lcom/jcraft/jsch/SftpException;

    if-nez p2, :cond_4

    new-instance p2, Lcom/jcraft/jsch/SftpException;

    invoke-direct {p2, v1, v0, p1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_4
    check-cast p1, Lcom/jcraft/jsch/SftpException;

    throw p1
.end method

.method public getHome()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    if-nez v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v1, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v1}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/ChannelSftp;->_realpath(Ljava/lang/String;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    instance-of v2, v1, Lcom/jcraft/jsch/SftpException;

    if-nez v2, :cond_0

    new-instance v2, Lcom/jcraft/jsch/SftpException;

    const/4 v3, 0x4

    invoke-direct {v2, v3, v0, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    check-cast v1, Lcom/jcraft/jsch/SftpException;

    throw v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->home:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public ls(Ljava/lang/String;Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;)V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v3, 0x4

    :try_start_0
    iget-object v0, v1, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    check-cast v0, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    invoke-virtual {v0}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;->updateReadSide()V

    invoke-direct/range {p0 .. p1}, Lcom/jcraft/jsch/ChannelSftp;->remoteAbsolutePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    const/16 v4, 0x2f

    invoke-virtual {v0, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    const/4 v7, 0x0

    invoke-virtual {v0, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-array v8, v5, [[B

    invoke-direct {v1, v4, v8}, Lcom/jcraft/jsch/ChannelSftp;->isPattern(Ljava/lang/String;[[B)Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_1

    aget-object v0, v8, v7

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :cond_1
    invoke-static {v0}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/jcraft/jsch/ChannelSftp;->_stat(Ljava/lang/String;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v11

    invoke-virtual {v11}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v11

    if-eqz v11, :cond_2

    move-object v6, v0

    move-object v0, v10

    goto :goto_1

    :cond_2
    iget-boolean v0, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-eqz v0, :cond_3

    aget-object v0, v8, v7

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->unquote([B)[B

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {v4}, Lcom/jcraft/jsch/Util;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    :goto_1
    iget-object v4, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/jcraft/jsch/ChannelSftp;->sendOPENDIR([B)V

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, v1}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v6, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    iget v6, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget v8, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    const/16 v6, 0x65

    if-eq v8, v6, :cond_5

    const/16 v11, 0x66

    if-ne v8, v11, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_2
    if-ne v8, v6, :cond_6

    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v8

    iget-object v11, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v11, v8}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_6
    iget-object v8, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v8}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v8

    const/4 v11, 0x0

    :goto_3
    if-nez v11, :cond_16

    invoke-direct {v1, v8}, Lcom/jcraft/jsch/ChannelSftp;->sendREADDIR([B)V

    iget-object v12, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v12, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    iget v12, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    iget v13, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->type:I

    if-eq v13, v6, :cond_8

    const/16 v14, 0x68

    if-ne v13, v14, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v0, v3, v2}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_8
    :goto_4
    if-ne v13, v6, :cond_a

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v13, v12}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    if-ne v13, v5, :cond_9

    goto/16 :goto_d

    :cond_9
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {v1, v14, v13}, Lcom/jcraft/jsch/ChannelSftp;->throwStatusError(Lcom/jcraft/jsch/Buffer;I)V

    :cond_a
    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->rewind()V

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v13, v13, Lcom/jcraft/jsch/Buffer;->buffer:[B

    invoke-direct {v1, v13, v7, v3}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    add-int/lit8 v12, v12, -0x4

    iget-object v13, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v13}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v13

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->reset()V

    :goto_5
    if-lez v13, :cond_15

    if-lez v12, :cond_c

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v14}, Lcom/jcraft/jsch/Buffer;->shift()V

    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget-object v15, v14, Lcom/jcraft/jsch/Buffer;->buffer:[B

    array-length v6, v15

    iget v14, v14, Lcom/jcraft/jsch/Buffer;->index:I

    add-int v7, v14, v12

    if-le v6, v7, :cond_b

    move v6, v12

    goto :goto_6

    :cond_b
    array-length v6, v15

    sub-int/2addr v6, v14

    :goto_6
    invoke-direct {v1, v15, v14, v6}, Lcom/jcraft/jsch/ChannelSftp;->fill([BII)I

    move-result v6

    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    iget v14, v7, Lcom/jcraft/jsch/Buffer;->index:I

    add-int/2addr v14, v6

    iput v14, v7, Lcom/jcraft/jsch/Buffer;->index:I

    sub-int/2addr v12, v6

    :cond_c
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v6}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v6

    iget v7, v1, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    const/4 v14, 0x3

    if-gt v7, v14, :cond_d

    iget-object v7, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v7}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v7

    goto :goto_7

    :cond_d
    move-object v7, v10

    :goto_7
    iget-object v14, v1, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-static {v14}, Lcom/jcraft/jsch/SftpATTRS;->getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;

    move-result-object v14

    if-ne v11, v5, :cond_e

    add-int/lit8 v13, v13, -0x1

    :goto_8
    const/16 v6, 0x65

    const/4 v7, 0x0

    goto :goto_5

    :cond_e
    if-nez v0, :cond_f

    move-object v5, v10

    const/4 v15, 0x1

    goto :goto_a

    :cond_f
    if-nez v9, :cond_10

    invoke-static {v0, v6}, Lcom/jcraft/jsch/Util;->array_equals([B[B)Z

    move-result v15

    move-object v5, v10

    goto :goto_a

    :cond_10
    iget-boolean v15, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding_is_utf8:Z

    if-nez v15, :cond_11

    iget-object v15, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v15}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v5, "UTF-8"

    invoke-static {v15, v5}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v5

    goto :goto_9

    :cond_11
    move-object v5, v6

    move-object v15, v10

    :goto_9
    invoke-static {v0, v5}, Lcom/jcraft/jsch/Util;->glob([B[B)Z

    move-result v5

    move-object/from16 v16, v15

    move v15, v5

    move-object/from16 v5, v16

    :goto_a
    if-eqz v15, :cond_14

    if-nez v5, :cond_12

    iget-object v5, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_12
    if-nez v7, :cond_13

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14}, Lcom/jcraft/jsch/SftpATTRS;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b

    :cond_13
    iget-object v6, v1, Lcom/jcraft/jsch/ChannelSftp;->fEncoding:Ljava/lang/String;

    invoke-static {v7, v6}, Lcom/jcraft/jsch/Util;->byte2str([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_b
    new-instance v7, Lcom/jcraft/jsch/ChannelSftp$LsEntry;

    invoke-direct {v7, v1, v5, v6, v14}, Lcom/jcraft/jsch/ChannelSftp$LsEntry;-><init>(Lcom/jcraft/jsch/ChannelSftp;Ljava/lang/String;Ljava/lang/String;Lcom/jcraft/jsch/SftpATTRS;)V

    move-object/from16 v5, p2

    invoke-interface {v5, v7}, Lcom/jcraft/jsch/ChannelSftp$LsEntrySelector;->select(Lcom/jcraft/jsch/ChannelSftp$LsEntry;)I

    move-result v6

    move v11, v6

    goto :goto_c

    :cond_14
    move-object/from16 v5, p2

    :goto_c
    add-int/lit8 v13, v13, -0x1

    const/4 v5, 0x1

    goto :goto_8

    :cond_15
    move-object/from16 v5, p2

    const/4 v5, 0x1

    goto/16 :goto_3

    :cond_16
    :goto_d
    invoke-direct {v1, v8, v4}, Lcom/jcraft/jsch/ChannelSftp;->_sendCLOSE([BLcom/jcraft/jsch/ChannelSftp$Header;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_e
    instance-of v4, v0, Lcom/jcraft/jsch/SftpException;

    if-nez v4, :cond_17

    new-instance v4, Lcom/jcraft/jsch/SftpException;

    invoke-direct {v4, v3, v2, v0}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_17
    check-cast v0, Lcom/jcraft/jsch/SftpException;

    throw v0
.end method

.method public bridge synthetic run()V
    .locals 0

    invoke-super {p0}, Lcom/jcraft/jsch/ChannelSession;->run()V

    return-void
.end method

.method public bridge synthetic setAgentForwarding(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setAgentForwarding(Z)V

    return-void
.end method

.method public bridge synthetic setPty(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/jcraft/jsch/ChannelSession;->setPty(Z)V

    return-void
.end method

.method public start()V
    .locals 8

    const-string v0, "hardlink@openssh.com"

    const-string v1, "statvfs@openssh.com"

    const-string v2, "posix-rename@openssh.com"

    const-string v3, "Received message is too long: "

    :try_start_0
    new-instance v4, Ljava/io/PipedOutputStream;

    invoke-direct {v4}, Ljava/io/PipedOutputStream;-><init>()V

    iget-object v5, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v5, v4}, Lcom/jcraft/jsch/IO;->setOutputStream(Ljava/io/OutputStream;)V

    new-instance v5, Lcom/jcraft/jsch/Channel$MyPipedInputStream;

    iget v6, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v5, p0, v4, v6}, Lcom/jcraft/jsch/Channel$MyPipedInputStream;-><init>(Lcom/jcraft/jsch/Channel;Ljava/io/PipedOutputStream;I)V

    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    invoke-virtual {v4, v5}, Lcom/jcraft/jsch/IO;->setInputStream(Ljava/io/InputStream;)V

    iget-object v4, p0, Lcom/jcraft/jsch/Channel;->io:Lcom/jcraft/jsch/IO;

    iget-object v4, v4, Lcom/jcraft/jsch/IO;->in:Ljava/io/InputStream;

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->io_in:Ljava/io/InputStream;

    if-eqz v4, :cond_5

    new-instance v4, Lcom/jcraft/jsch/RequestSftp;

    invoke-direct {v4}, Lcom/jcraft/jsch/RequestSftp;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Channel;->getSession()Lcom/jcraft/jsch/Session;

    move-result-object v5

    invoke-virtual {v4, v5, p0}, Lcom/jcraft/jsch/RequestSftp;->request(Lcom/jcraft/jsch/Session;Lcom/jcraft/jsch/Channel;)V

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/Channel;->lmpsize:I

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    new-instance v5, Lcom/jcraft/jsch/Packet;

    invoke-direct {v5, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->packet:Lcom/jcraft/jsch/Packet;

    new-instance v4, Lcom/jcraft/jsch/Buffer;

    iget v5, p0, Lcom/jcraft/jsch/Channel;->rmpsize:I

    invoke-direct {v4, v5}, Lcom/jcraft/jsch/Buffer;-><init>(I)V

    iput-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->obuf:Lcom/jcraft/jsch/Buffer;

    new-instance v5, Lcom/jcraft/jsch/Packet;

    invoke-direct {v5, v4}, Lcom/jcraft/jsch/Packet;-><init>(Lcom/jcraft/jsch/Buffer;)V

    iput-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->opacket:Lcom/jcraft/jsch/Packet;

    invoke-direct {p0}, Lcom/jcraft/jsch/ChannelSftp;->sendINIT()V

    new-instance v4, Lcom/jcraft/jsch/ChannelSftp$Header;

    invoke-direct {v4, p0}, Lcom/jcraft/jsch/ChannelSftp$Header;-><init>(Lcom/jcraft/jsch/ChannelSftp;)V

    iget-object v5, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v5, v4}, Lcom/jcraft/jsch/ChannelSftp;->header(Lcom/jcraft/jsch/Buffer;Lcom/jcraft/jsch/ChannelSftp$Header;)Lcom/jcraft/jsch/ChannelSftp$Header;

    move-result-object v4

    iget v5, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->length:I

    const/high16 v6, 0x40000

    const/4 v7, 0x4

    if-gt v5, v6, :cond_4

    iget v3, v4, Lcom/jcraft/jsch/ChannelSftp$Header;->rid:I

    iput v3, p0, Lcom/jcraft/jsch/ChannelSftp;->server_version:I

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-direct {p0, v3, v5}, Lcom/jcraft/jsch/ChannelSftp;->fill(Lcom/jcraft/jsch/Buffer;I)V

    :goto_0
    if-lez v5, :cond_0

    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v3}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v3

    array-length v4, v3

    add-int/2addr v4, v7

    sub-int/2addr v5, v4

    iget-object v4, p0, Lcom/jcraft/jsch/ChannelSftp;->buf:Lcom/jcraft/jsch/Buffer;

    invoke-virtual {v4}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v4

    array-length v6, v4

    add-int/2addr v6, v7

    sub-int/2addr v5, v6

    iget-object v6, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v3

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "1"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v3, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_posix_rename:Z

    :cond_1
    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_statvfs:Z

    :cond_2
    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/jcraft/jsch/ChannelSftp;->extensions:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v5, p0, Lcom/jcraft/jsch/ChannelSftp;->extension_hardlink:Z

    :cond_3
    new-instance v0, Ljava/io/File;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jcraft/jsch/ChannelSftp;->lcwd:Ljava/lang/String;

    return-void

    :cond_4
    new-instance v0, Lcom/jcraft/jsch/SftpException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v7, v1}, Lcom/jcraft/jsch/SftpException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/jcraft/jsch/JSchException;

    const-string v1, "channel is down"

    invoke-direct {v0, v1}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    instance-of v1, v0, Lcom/jcraft/jsch/JSchException;

    if-nez v1, :cond_6

    new-instance v1, Lcom/jcraft/jsch/JSchException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    check-cast v0, Lcom/jcraft/jsch/JSchException;

    throw v0
.end method
