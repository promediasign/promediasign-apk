.class public Lio/milton/http/XmlWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/milton/http/XmlWriter$Element;,
        Lio/milton/http/XmlWriter$Type;
    }
.end annotation


# instance fields
.field private allowNewlines:Z

.field protected final charset:Ljava/nio/charset/Charset;

.field private log:Lorg/slf4j/Logger;

.field protected final out:Ljava/io/OutputStream;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Lio/milton/http/XmlWriter;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lio/milton/http/XmlWriter;->log:Lorg/slf4j/Logger;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/milton/http/XmlWriter;->allowNewlines:Z

    iput-object p1, p0, Lio/milton/http/XmlWriter;->out:Ljava/io/OutputStream;

    invoke-static {}, Lio/milton/http/XmlWriter;->utf8()Ljava/nio/charset/Charset;

    move-result-object p1

    iput-object p1, p0, Lio/milton/http/XmlWriter;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public static synthetic access$000(Lio/milton/http/XmlWriter;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lio/milton/http/XmlWriter;C)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/XmlWriter;->append(C)V

    return-void
.end method

.method private append(C)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/milton/http/XmlWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private append(Ljava/lang/String;)V
    .locals 1

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/milton/http/XmlWriter;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iget-object v0, p0, Lio/milton/http/XmlWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static utf8()Ljava/nio/charset/Charset;
    .locals 1

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public begin(Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 2

    .line 1
    new-instance v0, Lio/milton/http/XmlWriter$Element;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/milton/http/XmlWriter$Element;-><init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;)V

    return-object v0
.end method

.method public begin(Ljava/lang/String;Ljava/lang/String;)Lio/milton/http/XmlWriter$Element;
    .locals 2

    .line 2
    new-instance v0, Lio/milton/http/XmlWriter$Element;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, p2}, Lio/milton/http/XmlWriter$Element;-><init>(Lio/milton/http/XmlWriter;Lio/milton/http/XmlWriter$Element;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public close(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget-object v1, Lio/milton/http/XmlWriter$Type;->CLOSING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, v0, p1, v1}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public close(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lio/milton/http/XmlWriter$Type;->CLOSING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public flush()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/milton/http/XmlWriter;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public newLine()V
    .locals 1

    iget-boolean v0, p0, Lio/milton/http/XmlWriter;->allowNewlines:Z

    if-eqz v0, :cond_0

    const-string v0, "\n"

    invoke-direct {p0, v0}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public open(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget-object v1, Lio/milton/http/XmlWriter$Type;->OPENING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, v0, p1, v1}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lio/milton/http/XmlWriter$Type;->OPENING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public writeElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V
    .locals 9

    const-string v0, "/>"

    const-string v1, "</"

    const/4 v2, 0x2

    const/4 v3, 0x1

    const-string v4, ">"

    const-string v5, "<"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_4

    sget-object v6, Lio/milton/http/XmlWriter$1;->$SwitchMap$io$milton$http$XmlWriter$Type:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    aget p4, v6, p4

    const-string v6, "=\""

    const-string v7, " xmlns:"

    const-string v8, ":"

    if-eq p4, v3, :cond_2

    if-eq p4, v2, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-static {v5, p1, v8, p3, v7}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"/>"

    :goto_0
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-direct {p0, p1}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_0
    invoke-static {v5, p1, v8, p3, v0}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    invoke-static {v1, p1, v8, p3, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    invoke-virtual {p0}, Lio/milton/http/XmlWriter;->newLine()V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    .line 6
    invoke-static {v5, p1, v8, p3, v7}, Lorg/apache/ftpserver/main/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 7
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\">"

    goto :goto_0

    .line 8
    :cond_3
    invoke-static {v5, p1, v8, p3, v4}, Lch/qos/logback/core/joran/util/a;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_4
    sget-object p1, Lio/milton/http/XmlWriter$1;->$SwitchMap$io$milton$http$XmlWriter$Type:[I

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    if-eq p1, v3, :cond_6

    if-eq p1, v2, :cond_5

    .line 10
    invoke-static {v5, p3, v0}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 11
    :cond_5
    const-string p1, ">\n"

    .line 12
    invoke-static {v1, p3, p1}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    invoke-static {v5, p3, v4}, Lch/qos/logback/core/joran/util/a;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :goto_2
    return-void
.end method

.method public writeProperty(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    sget-object v1, Lio/milton/http/XmlWriter$Type;->NO_CONTENT:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, v0, p1, v1}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public writeProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-object v0, Lio/milton/http/XmlWriter$Type;->NO_CONTENT:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    return-void
.end method

.method public writeProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    if-nez p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lio/milton/http/XmlWriter;->writeProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lio/milton/http/XmlWriter$Type;->OPENING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, p1, p2, v0}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    invoke-direct {p0, p3}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    sget-object p3, Lio/milton/http/XmlWriter$Type;->CLOSING:Lio/milton/http/XmlWriter$Type;

    invoke-virtual {p0, p1, p2, p3}, Lio/milton/http/XmlWriter;->writeElement(Ljava/lang/String;Ljava/lang/String;Lio/milton/http/XmlWriter$Type;)V

    :goto_0
    return-void
.end method

.method public writeText(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method

.method public writeXMLHeader()V
    .locals 1

    const-string v0, "<?xml version=\"1.0\" encoding=\"utf-8\" ?>\n"

    invoke-direct {p0, v0}, Lio/milton/http/XmlWriter;->append(Ljava/lang/String;)V

    return-void
.end method
