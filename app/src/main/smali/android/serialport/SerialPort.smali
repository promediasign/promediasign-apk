.class public final Landroid/serialport/SerialPort;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sSuPath:Ljava/lang/String; = "/system/bin/su"


# instance fields
.field private baudrate:I

.field private dataBits:I

.field private device:Ljava/io/File;

.field private flags:I

.field private mFd:Ljava/io/FileDescriptor;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mFileOutputStream:Ljava/io/FileOutputStream;

.field private parity:I

.field private stopBits:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "serial_port"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIIII)V
    .locals 8

    const-string v0, "chmod 666 "

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/serialport/SerialPort;->device:Ljava/io/File;

    iput p2, p0, Landroid/serialport/SerialPort;->baudrate:I

    iput p3, p0, Landroid/serialport/SerialPort;->dataBits:I

    iput p4, p0, Landroid/serialport/SerialPort;->parity:I

    iput p5, p0, Landroid/serialport/SerialPort;->stopBits:I

    iput p6, p0, Landroid/serialport/SerialPort;->flags:I

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    sget-object v2, Landroid/serialport/SerialPort;->sSuPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nexit\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->canWrite()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Landroid/serialport/SerialPort;->open(Ljava/lang/String;IIIII)Ljava/io/FileDescriptor;

    move-result-object p1

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_2

    new-instance p1, Ljava/io/FileInputStream;

    iget-object p2, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    new-instance p1, Ljava/io/FileOutputStream;

    iget-object p2, p0, Landroid/serialport/SerialPort;->mFd:Ljava/io/FileDescriptor;

    invoke-direct {p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object p1, p0, Landroid/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-void

    :cond_2
    const-string p1, "SerialPort"

    const-string p2, "native open returns null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1}, Ljava/io/IOException;-><init>()V

    throw p1

    :catch_0
    move-exception p1

    goto :goto_0

    :cond_3
    :try_start_1
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1}, Ljava/lang/SecurityException;-><init>()V

    throw p1
.end method

.method private native open(Ljava/lang/String;IIIII)Ljava/io/FileDescriptor;
.end method

.method public static setSuPath(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-object p0, Landroid/serialport/SerialPort;->sSuPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public native close()V
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1

    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1

    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    return-object v0
.end method

.method public tryClose()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    iget-object v0, p0, Landroid/serialport/SerialPort;->mFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    invoke-virtual {p0}, Landroid/serialport/SerialPort;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
