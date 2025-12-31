.class public Lio/milton/http/Range;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final finish:Ljava/lang/Long;

.field private final start:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/milton/http/Range;->start:Ljava/lang/Long;

    iput-object p2, p0, Lio/milton/http/Range;->finish:Ljava/lang/Long;

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lio/milton/http/Range;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "-"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    array-length v1, v0

    .line 12
    const-string v2, "Invalid range. Use format start-finish, eg 1000-1500. Range:"

    .line 13
    .line 14
    if-eqz v1, :cond_2

    .line 15
    .line 16
    array-length v1, v0

    .line 17
    const/4 v3, 0x2

    .line 18
    if-gt v1, v3, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :try_start_0
    aget-object v3, v0, v1

    .line 22
    .line 23
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-lez v3, :cond_0

    .line 29
    .line 30
    aget-object v1, v0, v1

    .line 31
    .line 32
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 33
    .line 34
    .line 35
    move-result-wide v5

    .line 36
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :catchall_0
    move-exception v0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    move-object v1, v4

    .line 44
    :goto_0
    array-length v3, v0

    .line 45
    const/4 v5, 0x1

    .line 46
    if-le v3, v5, :cond_1

    .line 47
    .line 48
    aget-object v3, v0, v5

    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-lez v3, :cond_1

    .line 55
    .line 56
    aget-object v0, v0, v5

    .line 57
    .line 58
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 59
    .line 60
    .line 61
    move-result-wide v3

    .line 62
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    :cond_1
    new-instance v0, Lio/milton/http/Range;

    .line 67
    .line 68
    invoke-direct {v0, v1, v4}, Lio/milton/http/Range;-><init>(Ljava/lang/Long;Ljava/lang/Long;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    .line 70
    .line 71
    return-object v0

    .line 72
    :goto_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 73
    .line 74
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 79
    .line 80
    .line 81
    throw v1

    .line 82
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    .line 83
    .line 84
    const-string v3, " parts="

    .line 85
    .line 86
    invoke-static {v2, p0, v3}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    move-result-object p0

    .line 90
    array-length v0, v0

    .line 91
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object p0

    .line 98
    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    throw v1
.end method


# virtual methods
.method public getFinish()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Range;->finish:Ljava/lang/Long;

    return-object v0
.end method

.method public getStart()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lio/milton/http/Range;->start:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bytes "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lio/milton/http/Range;->start:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lio/milton/http/Range;->finish:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
