.class abstract Lj$/util/concurrent/u;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    .line 0
    const-string v0, "null"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    move-object p0, v0

    .line 0
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz p1, :cond_3

    .line 0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 0
    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    add-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    new-array v2, v2, [C

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    const/16 p0, 0x3d

    aput-char p0, v2, v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v3, p1, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
