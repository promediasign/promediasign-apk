.class Lorg/apache/commons/lang3/time/GmtTimeZone;
.super Ljava/util/TimeZone;
.source "SourceFile"

# interfaces
.implements Lj$/util/TimeZoneRetargetInterface;


# static fields
.field static final serialVersionUID:J = 0x1L


# instance fields
.field private final offset:I

.field private final zoneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZII)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/util/TimeZone;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x18

    .line 5
    .line 6
    if-ge p2, v0, :cond_3

    .line 7
    .line 8
    const/16 v0, 0x3c

    .line 9
    .line 10
    if-ge p3, v0, :cond_2

    .line 11
    .line 12
    mul-int/lit8 v0, p2, 0x3c

    .line 13
    .line 14
    add-int/2addr v0, p3

    .line 15
    const v1, 0xea60

    .line 16
    .line 17
    .line 18
    mul-int v0, v0, v1

    .line 19
    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    neg-int v0, v0

    .line 23
    :cond_0
    iput v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    .line 24
    .line 25
    const/16 v0, 0x9

    .line 26
    .line 27
    const-string v1, "GMT"

    .line 28
    .line 29
    invoke-static {v0, v1}, LA/g;->o(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    const/16 p1, 0x2d

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/16 p1, 0x2b

    .line 39
    .line 40
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v0, p2}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const/16 p2, 0x3a

    .line 48
    .line 49
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-static {p1, p3}, Lorg/apache/commons/lang3/time/GmtTimeZone;->twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    iput-object p1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string p3, " minutes out of range"

    .line 74
    .line 75
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p2

    .line 82
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p1

    .line 86
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 87
    .line 88
    new-instance p3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string p2, " hours out of range"

    .line 97
    .line 98
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1
.end method

.method private static twoDigits(Ljava/lang/StringBuilder;I)Ljava/lang/StringBuilder;
    .locals 1

    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-char v0, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    rem-int/lit8 p1, p1, 0xa

    add-int/lit8 p1, p1, 0x30

    int-to-char p1, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    check-cast p1, Lorg/apache/commons/lang3/time/GmtTimeZone;

    iget-object p1, p1, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    if-ne v0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    return-object v0
.end method

.method public getOffset(IIIIII)I
    .locals 0

    iget p1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return p1
.end method

.method public getRawOffset()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    return v0
.end method

.method public inDaylightTime(Ljava/util/Date;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setRawOffset(I)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "[GmtTimeZone id=\""

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->zoneId:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, "\",offset="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lorg/apache/commons/lang3/time/GmtTimeZone;->offset:I

    .line 19
    .line 20
    const/16 v2, 0x5d

    .line 21
    .line 22
    invoke-static {v0, v1, v2}, Lch/qos/logback/core/joran/util/a;->r(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method

.method public final synthetic toZoneId()Lj$/time/ZoneId;
    .locals 1

    .line 2
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic toZoneId()Ljava/time/ZoneId;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/GmtTimeZone;->toZoneId()Lj$/time/ZoneId;

    move-result-object v0

    invoke-static {v0}, Lj$/time/TimeConversions;->convert(Lj$/time/ZoneId;)Ljava/time/ZoneId;

    move-result-object v0

    return-object v0
.end method

.method public useDaylightTime()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
