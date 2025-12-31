.class public Lcom/jcraft/jsch/HostKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final names:[[B


# instance fields
.field protected comment:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field protected key:[B

.field protected marker:Ljava/lang/String;

.field protected type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "ssh-dss"

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "ssh-rsa"

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v1

    const-string v2, "ecdsa-sha2-nistp256"

    invoke-static {v2}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v2

    const-string v3, "ecdsa-sha2-nistp384"

    invoke-static {v3}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v3

    const-string v4, "ecdsa-sha2-nistp521"

    invoke-static {v4}, Lcom/jcraft/jsch/Util;->str2byte(Ljava/lang/String;)[B

    move-result-object v4

    const/4 v5, 0x5

    new-array v5, v5, [[B

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v2, v5, v0

    const/4 v0, 0x3

    aput-object v3, v5, v0

    const/4 v0, 0x4

    aput-object v4, v5, v0

    sput-object v5, Lcom/jcraft/jsch/HostKey;->names:[[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 6

    .line 2
    const-string v1, ""

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I[BLjava/lang/String;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    iput-object p2, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    if-nez p3, :cond_5

    const/16 p1, 0x8

    aget-byte p1, p4, p1

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    :goto_0
    iput p1, p0, Lcom/jcraft/jsch/HostKey;->type:I

    goto :goto_1

    :cond_0
    const/16 p2, 0x72

    if-ne p1, p2, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/16 p2, 0x14

    const/16 p3, 0x61

    if-ne p1, p3, :cond_2

    aget-byte v0, p4, p2

    const/16 v1, 0x32

    if-ne v0, v1, :cond_2

    const/4 p1, 0x3

    goto :goto_0

    :cond_2
    if-ne p1, p3, :cond_3

    aget-byte v0, p4, p2

    const/16 v1, 0x33

    if-ne v0, v1, :cond_3

    const/4 p1, 0x4

    goto :goto_0

    :cond_3
    if-ne p1, p3, :cond_4

    aget-byte p1, p4, p2

    const/16 p2, 0x35

    if-ne p1, p2, :cond_4

    const/4 p1, 0x5

    goto :goto_0

    :cond_4
    new-instance p1, Lcom/jcraft/jsch/JSchException;

    const-string p2, "invalid key type"

    invoke-direct {p1, p2}, Lcom/jcraft/jsch/JSchException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    iput p3, p0, Lcom/jcraft/jsch/HostKey;->type:I

    :goto_1
    iput-object p4, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    iput-object p5, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/jcraft/jsch/HostKey;-><init>(Ljava/lang/String;I[B)V

    return-void
.end method

.method private isIncluded(Ljava/lang/String;)Z
    .locals 11

    iget-object v6, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v7, :cond_3

    const/16 v0, 0x2c

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    const/4 v0, -0x1

    if-ne v10, v0, :cond_1

    sub-int/2addr v7, v2

    if-eq v8, v7, :cond_0

    return v9

    :cond_0
    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_1
    sub-int v0, v10, v2

    if-ne v8, v0, :cond_2

    const/4 v1, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v3, p1

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v10, 0x1

    goto :goto_0

    :cond_3
    return v9
.end method

.method public static name2type(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    :cond_0
    sget-object v1, Lcom/jcraft/jsch/HostKey;->names:[[B

    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    add-int/lit8 v0, v0, 0x1

    if-eqz v1, :cond_0

    return v0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method


# virtual methods
.method public getComment()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getHost()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->key:[B

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/jcraft/jsch/Util;->toBase64([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMarker()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/jcraft/jsch/HostKey;->marker:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/jcraft/jsch/HostKey;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "UNKNOWN"

    return-object v0

    :cond_1
    :goto_0
    sget-object v2, Lcom/jcraft/jsch/HostKey;->names:[[B

    sub-int/2addr v0, v1

    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMatched(Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/jcraft/jsch/HostKey;->isIncluded(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
