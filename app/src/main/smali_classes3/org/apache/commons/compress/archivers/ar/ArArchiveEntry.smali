.class public Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/compress/archivers/ArchiveEntry;


# instance fields
.field private final groupId:I

.field private final lastModified:J

.field private final length:J

.field private final mode:I

.field private final name:Ljava/lang/String;

.field private final userId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 13

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v11, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const v10, 0x81a4

    move-object v4, p0

    move-object v5, p1

    move-wide v6, p2

    invoke-direct/range {v4 .. v12}, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;-><init>(Ljava/lang/String;JIIIJ)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JIIIJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    iput-wide p2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    iput p4, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->userId:I

    iput p5, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->groupId:I

    iput p6, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->mode:I

    iput-wide p7, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->lastModified:J

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    iget-object p1, p1, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_3
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_4
    :goto_1
    return v1
.end method

.method public getLength()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->length:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/ar/ArArchiveEntry;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public isDirectory()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
