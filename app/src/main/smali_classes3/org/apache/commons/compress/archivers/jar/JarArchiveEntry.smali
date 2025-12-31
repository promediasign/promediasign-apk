.class public Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;
.super Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;
.source "SourceFile"


# instance fields
.field private final certificates:[Ljava/security/cert/Certificate;

.field private final manifestAttributes:Ljava/util/jar/Attributes;


# direct methods
.method public constructor <init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->manifestAttributes:Ljava/util/jar/Attributes;

    iput-object p1, p0, Lorg/apache/commons/compress/archivers/jar/JarArchiveEntry;->certificates:[Ljava/security/cert/Certificate;

    return-void
.end method
