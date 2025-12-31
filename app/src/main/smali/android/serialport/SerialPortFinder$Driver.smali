.class public Landroid/serialport/SerialPortFinder$Driver;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/serialport/SerialPortFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Driver"
.end annotation


# instance fields
.field private mDeviceRoot:Ljava/lang/String;

.field mDevices:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mDriverName:Ljava/lang/String;

.field final synthetic this$0:Landroid/serialport/SerialPortFinder;


# direct methods
.method public constructor <init>(Landroid/serialport/SerialPortFinder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/serialport/SerialPortFinder$Driver;->this$0:Landroid/serialport/SerialPortFinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/serialport/SerialPortFinder$Driver;->mDevices:Ljava/util/Vector;

    iput-object p2, p0, Landroid/serialport/SerialPortFinder$Driver;->mDriverName:Ljava/lang/String;

    iput-object p3, p0, Landroid/serialport/SerialPortFinder$Driver;->mDeviceRoot:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDevices()Ljava/util/Vector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/serialport/SerialPortFinder$Driver;->mDevices:Ljava/util/Vector;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/serialport/SerialPortFinder$Driver;->mDevices:Ljava/util/Vector;

    new-instance v0, Ljava/io/File;

    const-string v1, "/dev"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/serialport/SerialPortFinder$Driver;->mDeviceRoot:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Found new device: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SerialPort"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/serialport/SerialPortFinder$Driver;->mDevices:Ljava/util/Vector;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/serialport/SerialPortFinder$Driver;->mDevices:Ljava/util/Vector;

    return-object v0
.end method
