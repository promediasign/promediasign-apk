.class Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;
.super Lorg/apache/poi/xssf/binary/XSSFBParser;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSTBinaryReader"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;


# direct methods
.method public constructor <init>(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-direct {p0, p2}, Lorg/apache/poi/xssf/binary/XSSFBParser;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public handleRecord(I[B)V
    .locals 2

    invoke-static {p1}, Lorg/apache/poi/xssf/binary/XSSFBRecordType;->lookup(I)Lorg/apache/poi/xssf/binary/XSSFBRecordType;

    move-result-object p1

    sget-object v0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$1;->$SwitchMap$org$apache$poi$xssf$binary$XSSFBRecordType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-static {p2, v1}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result v0

    invoke-static {p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$102(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I

    iget-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lorg/apache/poi/util/LittleEndian;->getUInt([BI)J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->castToInt(J)I

    move-result p2

    invoke-static {p1, p2}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$202(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;I)I

    goto :goto_0

    :cond_1
    invoke-static {p2, v1}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    move-result-object p1

    iget-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable$SSTBinaryReader;->this$0:Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;

    invoke-static {p2}, Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;->access$000(Lorg/apache/poi/xssf/binary/XSSFBSharedStringsTable;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->getString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method
