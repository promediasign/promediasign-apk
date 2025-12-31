.class public abstract Lcom/dropbox/core/json/JsonWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final UTC:Ljava/util/TimeZone;

.field private static final months:[Ljava/lang/String;

.field private static final weekdays:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const-string v0, "UTC"

    invoke-static {v0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->UTC:Ljava/util/TimeZone;

    const-string v7, "Fri"

    const-string v8, "Sat"

    const/4 v1, 0x0

    const-string v2, "Sun"

    const-string v3, "Mon"

    const-string v4, "Tue"

    const-string v5, "Wed"

    const-string v6, "Thu"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->weekdays:[Ljava/lang/String;

    const-string v12, "Dec"

    const/4 v13, 0x0

    const-string v1, "Jan"

    const-string v2, "Feb"

    const-string v3, "Mar"

    const-string v4, "Apr"

    const-string v5, "May"

    const-string v6, "Jun"

    const-string v7, "Jul"

    const-string v8, "Aug"

    const-string v9, "Sep"

    const-string v10, "Oct"

    const-string v11, "Nov"

    filled-new-array/range {v1 .. v13}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/dropbox/core/json/JsonWriter;->months:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/fasterxml/jackson/core/JsonGenerator;",
            ")V"
        }
    .end annotation
.end method

.method public final writeToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/dropbox/core/json/JsonWriter;->writeToString(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final writeToString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_0
    sget-object v1, Lcom/dropbox/core/json/JsonReader;->jsonFactory:Lcom/fasterxml/jackson/core/JsonFactory;

    invoke-virtual {v1, v0}, Lcom/fasterxml/jackson/core/JsonFactory;->createGenerator(Ljava/io/OutputStream;)Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1

    if-eqz p2, :cond_0

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->useDefaultPrettyPrinter()Lcom/fasterxml/jackson/core/JsonGenerator;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lcom/dropbox/core/json/JsonWriter;->write(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    new-instance p1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {p1, p2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object p1

    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/JsonGenerator;->flush()V

    throw p1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const-string p2, "Impossible"

    invoke-static {p2, p1}, Lcom/dropbox/core/util/LangUtil;->mkAssert(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1
.end method
