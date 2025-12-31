.class public Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FtdiSerialPort"
.end annotation


# static fields
.field private static final GET_LATENCY_TIMER_REQUEST:I = 0xa

.field private static final GET_MODEM_STATUS_REQUEST:I = 0x5

.field private static final MODEM_CONTROL_DTR_DISABLE:I = 0x100

.field private static final MODEM_CONTROL_DTR_ENABLE:I = 0x101

.field private static final MODEM_CONTROL_REQUEST:I = 0x1

.field private static final MODEM_CONTROL_RTS_DISABLE:I = 0x200

.field private static final MODEM_CONTROL_RTS_ENABLE:I = 0x202

.field private static final MODEM_STATUS_CD:I = 0x80

.field private static final MODEM_STATUS_CTS:I = 0x10

.field private static final MODEM_STATUS_DSR:I = 0x20

.field private static final MODEM_STATUS_RI:I = 0x40

.field private static final READ_HEADER_LENGTH:I = 0x2

.field private static final REQTYPE_DEVICE_TO_HOST:I = 0xc0

.field private static final REQTYPE_HOST_TO_DEVICE:I = 0x40

.field private static final RESET_ALL:I = 0x0

.field private static final RESET_PURGE_RX:I = 0x1

.field private static final RESET_PURGE_TX:I = 0x2

.field private static final RESET_REQUEST:I = 0x0

.field private static final SET_BAUD_RATE_REQUEST:I = 0x3

.field private static final SET_DATA_REQUEST:I = 0x4

.field private static final SET_LATENCY_TIMER_REQUEST:I = 0x9

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388


# instance fields
.field private baudRateWithPort:Z

.field private breakConfig:I

.field private dtr:Z

.field private rts:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    iput p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    return-void
.end method

.method private getStatus()I
    .locals 9

    .line 1
    const/4 v6, 0x2

    .line 2
    new-array v8, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 7
    .line 8
    add-int/lit8 v4, v1, 0x1

    .line 9
    .line 10
    const/16 v7, 0x1388

    .line 11
    .line 12
    const/16 v1, 0xc0

    .line 13
    .line 14
    const/4 v2, 0x5

    .line 15
    const/4 v3, 0x0

    .line 16
    move-object v5, v8

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x2

    .line 22
    if-ne v0, v1, :cond_0

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    aget-byte v0, v8, v0

    .line 26
    .line 27
    return v0

    .line 28
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 29
    .line 30
    const-string v2, "Get modem status failed: result="

    .line 31
    .line 32
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v1
.end method

