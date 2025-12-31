.class public final Lcom/google/api/client/util/PemReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/util/PemReader$Section;
    }
.end annotation


# static fields
.field private static final BEGIN_PATTERN:Ljava/util/regex/Pattern;

.field private static final END_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "-----BEGIN ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "-----END ([A-Z ]+)-----"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/io/BufferedReader;

    invoke-direct {v0, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    return-void
.end method

.method public static readFirstSectionAndClose(Ljava/io/Reader;Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;
    .locals 1

    new-instance v0, Lcom/google/api/client/util/PemReader;

    invoke-direct {v0, p0}, Lcom/google/api/client/util/PemReader;-><init>(Ljava/io/Reader;)V

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/google/api/client/util/PemReader;->readNextSection(Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/google/api/client/util/PemReader;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lcom/google/api/client/util/PemReader;->close()V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-void
.end method

.method public readNextSection(Ljava/lang/String;)Lcom/google/api/client/util/PemReader$Section;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move-object v3, v2

    move-object v4, v3

    :cond_0
    :goto_0
    iget-object v5, p0, Lcom/google/api/client/util/PemReader;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    if-nez v4, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    const-string v3, "missing end tag (%s)"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v4, v1, v0

    invoke-static {p1, v3, v1}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return-object v2

    :cond_2
    if-nez v3, :cond_4

    sget-object v6, Lcom/google/api/client/util/PemReader;->BEGIN_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v5, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz p1, :cond_3

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v5

    goto :goto_0

    :cond_4
    sget-object v6, Lcom/google/api/client/util/PemReader;->END_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v6, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v5, "end tag (%s) doesn\'t match begin tag (%s)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v0

    aput-object v4, v6, v1

    invoke-static {v2, v5, v6}, Lcom/google/api/client/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/google/api/client/util/PemReader$Section;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/util/Base64;->decodeBase64(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p1, v4, v0}, Lcom/google/api/client/util/PemReader$Section;-><init>(Ljava/lang/String;[B)V

    return-object p1

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
