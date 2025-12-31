.class public Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;,
        Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;
    }
.end annotation


# instance fields
.field private atime:J

.field private ctime:J

.field private generation:I

.field private gid:I

.field private final header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

.field private ino:I

.field private mode:I

.field private mtime:J

.field private name:Ljava/lang/String;

.field private nlink:I

.field private offset:J

.field private originalName:Ljava/lang/String;

.field private permissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation
.end field

.field private simpleName:Ljava/lang/String;

.field private size:J

.field private final summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

.field private type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

.field private uid:I

.field private volume:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->UNKNOWN:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    return-void
.end method

.method public static parse([B)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
    .locals 9

    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;-><init>()V

    iget-object v1, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$002(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    const/16 v3, 0xc

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$102(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    const/16 v3, 0x14

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$202(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    const/16 v3, 0x20

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert16([BI)I

    move-result v3

    shr-int/lit8 v4, v3, 0xc

    and-int/lit8 v4, v4, 0xf

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->find(I)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setMode(I)V

    const/16 v3, 0x22

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert16([BI)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->nlink:I

    const/16 v3, 0x28

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert64([BI)J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setSize(J)V

    const/16 v3, 0x30

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    int-to-long v3, v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    const/16 v7, 0x34

    invoke-static {p0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v3, v7

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setAccessTime(Ljava/util/Date;)V

    const/16 v3, 0x38

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, v5

    const/16 v7, 0x3c

    invoke-static {p0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v7

    div-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    add-long/2addr v3, v7

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setLastModifiedDate(Ljava/util/Date;)V

    const/16 v3, 0x40

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    int-to-long v3, v3

    mul-long v3, v3, v5

    const/16 v5, 0x44

    invoke-static {p0, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v5

    div-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ctime:J

    const/16 v3, 0x8c

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    iput v3, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->generation:I

    const/16 v3, 0x90

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setUserId(I)V

    const/16 v3, 0x94

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->setGroupId(I)V

    const/16 v3, 0xa0

    invoke-static {p0, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveUtil;->convert32([BI)I

    move-result v3

    invoke-static {v1, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$302(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    invoke-static {v1, v2}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$402(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;I)I

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x200

    if-ge v3, v4, :cond_1

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$300(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    move-result v5

    if-ge v3, v5, :cond_1

    add-int/lit16 v4, v3, 0xa4

    aget-byte v4, p0, v4

    if-nez v4, :cond_0

    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$408(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->access$500(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;)[B

    move-result-object v3

    const/16 v5, 0xa4

    invoke-static {p0, v5, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getVolume()I

    move-result p0

    iput p0, v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->volume:I

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;

    iget-object v2, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    iget v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    if-nez v2, :cond_4

    iget-object v3, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    if-nez v3, :cond_5

    :cond_4
    if-eqz v2, :cond_6

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->summary:Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;

    invoke-virtual {v2, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveSummary;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    :cond_5
    return v1

    :cond_6
    return v0

    :cond_7
    :goto_0
    return v1
.end method

.method public getEntrySize()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-wide v0
.end method

.method public getHeaderCount()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getCount()I

    move-result v0

    return v0
.end method

.method public getHeaderHoles()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getHoles()I

    move-result v0

    return v0
.end method

.method public getHeaderType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getType()Lorg/apache/commons/compress/archivers/dump/DumpArchiveConstants$SEGMENT_TYPE;

    move-result-object v0

    return-object v0
.end method

.method public getIno()I
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getIno()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->originalName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->ino:I

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    sget-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;->DIRECTORY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSparseRecord(I)Z
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->header:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;

    invoke-virtual {v0, p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TapeSegmentHeader;->getCdata(I)I

    move-result p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setAccessTime(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->atime:J

    return-void
.end method

.method public setGroupId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->gid:I

    return-void
.end method

.method public setLastModifiedDate(Ljava/util/Date;)V
    .locals 2

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mtime:J

    return-void
.end method

.method public setMode(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xfff

    iput v0, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->mode:I

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->find(I)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->permissions:Ljava/util/Set;

    return-void
.end method

.method public final setName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->originalName:Ljava/lang/String;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "./"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->name:Ljava/lang/String;

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->offset:J

    return-void
.end method

.method public setSimpleName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->simpleName:Ljava/lang/String;

    return-void
.end method

.method public setSize(J)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->size:J

    return-void
.end method

.method public setType(Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->type:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$TYPE;

    return-void
.end method

.method public setUserId(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->uid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
