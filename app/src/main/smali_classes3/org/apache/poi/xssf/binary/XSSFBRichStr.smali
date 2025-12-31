.class Lorg/apache/poi/xssf/binary/XSSFBRichStr;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final phoneticString:Ljava/lang/String;

.field private final string:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->string:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->phoneticString:Ljava/lang/String;

    return-void
.end method

.method public static build([BI)Lorg/apache/poi/xssf/binary/XSSFBRichStr;
    .locals 1

    aget-byte v0, p0, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBUtils;->readXLWideString([BILjava/lang/StringBuilder;)I

    new-instance p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lorg/apache/poi/xssf/binary/XSSFBRichStr;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/xssf/binary/XSSFBRichStr;->string:Ljava/lang/String;

    return-object v0
.end method
