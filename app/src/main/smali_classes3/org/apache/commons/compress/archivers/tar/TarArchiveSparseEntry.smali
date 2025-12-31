.class public Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final isExtended:Z

.field private sparseHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([B)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->sparseHeaders:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x15

    if-ge v0, v1, :cond_2

    mul-int/lit8 v1, v0, 0x18

    invoke-static {p1, v1}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseSparse([BI)Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getOffset()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;->getNumbytes()J

    move-result-wide v2

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->sparseHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f8

    invoke-static {p1, v0}, Lorg/apache/commons/compress/archivers/tar/TarUtils;->parseBoolean([BI)Z

    move-result p1

    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    return-void
.end method


# virtual methods
.method public getSparseHeaders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/compress/archivers/tar/TarArchiveStructSparse;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->sparseHeaders:Ljava/util/List;

    return-object v0
.end method

.method public isExtended()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/tar/TarArchiveSparseEntry;->isExtended:Z

    return v0
.end method
