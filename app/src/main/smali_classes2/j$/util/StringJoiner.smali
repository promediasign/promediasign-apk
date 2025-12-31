.class public final Lj$/util/StringJoiner;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "The prefix must not be null"

    invoke-static {p2, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The delimiter must not be null"

    invoke-static {p1, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "The suffix must not be null"

    invoke-static {p3, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lj$/util/StringJoiner;->a:Ljava/lang/String;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj$/util/StringJoiner;->b:Ljava/lang/String;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lj$/util/StringJoiner;->c:Ljava/lang/String;

    return-void
.end method

.method private static a(Ljava/lang/String;[CI)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, p1, p2}, Ljava/lang/String;->getChars(II[CI)V

    return v0
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)Lj$/util/StringJoiner;
    .locals 3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget v1, p0, Lj$/util/StringJoiner;->e:I

    array-length v2, v0

    if-ne v1, v2, :cond_1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    :cond_1
    iget v0, p0, Lj$/util/StringJoiner;->f:I

    iget-object v1, p0, Lj$/util/StringJoiner;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lj$/util/StringJoiner;->f:I

    :goto_0
    iget v0, p0, Lj$/util/StringJoiner;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    iput v1, p0, Lj$/util/StringJoiner;->f:I

    iget-object v0, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    iget v1, p0, Lj$/util/StringJoiner;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lj$/util/StringJoiner;->e:I

    aput-object p1, v0, v1

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    iget v1, p0, Lj$/util/StringJoiner;->e:I

    iget-object v2, p0, Lj$/util/StringJoiner;->a:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    iget-object v4, p0, Lj$/util/StringJoiner;->c:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, p0, Lj$/util/StringJoiner;->b:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_3

    .line 0
    iget v2, p0, Lj$/util/StringJoiner;->e:I

    if-le v2, v6, :cond_1

    iget v2, p0, Lj$/util/StringJoiner;->f:I

    new-array v2, v2, [C

    iget-object v4, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    aget-object v4, v4, v7

    invoke-static {v4, v2, v7}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v4

    const/4 v5, 0x1

    :cond_0
    invoke-static {v3, v2, v4}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    aget-object v8, v8, v5

    invoke-static {v8, v2, v4}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v8

    add-int/2addr v4, v8

    iget-object v8, p0, Lj$/util/StringJoiner;->d:[Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v9, v8, v5

    add-int/2addr v5, v6

    iget v9, p0, Lj$/util/StringJoiner;->e:I

    if-lt v5, v9, :cond_0

    iput v6, p0, Lj$/util/StringJoiner;->e:I

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V

    aput-object v3, v8, v7

    :cond_1
    if-nez v1, :cond_2

    .line 0
    const-string v0, ""

    goto :goto_0

    :cond_2
    aget-object v0, v0, v7

    :goto_0
    return-object v0

    :cond_3
    iget v8, p0, Lj$/util/StringJoiner;->f:I

    add-int/2addr v8, v5

    new-array v5, v8, [C

    invoke-static {v2, v5, v7}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v2

    if-lez v1, :cond_4

    aget-object v7, v0, v7

    invoke-static {v7, v5, v2}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v2, v7

    :goto_1
    if-ge v6, v1, :cond_4

    invoke-static {v3, v5, v2}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v2, v7

    aget-object v7, v0, v6

    invoke-static {v7, v5, v2}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    move-result v7

    add-int/2addr v2, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_4
    invoke-static {v4, v5, v2}, Lj$/util/StringJoiner;->a(Ljava/lang/String;[CI)I

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method
