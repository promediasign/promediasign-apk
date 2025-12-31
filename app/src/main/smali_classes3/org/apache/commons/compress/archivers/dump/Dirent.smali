.class Lorg/apache/commons/compress/archivers/dump/Dirent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final ino:I

.field private final name:Ljava/lang/String;

.field private final parentIno:I

.field private final type:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    iput p2, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->type:I

    iput-object p4, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getIno()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParentIno()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->parentIno:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->ino:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/dump/Dirent;->name:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v0, "[%d]: %s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
