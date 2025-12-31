.class final Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/hssf/dev/BiffViewer$IBiffRecordListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/hssf/dev/BiffViewer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BiffRecordListener"
.end annotation


# instance fields
.field private _headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final _hexDumpWriter:Ljava/io/Writer;

.field private final _noHeader:Z

.field private final _zeroAlignEachRecord:Z


# direct methods
.method public constructor <init>(Ljava/io/Writer;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_hexDumpWriter:Ljava/io/Writer;

    iput-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_zeroAlignEachRecord:Z

    iput-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_noHeader:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    return-void
.end method

.method private static formatRecordDetails(IIII)Ljava/lang/String;
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    const-string v1, "Offset="

    .line 4
    .line 5
    invoke-static {v0, v1}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0}, Lorg/apache/poi/util/HexDump;->intToHex(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "("

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p0, ") recno="

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p0, " sid="

    .line 33
    .line 34
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {p1}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string p0, " size="

    .line 45
    .line 46
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Lorg/apache/poi/util/HexDump;->shortToHex(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string p0, ")"

    .line 63
    .line 64
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p0

    .line 71
    return-object p0
.end method


# virtual methods
.method public getRecentHeaders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    return-object v0
.end method

.method public processRecord(IIII[B)V
    .locals 0

    invoke-static {p1, p3, p4, p2}, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->formatRecordDetails(IIII)Ljava/lang/String;

    move-result-object p2

    iget-boolean p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_noHeader:Z

    if-nez p3, :cond_0

    iget-object p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_headers:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p3, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_hexDumpWriter:Ljava/io/Writer;

    if-eqz p3, :cond_1

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-static {}, Lorg/apache/poi/hssf/dev/BiffViewer;->access$000()[C

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write([C)V

    add-int/lit8 p4, p4, 0x4

    iget-boolean p2, p0, Lorg/apache/poi/hssf/dev/BiffViewer$BiffRecordListener;->_zeroAlignEachRecord:Z

    invoke-static {p3, p5, p4, p1, p2}, Lorg/apache/poi/hssf/dev/BiffViewer;->hexDumpAligned(Ljava/io/Writer;[BIIZ)V

    invoke-virtual {p3}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_1
    :goto_0
    return-void
.end method
