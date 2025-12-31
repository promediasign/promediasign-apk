.class public Lorg/apache/poi/xssf/binary/XSSFBRelation;
.super Lorg/apache/poi/POIXMLRelation;
.source "SourceFile"


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# static fields
.field static final SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

.field public static final STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

.field private static final log:Lorg/apache/poi/util/POILogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-class v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;

    invoke-static {v0}, Lorg/apache/poi/util/POILogFactory;->getLogger(Ljava/lang/Class;)Lorg/apache/poi/util/POILogger;

    move-result-object v0

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->log:Lorg/apache/poi/util/POILogger;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;

    const-string v1, "application/vnd.ms-excel.sharedStrings"

    const-string v2, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/sharedStrings"

    const-string v3, "/xl/sharedStrings.bin"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/poi/xssf/binary/XSSFBRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->SHARED_STRINGS_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    new-instance v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;

    const-string v1, "http://schemas.openxmlformats.org/officeDocument/2006/relationships/styles"

    const-string v2, "/xl/styles.bin"

    const-string v3, "application/vnd.ms-excel.styles"

    invoke-direct {v0, v3, v1, v2, v4}, Lorg/apache/poi/xssf/binary/XSSFBRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lorg/apache/poi/xssf/binary/XSSFBRelation;->STYLES_BINARY:Lorg/apache/poi/xssf/binary/XSSFBRelation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lorg/apache/poi/POIXMLDocumentPart;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/poi/POIXMLRelation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