.method private setBaudrate(I)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    const/4 v2, 0x3

    .line 6
    const/4 v3, 0x4

    .line 7
    const/4 v4, 0x7

    .line 8
    const/4 v5, 0x0

    .line 9
    const/4 v6, 0x1

    .line 10
    const v7, 0x3567e0

    .line 11
    .line 12
    .line 13
    if-gt v1, v7, :cond_6

    .line 14
    .line 15
    const v7, 0x2625a0

    .line 16
    .line 17
    .line 18
    if-lt v1, v7, :cond_0

    .line 19
    .line 20
    const v7, 0x2dc6c0

    .line 21
    .line 22
    .line 23
    const/4 v8, 0x0

    .line 24
    :goto_0
    const/4 v9, 0x0

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    const v7, 0x1ab3f0

    .line 27
    .line 28
    .line 29
    if-lt v1, v7, :cond_1

    .line 30
    .line 31
    const v7, 0x1e8480

    .line 32
    .line 33
    .line 34
    const/4 v8, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const v7, 0x2dc6c00

    .line 37
    .line 38
    .line 39
    div-int v8, v7, v1

    .line 40
    .line 41
    add-int/2addr v8, v6

    .line 42
    shr-int/lit8 v9, v8, 0x1

    .line 43
    .line 44
    and-int/2addr v9, v4

    .line 45
    shr-int/2addr v8, v3

    .line 46
    const/16 v10, 0x3fff

    .line 47
    .line 48
    if-gt v8, v10, :cond_5

    .line 49
    .line 50
    shl-int/lit8 v10, v8, 0x3

    .line 51
    .line 52
    add-int/2addr v10, v9

    .line 53
    div-int/2addr v7, v10

    .line 54
    add-int/2addr v7, v6

    .line 55
    shr-int/2addr v7, v6

    .line 56
    :goto_1
    int-to-double v10, v7

    .line 57
    int-to-double v12, v1

    .line 58
    div-double/2addr v10, v12

    .line 59
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    .line 60
    .line 61
    sub-double/2addr v12, v10

    .line 62
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    .line 63
    .line 64
    .line 65
    move-result-wide v10

    .line 66
    const-wide v12, 0x3f9fbe76c8b43958L    # 0.031

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    .line 72
    .line 73
    cmpl-double v16, v10, v12

    .line 74
    .line 75
    if-gez v16, :cond_4

    .line 76
    .line 77
    const v12, 0x8000

    .line 78
    .line 79
    .line 80
    const v13, 0xc000

    .line 81
    .line 82
    .line 83
    packed-switch v9, :pswitch_data_0

    .line 84
    .line 85
    .line 86
    move/from16 v19, v8

    .line 87
    .line 88
    :goto_2
    const/4 v12, 0x0

    .line 89
    goto :goto_6

    .line 90
    :pswitch_0
    or-int v12, v8, v13

    .line 91
    .line 92
    :goto_3
    move/from16 v19, v12

    .line 93
    .line 94
    :goto_4
    const/4 v12, 0x1

    .line 95
    goto :goto_6

    .line 96
    :pswitch_1
    or-int/2addr v12, v8

    .line 97
    goto :goto_3

    .line 98
    :pswitch_2
    or-int/lit16 v12, v8, 0x4000

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :pswitch_3
    or-int/lit16 v12, v8, 0x4000

    .line 102
    .line 103
    :goto_5
    move/from16 v19, v12

    .line 104
    .line 105
    goto :goto_2

    .line 106
    :pswitch_4
    move/from16 v19, v8

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :pswitch_5
    or-int/2addr v12, v8

    .line 110
    goto :goto_5

    .line 111
    :pswitch_6
    or-int v12, v8, v13

    .line 112
    .line 113
    goto :goto_5

    .line 114
    :goto_6
    iget-boolean v13, v0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 115
    .line 116
    if-eqz v13, :cond_2

    .line 117
    .line 118
    shl-int/lit8 v12, v12, 0x8

    .line 119
    .line 120
    iget v13, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 121
    .line 122
    add-int/2addr v13, v6

    .line 123
    or-int/2addr v12, v13

    .line 124
    :cond_2
    move/from16 v20, v12

    .line 125
    .line 126
    invoke-static {}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;->access$000()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v12

    .line 130
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v7

    .line 138
    mul-double v10, v10, v14

    .line 139
    .line 140
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v11

    .line 148
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 149
    .line 150
    .line 151
    move-result-object v13

    .line 152
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object v8

    .line 156
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object v9

    .line 160
    new-array v4, v4, [Ljava/lang/Object;

    .line 161
    .line 162
    aput-object v1, v4, v5

    .line 163
    .line 164
    aput-object v7, v4, v6

    .line 165
    .line 166
    const/4 v1, 0x2

    .line 167
    aput-object v10, v4, v1

    .line 168
    .line 169
    aput-object v11, v4, v2

    .line 170
    .line 171
    aput-object v13, v4, v3

    .line 172
    .line 173
    const/4 v1, 0x5

    .line 174
    aput-object v8, v4, v1

    .line 175
    .line 176
    const/4 v1, 0x6

    .line 177
    aput-object v9, v4, v1

    .line 178
    .line 179
    const-string v1, "baud rate=%d, effective=%d, error=%.1f%%, value=0x%04x, index=0x%04x, divisor=%d, subdivisor=%d"

    .line 180
    .line 181
    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-static {v12, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    .line 187
    .line 188
    iget-object v1, v0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 189
    .line 190
    const/16 v22, 0x0

    .line 191
    .line 192
    const/16 v23, 0x1388

    .line 193
    .line 194
    const/16 v17, 0x40

    .line 195
    .line 196
    const/16 v18, 0x3

    .line 197
    .line 198
    const/16 v21, 0x0

    .line 199
    .line 200
    move-object/from16 v16, v1

    .line 201
    .line 202
    invoke-virtual/range {v16 .. v23}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 203
    .line 204
    .line 205
    move-result v1

    .line 206
    if-nez v1, :cond_3

    .line 207
    .line 208
    return-void

    .line 209
    :cond_3
    new-instance v2, Ljava/io/IOException;

    .line 210
    .line 211
    const-string v3, "Setting baudrate failed: result="

    .line 212
    .line 213
    invoke-static {v1, v3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    throw v2

    .line 221
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 222
    .line 223
    mul-double v10, v10, v14

    .line 224
    .line 225
    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    new-array v3, v6, [Ljava/lang/Object;

    .line 230
    .line 231
    aput-object v2, v3, v5

    .line 232
    .line 233
    const-string v2, "Baud rate deviation %.1f%% is higher than allowed 3%%"

    .line 234
    .line 235
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v2

    .line 239
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    throw v1

    .line 243
    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 244
    .line 245
    const-string v2, "Baud rate to low"

    .line 246
    .line 247
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    throw v1

    .line 251
    :cond_6
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    .line 252
    .line 253
    const-string v2, "Baud rate to high"

    .line 254
    .line 255
    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    throw v1

    .line 259
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public closeInt()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getCD()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCTS()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getControlLines()Ljava/util/EnumSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit8 v2, v0, 0x10

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x20

    if-eqz v2, :cond_3

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_4

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_5

    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDTR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    return v0
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/FtdiSerialDriver;

    return-object v0
.end method

.method public getLatencyTimer()I
    .locals 10

    .line 1
    const/4 v6, 0x1

    .line 2
    new-array v8, v6, [B

    .line 3
    .line 4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 5
    .line 6
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 7
    .line 8
    const/4 v9, 0x1

    .line 9
    add-int/lit8 v4, v1, 0x1

    .line 10
    .line 11
    const/16 v7, 0x1388

    .line 12
    .line 13
    const/16 v1, 0xc0

    .line 14
    .line 15
    const/16 v2, 0xa

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    move-object v5, v8

    .line 19
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-ne v0, v9, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    aget-byte v0, v8, v0

    .line 27
    .line 28
    return v0

    .line 29
    :cond_0
    new-instance v1, Ljava/io/IOException;

    .line 30
    .line 31
    const-string v2, "Get latency timer failed: result="

    .line 32
    .line 33
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw v1
.end method

.method public getRI()Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->getStatus()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getRTS()Z
    .locals 1

    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    return v0
.end method

.method public getSupportedControlLines()Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet<",
            "Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0
.end method

.method public openInt()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 4
    .line 5
    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_8

    .line 17
    .line 18
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 19
    .line 20
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    const/4 v1, 0x2

    .line 31
    if-lt v0, v1, :cond_7

    .line 32
    .line 33
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 34
    .line 35
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 47
    .line 48
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 49
    .line 50
    iget v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 51
    .line 52
    invoke-virtual {v0, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-virtual {v0, v2}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    .line 61
    .line 62
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 63
    .line 64
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 65
    .line 66
    add-int/lit8 v7, v0, 0x1

    .line 67
    .line 68
    const/4 v9, 0x0

    .line 69
    const/16 v10, 0x1388

    .line 70
    .line 71
    const/16 v4, 0x40

    .line 72
    .line 73
    const/4 v5, 0x0

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-nez v0, :cond_6

    .line 81
    .line 82
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 83
    .line 84
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 85
    .line 86
    if-eqz v0, :cond_0

    .line 87
    .line 88
    const/16 v0, 0x101

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    const/16 v0, 0x100

    .line 92
    .line 93
    :goto_0
    iget-boolean v4, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 94
    .line 95
    if-eqz v4, :cond_1

    .line 96
    .line 97
    const/16 v4, 0x202

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_1
    const/16 v4, 0x200

    .line 101
    .line 102
    :goto_1
    or-int v6, v0, v4

    .line 103
    .line 104
    iget v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 105
    .line 106
    add-int/lit8 v7, v0, 0x1

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    const/16 v10, 0x1388

    .line 110
    .line 111
    const/16 v4, 0x40

    .line 112
    .line 113
    const/4 v5, 0x1

    .line 114
    const/4 v8, 0x0

    .line 115
    invoke-virtual/range {v3 .. v10}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_5

    .line 120
    .line 121
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    array-length v3, v0

    .line 130
    const/16 v4, 0xe

    .line 131
    .line 132
    if-lt v3, v4, :cond_4

    .line 133
    .line 134
    const/16 v3, 0xd

    .line 135
    .line 136
    aget-byte v0, v0, v3

    .line 137
    .line 138
    const/4 v3, 0x7

    .line 139
    if-eq v0, v3, :cond_3

    .line 140
    .line 141
    const/16 v3, 0x8

    .line 142
    .line 143
    if-eq v0, v3, :cond_3

    .line 144
    .line 145
    const/16 v3, 0x9

    .line 146
    .line 147
    if-eq v0, v3, :cond_3

    .line 148
    .line 149
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 150
    .line 151
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    if-le v0, v2, :cond_2

    .line 156
    .line 157
    goto :goto_2

    .line 158
    :cond_2
    const/4 v2, 0x0

    .line 159
    :cond_3
    :goto_2
    iput-boolean v2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->baudRateWithPort:Z

    .line 160
    .line 161
    return-void

    .line 162
    :cond_4
    new-instance v0, Ljava/io/IOException;

    .line 163
    .line 164
    const-string v1, "Could not get device descriptors"

    .line 165
    .line 166
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    throw v0

    .line 170
    :cond_5
    new-instance v1, Ljava/io/IOException;

    .line 171
    .line 172
    const-string v2, "Init RTS,DTR failed: result="

    .line 173
    .line 174
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 179
    .line 180
    .line 181
    throw v1

    .line 182
    :cond_6
    new-instance v1, Ljava/io/IOException;

    .line 183
    .line 184
    const-string v2, "Reset failed: result="

    .line 185
    .line 186
    invoke-static {v0, v2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    throw v1

    .line 194
    :cond_7
    new-instance v0, Ljava/io/IOException;

    .line 195
    .line 196
    const-string v1, "Not enough endpoints"

    .line 197
    .line 198
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw v0

    .line 202
    :cond_8
    new-instance v0, Ljava/io/IOException;

    .line 203
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    const-string v2, "Could not claim interface "

    .line 207
    .line 208
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    iget v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 212
    .line 213
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    throw v0
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 8

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 4
    .line 5
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 6
    .line 7
    add-int/lit8 v4, p1, 0x1

    .line 8
    .line 9
    const/4 v6, 0x0

    .line 10
    const/16 v7, 0x1388

    .line 11
    .line 12
    const/16 v1, 0x40

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x1

    .line 16
    const/4 v5, 0x0

    .line 17
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-nez p1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p2, Ljava/io/IOException;

    .line 25
    .line 26
    const-string v0, "Purge write buffer failed: result="

    .line 27
    .line 28
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw p2

    .line 36
    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 39
    .line 40
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 41
    .line 42
    add-int/lit8 v4, p1, 0x1

    .line 43
    .line 44
    const/4 v6, 0x0

    .line 45
    const/16 v7, 0x1388

    .line 46
    .line 47
    const/16 v1, 0x40

    .line 48
    .line 49
    const/4 v2, 0x0

    .line 50
    const/4 v3, 0x2

    .line 51
    const/4 v5, 0x0

    .line 52
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_2

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    new-instance p2, Ljava/io/IOException;

    .line 60
    .line 61
    const-string v0, "Purge read buffer failed: result="

    .line 62
    .line 63
    invoke-static {p1, v0}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    throw p2

    .line 71
    :cond_3
    :goto_1
    return-void
.end method

.method public read([BI)I
    .locals 7

    array-length v0, p1

    const/4 v1, 0x2

    if-le v0, v1, :cond_4

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v4

    sub-long v4, v2, v4

    long-to-int p2, v4

    const/4 v4, 0x1

    invoke-static {v4, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    invoke-super {p0, p1, p2, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result p2

    if-ne p2, v1, :cond_1

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v4

    cmp-long v6, v4, v2

    if-ltz v6, :cond_0

    :cond_1
    if-gtz p2, :cond_3

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-gez v4, :cond_3

    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection()V

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2, v0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->read([BIZ)I

    move-result v2

    if-eq v2, v1, :cond_2

    move p2, v2

    :cond_3
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->readFilter([BI)I

    move-result p1

    return p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Read buffer to small"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFilter([BI)I
    .locals 5

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    add-int v3, v1, v0

    invoke-static {v3, p2}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    sub-int/2addr v4, v1

    if-ltz v4, :cond_0

    invoke-static {p1, v1, p1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v4

    move v1, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Expected at least 2 bytes"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    return v2
.end method

.method public setBreak(Z)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    or-int/lit16 v0, v0, 0x4000

    .line 6
    .line 7
    :cond_0
    move v4, v0

    .line 8
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 9
    .line 10
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 11
    .line 12
    add-int/lit8 v5, p1, 0x1

    .line 13
    .line 14
    const/4 v7, 0x0

    .line 15
    const/16 v8, 0x1388

    .line 16
    .line 17
    const/16 v2, 0x40

    .line 18
    .line 19
    const/4 v3, 0x4

    .line 20
    const/4 v6, 0x0

    .line 21
    invoke-virtual/range {v1 .. v8}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    new-instance v0, Ljava/io/IOException;

    .line 29
    .line 30
    const-string v1, "Setting BREAK failed: result="

    .line 31
    .line 32
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    throw v0
.end method

.method public setDTR(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x101

    .line 6
    .line 7
    const/16 v3, 0x101

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x100

    .line 11
    .line 12
    const/16 v3, 0x100

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 15
    .line 16
    add-int/lit8 v4, v1, 0x1

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/16 v7, 0x1388

    .line 20
    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->dtr:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v1, "Set DTR failed: result="

    .line 37
    .line 38
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method

.method public setLatencyTimer(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 4
    .line 5
    add-int/lit8 v4, v1, 0x1

    .line 6
    .line 7
    const/4 v6, 0x0

    .line 8
    const/16 v7, 0x1388

    .line 9
    .line 10
    const/16 v1, 0x40

    .line 11
    .line 12
    const/16 v2, 0x9

    .line 13
    .line 14
    const/4 v5, 0x0

    .line 15
    move v3, p1

    .line 16
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-nez p1, :cond_0

    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    new-instance v0, Ljava/io/IOException;

    .line 24
    .line 25
    const-string v1, "Set latency timer failed: result="

    .line 26
    .line 27
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw v0
.end method

.method public setParameters(IIII)V
    .locals 10

    .line 1
    if-lez p1, :cond_c

    .line 2
    .line 3
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->setBaudrate(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x5

    .line 7
    if-eq p2, p1, :cond_b

    .line 8
    .line 9
    const/4 p1, 0x6

    .line 10
    if-eq p2, p1, :cond_b

    .line 11
    .line 12
    const/4 p1, 0x7

    .line 13
    if-eq p2, p1, :cond_1

    .line 14
    .line 15
    const/16 p1, 0x8

    .line 16
    .line 17
    if-ne p2, p1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    const-string p3, "Invalid data bits: "

    .line 23
    .line 24
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    :goto_0
    const/4 p1, 0x3

    .line 33
    const/4 v0, 0x2

    .line 34
    const/4 v1, 0x1

    .line 35
    if-eqz p4, :cond_6

    .line 36
    .line 37
    if-eq p4, v1, :cond_5

    .line 38
    .line 39
    if-eq p4, v0, :cond_4

    .line 40
    .line 41
    if-eq p4, p1, :cond_3

    .line 42
    .line 43
    const/4 v2, 0x4

    .line 44
    if-ne p4, v2, :cond_2

    .line 45
    .line 46
    or-int/lit16 p2, p2, 0x400

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 50
    .line 51
    const-string p2, "Invalid parity: "

    .line 52
    .line 53
    invoke-static {p4, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p1

    .line 61
    :cond_3
    or-int/lit16 p2, p2, 0x300

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    or-int/lit16 p2, p2, 0x200

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_5
    or-int/lit16 p2, p2, 0x100

    .line 68
    .line 69
    :cond_6
    :goto_1
    if-eq p3, v1, :cond_9

    .line 70
    .line 71
    if-eq p3, v0, :cond_8

    .line 72
    .line 73
    if-eq p3, p1, :cond_7

    .line 74
    .line 75
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "Invalid stop bits: "

    .line 78
    .line 79
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    throw p1

    .line 87
    :cond_7
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 88
    .line 89
    const-string p2, "Unsupported stop bits: 1.5"

    .line 90
    .line 91
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    throw p1

    .line 95
    :cond_8
    or-int/lit16 p2, p2, 0x1000

    .line 96
    .line 97
    :cond_9
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 98
    .line 99
    iget p1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 100
    .line 101
    add-int/lit8 v6, p1, 0x1

    .line 102
    .line 103
    const/4 v8, 0x0

    .line 104
    const/16 v9, 0x1388

    .line 105
    .line 106
    const/16 v3, 0x40

    .line 107
    .line 108
    const/4 v4, 0x4

    .line 109
    const/4 v7, 0x0

    .line 110
    move v5, p2

    .line 111
    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_a

    .line 116
    .line 117
    iput p2, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->breakConfig:I

    .line 118
    .line 119
    return-void

    .line 120
    :cond_a
    new-instance p2, Ljava/io/IOException;

    .line 121
    .line 122
    const-string p3, "Setting parameters failed: result="

    .line 123
    .line 124
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    throw p2

    .line 132
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 133
    .line 134
    const-string p3, "Unsupported data bits: "

    .line 135
    .line 136
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1

    .line 144
    :cond_c
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 145
    .line 146
    const-string p3, "Invalid baud rate: "

    .line 147
    .line 148
    invoke-static {p1, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    throw p2
.end method

.method public setRTS(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x202

    .line 6
    .line 7
    const/16 v3, 0x202

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/16 v1, 0x200

    .line 11
    .line 12
    const/16 v3, 0x200

    .line 13
    .line 14
    :goto_0
    iget v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mPortNumber:I

    .line 15
    .line 16
    add-int/lit8 v4, v1, 0x1

    .line 17
    .line 18
    const/4 v6, 0x0

    .line 19
    const/16 v7, 0x1388

    .line 20
    .line 21
    const/16 v1, 0x40

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    const/4 v5, 0x0

    .line 25
    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-nez v0, :cond_1

    .line 30
    .line 31
    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/FtdiSerialDriver$FtdiSerialPort;->rts:Z

    .line 32
    .line 33
    return-void

    .line 34
    :cond_1
    new-instance p1, Ljava/io/IOException;

    .line 35
    .line 36
    const-string v1, "Set DTR failed: result="

    .line 37
    .line 38
    invoke-static {v0, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1
.end method
