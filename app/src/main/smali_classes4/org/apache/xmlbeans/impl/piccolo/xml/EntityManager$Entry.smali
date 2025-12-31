.class final Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xmlbeans/impl/piccolo/xml/Entity;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Entry"
.end annotation


# instance fields
.field isOpen:Z

.field isStandalone:Z

.field ndata:Ljava/lang/String;

.field pubID:Ljava/lang/String;

.field reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

.field sysID:Ljava/lang/String;

.field private final synthetic this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

.field value:[C


# direct methods
.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;-><init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 3
    iput-object p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    iput-object p2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public charArrayValue()[C
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    return-object v0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    return-void
.end method

.method public getDeclaredEncoding()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->getXMLDeclaredEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPublicID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    return-object v0
.end method

.method public getReader()Ljava/io/Reader;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/CharArrayReader;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    invoke-direct {v0, v1}, Ljava/io/CharArrayReader;-><init>([C)V

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    return-object v0
.end method

.method public getSystemID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    return-object v0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->getXMLVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInternal()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOpen()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    return v0
.end method

.method public isParsed()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    return v0
.end method

.method public isStandaloneDeclared()Z
    .locals 1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->isXMLStandaloneDeclared()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public open()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_6

    .line 4
    .line 5
    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    .line 6
    .line 7
    if-nez v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {p0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isInternal()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-nez v0, :cond_4

    .line 15
    .line 16
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    .line 17
    .line 18
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;->access$000(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;)Lorg/xml/sax/EntityResolver;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 25
    .line 26
    new-instance v2, Ljava/net/URL;

    .line 27
    .line 28
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 29
    .line 30
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iput-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->this$0:Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;

    .line 44
    .line 45
    invoke-static {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;->access$000(Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager;)Lorg/xml/sax/EntityResolver;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->pubID:Ljava/lang/String;

    .line 50
    .line 51
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 52
    .line 53
    invoke-interface {v0, v2, v3}, Lorg/xml/sax/EntityResolver;->resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    if-nez v0, :cond_1

    .line 58
    .line 59
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 60
    .line 61
    new-instance v2, Ljava/net/URL;

    .line 62
    .line 63
    iget-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->sysID:Ljava/lang/String;

    .line 64
    .line 65
    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Z)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_2

    .line 81
    .line 82
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;

    .line 83
    .line 84
    invoke-direct {v0, v2, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLReaderReader;-><init>(Ljava/io/Reader;Z)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_3

    .line 93
    .line 94
    new-instance v3, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 95
    .line 96
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-direct {v3, v2, v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 101
    .line 102
    .line 103
    iput-object v3, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_3
    new-instance v2, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;

    .line 107
    .line 108
    new-instance v3, Ljava/net/URL;

    .line 109
    .line 110
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {v2, v3, v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;Z)V

    .line 126
    .line 127
    .line 128
    iput-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 129
    .line 130
    :goto_1
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->reader:Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;

    .line 131
    .line 132
    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/piccolo/xml/XMLInputReader;->isXMLStandalone()Z

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    .line 137
    .line 138
    :cond_4
    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isOpen:Z

    .line 139
    .line 140
    return-void

    .line 141
    :cond_5
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/util/RecursionException;

    .line 142
    .line 143
    invoke-direct {v0}, Lorg/apache/xmlbeans/impl/piccolo/util/RecursionException;-><init>()V

    .line 144
    .line 145
    .line 146
    throw v0

    .line 147
    :cond_6
    new-instance v0, Lorg/apache/xmlbeans/impl/piccolo/xml/FatalParsingException;

    .line 148
    .line 149
    new-instance v1, Ljava/lang/StringBuffer;

    .line 150
    .line 151
    const-string v2, "Cannot reference entity; unknown NDATA type \'"

    .line 152
    .line 153
    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->ndata:Ljava/lang/String;

    .line 157
    .line 158
    const-string v3, "\'"

    .line 159
    .line 160
    invoke-static {v1, v2, v3}, Lch/qos/logback/core/joran/util/a;->q(Ljava/lang/StringBuffer;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-direct {v0, v1}, Lorg/apache/xmlbeans/impl/piccolo/xml/FatalParsingException;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    throw v0
.end method

.method public setStandalone(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->isStandalone:Z

    return-void
.end method

.method public stringValue()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/piccolo/xml/EntityManager$Entry;->value:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
