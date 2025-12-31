.class final Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;
.super Ljava/io/InputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/xmlbeans/impl/store/Saver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputStreamSaver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _closed:Z

.field private _converter:Ljava/io/OutputStreamWriter;

.field private _locale:Lorg/apache/xmlbeans/impl/store/Locale;

.field private _outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

.field private _textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.xmlbeans.impl.store.Saver"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/store/Saver;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/xmlbeans/impl/store/Saver;->class$org$apache$xmlbeans$impl$store$Saver:Ljava/lang/Class;

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->$assertionsDisabled:Z

    return-void
.end method

.method public constructor <init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;)V
    .locals 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iget-object v0, p1, Lorg/apache/xmlbeans/impl/store/Cur;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    sget-boolean v2, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->$assertionsDisabled:Z

    if-nez v2, :cond_1

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->entered()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    invoke-static {p2}, Lorg/apache/xmlbeans/XmlOptions;->maskNull(Lorg/apache/xmlbeans/XmlOptions;)Lorg/apache/xmlbeans/XmlOptions;

    move-result-object p2

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;-><init>(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;Lorg/apache/xmlbeans/impl/store/Saver$1;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-static {p1, v1}, Lorg/apache/xmlbeans/impl/store/Locale;->getDocProps(Lorg/apache/xmlbeans/impl/store/Cur;Z)Lorg/apache/xmlbeans/XmlDocumentProperties;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lorg/apache/xmlbeans/XmlDocumentProperties;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    const-string v0, "CHARACTER_ENCODING"

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->hasOption(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v0}, Lorg/apache/xmlbeans/XmlOptions;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/lang/String;

    :cond_3
    if-eqz v2, :cond_4

    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, v0

    :cond_4
    if-nez v2, :cond_5

    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getJava2IANAMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_5
    invoke-static {v2}, Lorg/apache/xmlbeans/impl/common/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    :try_start_0
    new-instance v1, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-direct {v1, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_converter:Ljava/io/OutputStreamWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v0, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    invoke-direct {v0, p1, p2, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;-><init>(Lorg/apache/xmlbeans/impl/store/Cur;Lorg/apache/xmlbeans/XmlOptions;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuffer;

    const-string v0, "Unknown encoding: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static synthetic access$100(Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;I)I
    .locals 0

    invoke-direct {p0, p1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->ensure(I)I

    move-result p0

    return p0
.end method

.method private checkClosed()V
    .locals 2

    iget-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private ensure(I)I
    .locals 3

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result v0

    if-ge v0, p1, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_textSaver:Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_converter:Ljava/io/OutputStreamWriter;

    const/16 v2, 0x800

    invoke-virtual {v0, v1, v2}, Lorg/apache/xmlbeans/impl/store/Saver$TextSaver;->write(Ljava/io/Writer;I)I

    move-result v0

    if-ge v0, v2, :cond_0

    :cond_1
    iget-object p1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {p1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->getAvailable()I

    move-result p1

    return p1
.end method


# virtual methods
.method public available()I
    .locals 3

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    const/16 v1, 0x400

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->ensure(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-direct {p0, v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->ensure(I)I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_closed:Z

    return-void
.end method

.method public read()I
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->checkClosed()V

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read()I

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return v1

    :catchall_1
    move-exception v1

    goto :goto_0

    :catchall_2
    move-exception v1

    iget-object v2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw v1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public read([BII)I
    .locals 2

    .line 2
    invoke-direct {p0}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->checkClosed()V

    if-eqz p1, :cond_2

    if-ltz p2, :cond_1

    array-length v0, p1

    if-gt p2, v0, :cond_1

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->noSync()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v0}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V

    :try_start_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v0, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read([BII)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    return p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :cond_0
    iget-object v0, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {v1}, Lorg/apache/xmlbeans/impl/store/Locale;->enter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v1, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_outStreamImpl:Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;

    invoke-virtual {v1, p1, p2, p3}, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver$OutputStreamImpl;->read([BII)I

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    monitor-exit v0

    return p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    iget-object p2, p0, Lorg/apache/xmlbeans/impl/store/Saver$InputStreamSaver;->_locale:Lorg/apache/xmlbeans/impl/store/Locale;

    invoke-virtual {p2}, Lorg/apache/xmlbeans/impl/store/Locale;->exit()V

    throw p1

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "Offset is not within buf"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "buf to read into is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
