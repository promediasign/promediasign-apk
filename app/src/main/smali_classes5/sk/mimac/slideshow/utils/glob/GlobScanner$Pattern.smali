.class Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsk/mimac/slideshow/utils/glob/GlobScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pattern"
.end annotation


# instance fields
.field private index:I

.field value:Ljava/lang/String;

.field final values:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x5c

    const/16 v1, 0x2f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\*\\*[^/]"

    const-string v1, "**/*"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "[^/]\\*\\*"

    const-string v1, "*/**"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    aget-object p1, p1, v0

    iput-object p1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public decr()V
    .locals 2

    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    add-int/lit8 v0, v0, -0x2

    aget-object v0, v1, v0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    :cond_0
    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    iget v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    aget-object v0, v0, v1

    iput-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    return-void
.end method

.method public incr()V
    .locals 3

    .line 1
    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    iget-object v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v2, v1

    if-lt v0, v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    goto :goto_1

    :cond_1
    aget-object v0, v1, v0

    goto :goto_0

    :goto_1
    return-void
.end method

.method public incr(Ljava/lang/String;)Z
    .locals 4

    .line 2
    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    iget-object v3, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v3, v3

    sub-int/2addr v3, v2

    if-ne v0, v3, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->incr()V

    invoke-virtual {p0, p1}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->incr()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->decr()V

    return v1

    :goto_0
    return v2
.end method

.method public isExhausted()Z
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    iget-object v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isLast()Z
    .locals 3

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    iget-object v2, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    array-length v2, v2

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 14

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v2, "**"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const-string v3, "*"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_4

    :cond_1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    iget-object v3, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const/16 v4, 0x2a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, -0x1

    const/16 v6, 0x3f

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v5, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    if-ge v7, v3, :cond_5

    if-ge v8, v5, :cond_5

    invoke-virtual {v0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v4, :cond_3

    goto :goto_1

    :cond_3
    if-eq v9, v6, :cond_4

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-eq v9, v10, :cond_4

    return v1

    :cond_4
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    if-ne v8, v5, :cond_7

    if-ne v3, v5, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1

    :cond_7
    move v9, v8

    const/4 v8, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v7, v3, :cond_c

    if-ge v9, v5, :cond_b

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v4, :cond_9

    add-int/lit8 v10, v9, 0x1

    if-lt v9, v5, :cond_8

    return v2

    :cond_8
    add-int/lit8 v8, v7, 0x1

    move v9, v10

    goto :goto_2

    :cond_9
    if-eq v11, v6, :cond_a

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v11, v12, :cond_b

    :cond_a
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_b
    add-int/lit8 v7, v8, 0x1

    move v9, v10

    move v13, v8

    move v8, v7

    move v7, v13

    goto :goto_2

    :cond_c
    :goto_3
    if-ge v9, v5, :cond_d

    invoke-virtual {v0, v9}, Ljava/lang/String;->charAt(I)C

    move-result p1

    if-ne p1, v4, :cond_d

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_d
    if-lt v9, v5, :cond_e

    const/4 v1, 0x1

    :cond_e
    return v1

    :cond_f
    :goto_4
    return v2
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->index:I

    iget-object v1, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->values:[Ljava/lang/String;

    aget-object v0, v1, v0

    iput-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    return-void
.end method

.method public wasFinalMatch()Z
    .locals 2

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->isExhausted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->isLast()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lsk/mimac/slideshow/utils/glob/GlobScanner$Pattern;->value:Ljava/lang/String;

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
