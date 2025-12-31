.class public Lcom/jcraft/jsch/SftpATTRS;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field atime:I

.field extended:[Ljava/lang/String;

.field flags:I

.field gid:I

.field mtime:I

.field permissions:I

.field size:J

.field uid:I


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    return-void
.end method

.method public static getATTR(Lcom/jcraft/jsch/Buffer;)Lcom/jcraft/jsch/SftpATTRS;
    .locals 6

    new-instance v0, Lcom/jcraft/jsch/SftpATTRS;

    invoke-direct {v0}, Lcom/jcraft/jsch/SftpATTRS;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getLong()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    :cond_0
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    :cond_1
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    :cond_2
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->atime:I

    :cond_3
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    iput v1, v0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    :cond_4
    iget v1, v0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getInt()I

    move-result v1

    if-lez v1, :cond_5

    mul-int/lit8 v2, v1, 0x2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_5

    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    iget-object v3, v0, Lcom/jcraft/jsch/SftpATTRS;->extended:[Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p0}, Lcom/jcraft/jsch/Buffer;->getString()[B

    move-result-object v5

    invoke-static {v5}, Lcom/jcraft/jsch/Util;->byte2str([B)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method private isType(I)Z
    .locals 2

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    const v1, 0xf000

    and-int/2addr v0, v1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public getGId()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->gid:I

    return v0
.end method

.method public getMTime()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    return v0
.end method

.method public getMtimeString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->mtime:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionsString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->isDir()Z

    move-result v1

    const/16 v2, 0x2d

    if-eqz v1, :cond_0

    const/16 v1, 0x64

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x100

    const/16 v3, 0x72

    if-eqz v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v1, v1, 0x80

    const/16 v4, 0x77

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_3
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v5, v1, 0x800

    const/16 v6, 0x73

    const/16 v7, 0x78

    if-eqz v5, :cond_4

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_4
    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_5

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_4
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_6

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_6
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit16 v5, v1, 0x400

    if-eqz v5, :cond_8

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_8
    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_7

    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_7
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_8

    :cond_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_8
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_9

    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_9
    iget v1, p0, Lcom/jcraft/jsch/SftpATTRS;->permissions:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_a
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()J
    .locals 2

    iget-wide v0, p0, Lcom/jcraft/jsch/SftpATTRS;->size:J

    return-wide v0
.end method

.method public getUId()I
    .locals 1

    iget v0, p0, Lcom/jcraft/jsch/SftpATTRS;->uid:I

    return v0
.end method

.method public isDir()Z
    .locals 1

    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public isLink()Z
    .locals 1

    const v0, 0xa000

    invoke-direct {p0, v0}, Lcom/jcraft/jsch/SftpATTRS;->isType(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getPermissionsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getUId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getGId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getSize()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jcraft/jsch/SftpATTRS;->getMtimeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
