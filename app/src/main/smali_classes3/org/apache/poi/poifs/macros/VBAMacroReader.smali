.class public Lorg/apache/poi/poifs/macros/VBAMacroReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;,
        Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;
    }
.end annotation


# static fields
.field private static final UTF_16LE:Ljava/nio/charset/Charset;

.field protected static final VBA_PROJECT_OOXML:Ljava/lang/String; = "vbaProject.bin"

.field protected static final VBA_PROJECT_POIFS:Ljava/lang/String; = "VBA"


# instance fields
.field private fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-16LE"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->UTF_16LE:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_end_0
    .catch Lorg/apache/poi/poifs/filesystem/OfficeXmlFileException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->prepareToCheckMagic(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/poifs/filesystem/FileMagic;->valueOf(Ljava/io/InputStream;)Lorg/apache/poi/poifs/filesystem/FileMagic;

    move-result-object v0

    sget-object v1, Lorg/apache/poi/poifs/filesystem/FileMagic;->OLE2:Lorg/apache/poi/poifs/filesystem/FileMagic;

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {v0, p1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->openOOXML(Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-void
.end method

.method private openOOXML(Ljava/io/InputStream;)V
    .locals 2

    new-instance v0, Ljava/util/zip/ZipInputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "vbaProject.bin"

    invoke-static {p1, v1}, Lorg/apache/poi/util/StringUtil;->endsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    new-instance p1, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-direct {p1, v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;-><init>(Ljava/io/InputStream;)V

    iput-object p1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    throw p1

    :cond_1
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->close()V

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No VBA project found"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static readModule(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 4

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;-><init>()V

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    goto :goto_0

    :cond_0
    iget-object p2, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    if-nez p2, :cond_3

    iget-object p2, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-long p1, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->skip(J)J

    move-result-wide p1

    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_1

    new-instance p1, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {p1, p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tried to skip "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " bytes, but actually skipped "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " bytes"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p2, "Module offset for \'"

    const-string v0, "\' was never read."

    .line 1
    invoke-static {p2, p1, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method private static readModule(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 3

    .line 8
    invoke-virtual {p0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result p0

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;-><init>()V

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iput-object p0, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->offset:Ljava/lang/Integer;

    invoke-virtual {p2, p1, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/poi/util/RLEDecompressingInputStream;

    new-instance p2, Ljava/io/ByteArrayInputStream;

    iget-object v1, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    array-length v2, v1

    sub-int/2addr v2, p0

    invoke-direct {p2, v1, p0, v2}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    invoke-direct {p1, p2}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0, p1}, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->read(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    :goto_0
    return-void
.end method

.method private static readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 2

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result p0

    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p0, p2}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method private readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;
    .locals 1

    new-array p2, p2, [B

    invoke-static {p1, p2}, Lorg/apache/poi/util/IOUtils;->readFully(Ljava/io/InputStream;[B)I

    new-instance p1, Ljava/lang/String;

    sget-object v0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p1
.end method

.method private static trySkip(Ljava/io/InputStream;J)V
    .locals 5

    .line 1
    invoke-virtual {p0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    cmp-long p0, v0, p1

    .line 6
    .line 7
    if-eqz p0, :cond_1

    .line 8
    .line 9
    const-wide/16 v2, 0x0

    .line 10
    .line 11
    const-string p0, "Tried skipping "

    .line 12
    .line 13
    cmp-long v4, v0, v2

    .line 14
    .line 15
    if-gez v4, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/io/IOException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p0, " bytes, but no bytes were skipped. The end of the stream has been reached or the stream is closed."

    .line 28
    .line 29
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0

    .line 40
    :cond_0
    new-instance v2, Ljava/io/IOException;

    .line 41
    .line 42
    const-string v3, " bytes, but only "

    .line 43
    .line 44
    invoke-static {p0, p1, p2, v3}, Ls/a;->e(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    const-string p1, " bytes were skipped. This should never happen."

    .line 49
    .line 50
    invoke-static {p0, v0, v1, p1}, LA/g;->l(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    invoke-direct {v2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw v2

    .line 58
    :cond_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v0}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    return-void
.end method

.method public findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/EntryNode;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VBA"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    if-eqz v1, :cond_1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    invoke-virtual {p0, v0, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public readMacros()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;

    invoke-direct {v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;-><init>()V

    iget-object v1, p0, Lorg/apache/poi/poifs/macros/VBAMacroReader;->fs:Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;

    invoke-virtual {v1}, Lorg/apache/poi/poifs/filesystem/NPOIFSFileSystem;->getRoot()Lorg/apache/poi/poifs/filesystem/DirectoryNode;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->findMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Ljava/util/AbstractMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;

    iget-object v5, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    if-eqz v5, :cond_0

    array-length v5, v5

    if-lez v5, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    iget-object v4, v4, Lorg/apache/poi/poifs/macros/VBAMacroReader$Module;->buf:[B

    iget-object v6, v0, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v6}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-virtual {v1, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public readMacros(Lorg/apache/poi/poifs/filesystem/DirectoryNode;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    .locals 6

    .line 2
    invoke-virtual {p1}, Lorg/apache/poi/poifs/filesystem/DirectoryNode;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/poi/poifs/filesystem/Entry;

    instance-of v1, v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/poi/poifs/filesystem/Entry;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast v0, Lorg/apache/poi/poifs/filesystem/DocumentNode;

    new-instance v2, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;

    invoke-direct {v2, v0}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;-><init>(Lorg/apache/poi/poifs/filesystem/DocumentEntry;)V

    :try_start_0
    const-string v0, "dir"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lorg/apache/poi/util/RLEDecompressingInputStream;

    invoke-direct {v0, v2}, Lorg/apache/poi/util/RLEDecompressingInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v3

    const/4 v4, -0x1

    if-eq v4, v3, :cond_7

    const/16 v4, 0x10

    if-ne v4, v3, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_6

    const/16 v5, 0x9

    if-eq v3, v5, :cond_5

    const/16 v5, 0x1a

    if-eq v3, v5, :cond_3

    const/16 v5, 0x31

    if-eq v3, v5, :cond_2

    int-to-long v4, v4

    invoke-static {v0, v4, v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    invoke-static {v0, v1, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModule(Lorg/apache/poi/util/RLEDecompressingInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V

    goto :goto_1

    :cond_3
    iget-object v1, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v4, v1}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readString(Ljava/io/InputStream;ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v4

    const/16 v5, 0x32

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readInt()I

    move-result v4

    invoke-direct {p0, v0, v4}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readUnicodeString(Lorg/apache/poi/util/RLEDecompressingInputStream;I)Ljava/lang/String;

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected x0032 after stream name before Unicode stream name, but found: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    const-wide/16 v4, 0x6

    invoke-static {v0, v4, v5}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->trySkip(Ljava/io/InputStream;J)V

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->readShort()I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lorg/apache/poi/util/CodePageUtil;->codepageToEncoding(IZ)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v4

    iput-object v4, p2, Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;->charset:Ljava/nio/charset/Charset;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_7
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_6

    :goto_3
    :try_start_3
    new-instance p2, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error occurred while reading macros at section id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/poi/util/RLEDecompressingInputStream;->close()V

    throw p1

    :cond_8
    const-string v0, "__SRP"

    invoke-static {v1, v0}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    const-string v0, "_VBA_PROJECT"

    invoke-static {v1, v0}, Lorg/apache/poi/util/StringUtil;->startsWithIgnoreCase(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v2, v1, p2}, Lorg/apache/poi/poifs/macros/VBAMacroReader;->readModule(Lorg/apache/poi/poifs/filesystem/DocumentInputStream;Ljava/lang/String;Lorg/apache/poi/poifs/macros/VBAMacroReader$ModuleMap;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_9
    :goto_5
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    goto/16 :goto_0

    :goto_6
    invoke-virtual {v2}, Lorg/apache/poi/poifs/filesystem/DocumentInputStream;->close()V

    throw p1

    :cond_a
    return-void
.end method
