.class Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/eventusermodel/XSSFBReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PathExtractor"
.end annotation


# static fields
.field private static RECORDS:Ljava/util/BitSet;


# instance fields
.field private path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    sput-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Ljava/util/BitSet;

    sget-object v1, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->RECORDS:Ljava/util/BitSet;

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;Ljava/util/BitSet;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-object v0
.end method

.method public handleRecord(I[B)V
    .locals 1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->BrtAbsPath15:Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    invoke-virtual {v0}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->getId()I

    move-result v0

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    invoke-static {p2, v0, p1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/poi/xssf/eventusermodel/XSSFBReader$PathExtractor;->path:Ljava/lang/String;

    return-void
.end method
