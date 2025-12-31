.class public Landroid/serialport/SerialPortFinder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/serialport/SerialPortFinder$Driver;
    }
.end annotation


# instance fields
.field private mDrivers:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/serialport/SerialPortFinder$Driver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/serialport/SerialPortFinder;->mDrivers:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public getAllDevicesPath()[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/serialport/SerialPortFinder;->getDrivers()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/serialport/SerialPortFinder$Driver;

    invoke-virtual {v2}, Landroid/serialport/SerialPortFinder$Driver;->getDevices()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public getDrivers()Ljava/util/Vector;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Landroid/serialport/SerialPortFinder$Driver;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/serialport/SerialPortFinder;->mDrivers:Ljava/util/Vector;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    new-instance v0, Ljava/util/Vector;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/serialport/SerialPortFinder;->mDrivers:Ljava/util/Vector;

    .line 11
    .line 12
    new-instance v0, Ljava/io/LineNumberReader;

    .line 13
    .line 14
    new-instance v1, Ljava/io/FileReader;

    .line 15
    .line 16
    const-string v2, "/proc/tty/drivers"

    .line 17
    .line 18
    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    const/4 v2, 0x0

    .line 31
    const/16 v3, 0x15

    .line 32
    .line 33
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    const-string v3, " +"

    .line 42
    .line 43
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    array-length v3, v1

    .line 48
    const/4 v4, 0x5

    .line 49
    if-lt v3, v4, :cond_0

    .line 50
    .line 51
    array-length v3, v1

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 53
    .line 54
    aget-object v3, v1, v3

    .line 55
    .line 56
    const-string v4, "serial"

    .line 57
    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    if-eqz v3, :cond_0

    .line 63
    .line 64
    const-string v3, "Found new driver "

    .line 65
    .line 66
    const-string v4, " on "

    .line 67
    .line 68
    invoke-static {v3, v2, v4}, LA/g;->q(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    array-length v4, v1

    .line 73
    add-int/lit8 v4, v4, -0x4

    .line 74
    .line 75
    aget-object v4, v1, v4

    .line 76
    .line 77
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    const-string v4, "SerialPort"

    .line 85
    .line 86
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    iget-object v3, p0, Landroid/serialport/SerialPortFinder;->mDrivers:Ljava/util/Vector;

    .line 90
    .line 91
    new-instance v4, Landroid/serialport/SerialPortFinder$Driver;

    .line 92
    .line 93
    array-length v5, v1

    .line 94
    add-int/lit8 v5, v5, -0x4

    .line 95
    .line 96
    aget-object v1, v1, v5

    .line 97
    .line 98
    invoke-direct {v4, p0, v2, v1}, Landroid/serialport/SerialPortFinder$Driver;-><init>(Landroid/serialport/SerialPortFinder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_1
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 106
    .line 107
    .line 108
    :cond_2
    iget-object v0, p0, Landroid/serialport/SerialPortFinder;->mDrivers:Ljava/util/Vector;

    .line 109
    .line 110
    return-object v0
.end method
