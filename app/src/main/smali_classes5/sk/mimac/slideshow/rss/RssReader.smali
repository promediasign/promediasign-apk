.class public Lsk/mimac/slideshow/rss/RssReader;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DOCUMENT_BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private static final INSTANCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lsk/mimac/slideshow/utils/Couple<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lsk/mimac/slideshow/rss/RssReader;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG:Lorg/slf4j/Logger;

.field private static final REMOVE_XML_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private messageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;"
        }
    .end annotation
.end field

.field private position:I

.field private final removeXml:Z

.field private final rssUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, ""

    const-class v1, Lsk/mimac/slideshow/rss/RssReader;

    invoke-static {v1}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    const-string v1, "<[^>]+>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/rss/RssReader;->REMOVE_XML_PATTERN:Ljava/util/regex/Pattern;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lsk/mimac/slideshow/rss/RssReader;->INSTANCES:Ljava/util/Map;

    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    sput-object v1, Lsk/mimac/slideshow/rss/RssReader;->DOCUMENT_BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setExpandEntityReferences(Z)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setXIncludeAware(Z)V

    const-string v3, "http://xml.org/sax/features/external-general-entities"

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://xml.org/sax/features/external-parameter-entities"

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/disallow-doctype-decl"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-virtual {v1, v3, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalSchema"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/rss/RssReader;->position:I

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/rss/RssReader;->rssUrls:[Ljava/lang/String;

    iput-boolean p2, p0, Lsk/mimac/slideshow/rss/RssReader;->removeXml:Z

    return-void
.end method

.method public static clearCache()V
    .locals 1

    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->INSTANCES:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private createRssMessage(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/rss/RssMessage;
    .locals 5

    .line 1
    iget-boolean v0, p0, Lsk/mimac/slideshow/rss/RssReader;->removeXml:Z

    if-eqz v0, :cond_0

    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->REMOVE_XML_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "&nbsp;"

    const-string v3, " "

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/text/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/commons/text/StringEscapeUtils;->unescapeXml(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->RSS_TITLE_MAX_LENGTH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "..."

    const/4 v4, 0x0

    if-le v2, v0, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_1
    sget-object v0, Lsk/mimac/slideshow/settings/UserSettings;->RSS_MESSAGE_MAX_LENGTH:Lsk/mimac/slideshow/settings/UserSettings;

    invoke-virtual {v0}, Lsk/mimac/slideshow/settings/UserSettings;->getInteger()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v0, -0x5

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2
    new-instance v0, Lsk/mimac/slideshow/rss/RssMessage;

    invoke-direct {v0, p1, p2}, Lsk/mimac/slideshow/rss/RssMessage;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private createRssMessage(Lorg/w3c/dom/Element;)Lsk/mimac/slideshow/rss/RssMessage;
    .locals 4

    .line 2
    const-string v0, "title"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lsk/mimac/slideshow/rss/RssReader;->getElementValue(Lorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "summary"

    const-string v2, "content"

    const-string v3, "description"

    filled-new-array {v3, v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lsk/mimac/slideshow/rss/RssReader;->getElementValue(Lorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lsk/mimac/slideshow/rss/RssReader;->createRssMessage(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/rss/RssMessage;

    move-result-object p1

    return-object p1
.end method

.method private static findPresentElement(Lorg/w3c/dom/Element;[Ljava/lang/String;)Lorg/w3c/dom/Element;
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    invoke-interface {v3, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getContent(Lokhttp3/OkHttpClient;Ljava/lang/String;)[B
    .locals 3

    .line 1
    const-string v0, "Request to \""

    .line 2
    .line 3
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 4
    .line 5
    invoke-virtual {p2, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "http://"

    .line 10
    .line 11
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_1

    .line 16
    .line 17
    const-string v2, "https://"

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-nez v2, :cond_1

    .line 24
    .line 25
    const-string v2, "ftp://"

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    sget-object v1, Lsk/mimac/slideshow/FileConstants;->CONTENT_PATH:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1, p2, v0}, Lch/qos/logback/core/joran/util/a;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :try_start_0
    invoke-static {p1}, Lorg/apache/commons/io/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    .line 51
    .line 52
    .line 53
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    .line 55
    .line 56
    .line 57
    return-object p2

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception p1

    .line 64
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    :goto_0
    throw p2

    .line 68
    :cond_1
    :goto_1
    new-instance v1, Lokhttp3/Request$Builder;

    .line 69
    .line 70
    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    :try_start_2
    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    .line 90
    .line 91
    .line 92
    move-result v1

    .line 93
    if-eqz v1, :cond_2

    .line 94
    .line 95
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    .line 96
    .line 97
    .line 98
    move-result-object p2

    .line 99
    invoke-virtual {p2}, Lokhttp3/ResponseBody;->bytes()[B

    .line 100
    .line 101
    .line 102
    move-result-object p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 103
    invoke-virtual {p1}, Lokhttp3/Response;->close()V

    .line 104
    .line 105
    .line 106
    return-object p2

    .line 107
    :catchall_2
    move-exception p2

    .line 108
    goto :goto_2

    .line 109
    :cond_2
    :try_start_3
    new-instance v1, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;

    .line 110
    .line 111
    new-instance v2, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    const-string p2, "\" returned "

    .line 120
    .line 121
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 125
    .line 126
    .line 127
    move-result p2

    .line 128
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    const-string p2, ": \""

    .line 132
    .line 133
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1}, Lokhttp3/Response;->message()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string p2, "\""

    .line 144
    .line 145
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p2

    .line 152
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    invoke-direct {v1, p2, v0}, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;-><init>(Ljava/lang/String;I)V

    .line 157
    .line 158
    .line 159
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 160
    :goto_2
    if-eqz p1, :cond_3

    .line 161
    .line 162
    :try_start_4
    invoke-virtual {p1}, Lokhttp3/Response;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 163
    .line 164
    .line 165
    goto :goto_3

    .line 166
    :catchall_3
    move-exception p1

    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 168
    .line 169
    .line 170
    :cond_3
    :goto_3
    throw p2
.end method

.method private static declared-synchronized getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;
    .locals 2

    const-class v0, Lsk/mimac/slideshow/rss/RssReader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lsk/mimac/slideshow/rss/RssReader;->DOCUMENT_BUILDER_FACTORY:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static varargs getElementValue(Lorg/w3c/dom/Element;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p0, p1}, Lsk/mimac/slideshow/rss/RssReader;->findPresentElement(Lorg/w3c/dom/Element;[Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    instance-of v4, v3, Lorg/w3c/dom/CharacterData;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/w3c/dom/CharacterData;

    invoke-interface {v3}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    const/16 p0, 0xa

    const/16 v1, 0x20

    invoke-virtual {v3, p0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const-string v1, "\r"

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :goto_1
    sget-object v1, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    const-string v2, "Unexpected exception while getting element value [labels={}]"

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1, p0}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public static getInstance(Ljava/lang/String;Z)Lsk/mimac/slideshow/rss/RssReader;
    .locals 3

    new-instance v0, Lsk/mimac/slideshow/utils/Couple;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lsk/mimac/slideshow/utils/Couple;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lsk/mimac/slideshow/rss/RssReader;->INSTANCES:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/rss/RssReader;

    if-nez v2, :cond_0

    new-instance v2, Lsk/mimac/slideshow/rss/RssReader;

    invoke-direct {v2, p0, p1}, Lsk/mimac/slideshow/rss/RssReader;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v2
.end method

.method private getNewsFromDb()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    invoke-static {}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getInstance()Lsk/mimac/slideshow/database/dao/RssServerMessageDao;

    move-result-object v1

    invoke-virtual {v1}, Lsk/mimac/slideshow/database/dao/RssServerMessageDao;->getAllCurrent()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/database/entity/RssServerMessage;

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lsk/mimac/slideshow/database/entity/RssServerMessage;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lsk/mimac/slideshow/rss/RssReader;->createRssMessage(Ljava/lang/String;Ljava/lang/String;)Lsk/mimac/slideshow/rss/RssMessage;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/sql/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    const-string v3, "Can\'t get RSS messages from DB"

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v0
.end method

.method private getNewsFromPage(Lokhttp3/OkHttpClient;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;"
        }
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lsk/mimac/slideshow/rss/RssReader;->getContent(Lokhttp3/OkHttpClient;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {}, Lsk/mimac/slideshow/rss/RssReader;->getDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    :catch_2
    :try_start_2
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    const-string p1, " & "

    const-string v3, " &amp; "

    invoke-virtual {v1, p1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Lsk/mimac/slideshow/rss/RssReader;->processNodes(Lorg/w3c/dom/Document;)Ljava/util/List;

    move-result-object p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p1

    :catch_3
    move-exception p1

    goto :goto_2

    :goto_1
    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t get RSS news from page \'{}\'"

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :goto_2
    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    const-string v1, "Can\'t get RSS news from page \'{}\': {}"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private processNodes(Lorg/w3c/dom/Document;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;"
        }
    .end annotation

    const-string v0, "item"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, "entry"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    invoke-direct {p0, v3}, Lsk/mimac/slideshow/rss/RssReader;->createRssMessage(Lorg/w3c/dom/Element;)Lsk/mimac/slideshow/rss/RssMessage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private refreshNews()V
    .locals 8

    invoke-static {}, Lsk/mimac/slideshow/utils/HttpUtils;->getDefaultFastClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lsk/mimac/slideshow/rss/RssReader;->rssUrls:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    const-string v7, "local"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-direct {p0}, Lsk/mimac/slideshow/rss/RssReader;->getNewsFromDb()Ljava/util/List;

    move-result-object v6

    :goto_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_0
    invoke-direct {p0, v0, v6}, Lsk/mimac/slideshow/rss/RssReader;->getNewsFromPage(Lokhttp3/OkHttpClient;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    goto :goto_1

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/rss/RssReader;->rssUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "RSS news refreshed [urls={}, messages={}]"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;->RSS_FEED_DOWNLOADED:Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;

    iget-object v1, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsk/mimac/slideshow/rss/RssMessage;

    invoke-virtual {v1}, Lsk/mimac/slideshow/rss/RssMessage;->getHeader()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsk/mimac/slideshow/rss/RssMessage;

    invoke-virtual {v2}, Lsk/mimac/slideshow/rss/RssMessage;->getDescription()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rssTitle"

    const-string v4, "rssMessage"

    invoke-static {v3, v1, v4, v2}, Lsk/mimac/slideshow/utils/MapConstructor;->create(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lsk/mimac/slideshow/triggers/TriggerProcessor;->evaluate(Lsk/mimac/slideshow/triggers/TriggerProcessor$EventCode;Ljava/util/Map;)V

    goto :goto_3

    :cond_2
    sget-object v0, Lsk/mimac/slideshow/rss/RssReader;->LOG:Lorg/slf4j/Logger;

    iget-object v1, p0, Lsk/mimac/slideshow/rss/RssReader;->rssUrls:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No messages downloaded [urls={}]"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_3
    return-void
.end method


# virtual methods
.method public getAllMessages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lsk/mimac/slideshow/rss/RssMessage;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lsk/mimac/slideshow/rss/RssReader;->refreshNews()V

    iget-object v0, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    return-object v0
.end method

.method public getNextMessage()Lsk/mimac/slideshow/rss/RssMessage;
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/rss/RssReader;->position:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsk/mimac/slideshow/rss/RssReader;->position:I

    iget-object v1, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/rss/RssReader;->position:I

    invoke-direct {p0}, Lsk/mimac/slideshow/rss/RssReader;->refreshNews()V

    iget-object v0, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lsk/mimac/slideshow/rss/RssMessage;

    invoke-direct {v0}, Lsk/mimac/slideshow/rss/RssMessage;-><init>()V

    return-object v0

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/rss/RssReader;->messageList:Ljava/util/List;

    iget v1, p0, Lsk/mimac/slideshow/rss/RssReader;->position:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsk/mimac/slideshow/rss/RssMessage;

    return-object v0
.end method
