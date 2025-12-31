.class Lorg/apache/commons/text/StringEscapeUtils$XsiUnescaper;
.super Lorg/apache/commons/text/translate/CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/text/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XsiUnescaper"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 4

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/16 v3, 0x5c

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v2, v1, :cond_0

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    invoke-static {p1, v0, p2}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    :cond_1
    if-le v1, v2, :cond_2

    invoke-virtual {p2, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "XsiUnescaper should never reach the [1] index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
