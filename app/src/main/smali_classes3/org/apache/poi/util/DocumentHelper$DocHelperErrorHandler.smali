.class Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/poi/util/DocumentHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocHelperErrorHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lorg/apache/poi/util/DocumentHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;-><init>()V

    return-void
.end method

.method private printError(ILorg/xml/sax/SAXParseException;)V
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lorg/apache/poi/util/DocumentHelper;->access$000()Lorg/apache/poi/util/POILogger;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    aput-object p2, v3, v0

    invoke-virtual {v2, p1, v3}, Lorg/apache/poi/util/POILogger;->log(I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;->printError(ILorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;->printError(ILorg/xml/sax/SAXParseException;)V

    throw p1
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const/4 v0, 0x5

    invoke-direct {p0, v0, p1}, Lorg/apache/poi/util/DocumentHelper$DocHelperErrorHandler;->printError(ILorg/xml/sax/SAXParseException;)V

    return-void
.end method
