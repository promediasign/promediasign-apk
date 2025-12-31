.class Lorg/apache/poi/hssf/record/SSTDeserializer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static logger:Lorg/apache/poi/util/POILogger;


# instance fields
.field private strings:Lorg/apache/poi/util/IntMapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lorg/apache/poi/hssf/record/SSTDeserializer;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/hssf/record/SSTDeserializer;->logger:Lorg/apache/poi/util/POILogger;

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/IntMapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    return-void
.end method

.method public static addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/poi/util/IntMapper<",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ">;",
            "Lorg/apache/poi/hssf/record/common/UnicodeString;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/poi/util/IntMapper;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public manufactureStrings(ILorg/apache/poi/hssf/record/RecordInputStream;)V
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x0

    .line 4
    :goto_0
    if-ge v2, p1, :cond_1

    .line 5
    .line 6
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->available()I

    .line 7
    .line 8
    .line 9
    move-result v3

    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {p2}, Lorg/apache/poi/hssf/record/RecordInputStream;->hasNextRecord()Z

    .line 13
    .line 14
    .line 15
    move-result v3

    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    sget-object v3, Lorg/apache/poi/hssf/record/SSTDeserializer;->logger:Lorg/apache/poi/util/POILogger;

    .line 19
    .line 20
    const-string v4, "Ran out of data before creating all the strings! String at index "

    .line 21
    .line 22
    const-string v5, ""

    .line 23
    .line 24
    invoke-static {v2, v4, v5}, Lch/qos/logback/core/joran/util/a;->g(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    new-array v6, v0, [Ljava/lang/Object;

    .line 29
    .line 30
    aput-object v4, v6, v1

    .line 31
    .line 32
    const/4 v4, 0x7

    .line 33
    invoke-virtual {v3, v4, v6}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 37
    .line 38
    invoke-direct {v3, v5}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    new-instance v3, Lorg/apache/poi/hssf/record/common/UnicodeString;

    .line 43
    .line 44
    invoke-direct {v3, p2}, Lorg/apache/poi/hssf/record/common/UnicodeString;-><init>(Lorg/apache/poi/hssf/record/RecordInputStream;)V

    .line 45
    .line 46
    .line 47
    :goto_1
    iget-object v4, p0, Lorg/apache/poi/hssf/record/SSTDeserializer;->strings:Lorg/apache/poi/util/IntMapper;

    .line 48
    .line 49
    invoke-static {v4, v3}, Lorg/apache/poi/hssf/record/SSTDeserializer;->addToStringTable(Lorg/apache/poi/util/IntMapper;Lorg/apache/poi/hssf/record/common/UnicodeString;)V

    .line 50
    .line 51
    .line 52
    add-int/2addr v2, v0

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-void
.end method
