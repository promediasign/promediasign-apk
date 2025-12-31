.class Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;
.super Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ProlificSerialPort"
.end annotation


# static fields
.field private static final CONTROL_DTR:I = 0x1

.field private static final CONTROL_RTS:I = 0x2

.field private static final CTRL_OUT_REQTYPE:I = 0x21

.field private static final FLUSH_RX_REQUEST:I = 0x8

.field private static final FLUSH_TX_REQUEST:I = 0x9

.field private static final GET_CONTROL_FLAG_CD:I = 0x2

.field private static final GET_CONTROL_FLAG_CTS:I = 0x8

.field private static final GET_CONTROL_FLAG_DSR:I = 0x4

.field private static final GET_CONTROL_FLAG_RI:I = 0x1

.field private static final GET_CONTROL_HXN_FLAG_CD:I = 0x40

.field private static final GET_CONTROL_HXN_FLAG_CTS:I = 0x8

.field private static final GET_CONTROL_HXN_FLAG_DSR:I = 0x20

.field private static final GET_CONTROL_HXN_FLAG_RI:I = 0x80

.field private static final GET_CONTROL_HXN_REQUEST:I = 0x80

.field private static final GET_CONTROL_REQUEST:I = 0x87

.field private static final INTERRUPT_ENDPOINT:I = 0x81

.field private static final READ_ENDPOINT:I = 0x83

.field private static final RESET_HXN_REQUEST:I = 0x7

.field private static final RESET_HXN_RX_PIPE:I = 0x1

.field private static final RESET_HXN_TX_PIPE:I = 0x2

.field private static final SEND_BREAK_REQUEST:I = 0x23

.field private static final SET_CONTROL_REQUEST:I = 0x22

.field private static final SET_LINE_REQUEST:I = 0x20

.field private static final STATUS_BUFFER_SIZE:I = 0xa

.field private static final STATUS_BYTE_IDX:I = 0x8

.field private static final STATUS_FLAG_CD:I = 0x1

.field private static final STATUS_FLAG_CTS:I = 0x80

.field private static final STATUS_FLAG_DSR:I = 0x2

.field private static final STATUS_FLAG_RI:I = 0x8

.field private static final STATUS_NOTIFICATION:I = 0xa1

.field private static final USB_READ_TIMEOUT_MILLIS:I = 0x3e8

.field private static final USB_RECIP_INTERFACE:I = 0x1

.field private static final USB_WRITE_TIMEOUT_MILLIS:I = 0x1388

.field private static final VENDOR_IN_REQTYPE:I = 0xc0

.field private static final VENDOR_OUT_REQTYPE:I = 0x40

.field private static final VENDOR_READ_HXN_REQUEST:I = 0x81

.field private static final VENDOR_READ_REQUEST:I = 0x1

.field private static final VENDOR_WRITE_HXN_REQUEST:I = 0x80

.field private static final VENDOR_WRITE_REQUEST:I = 0x1

.field private static final WRITE_ENDPOINT:I = 0x2


# instance fields
.field private mBaudRate:I

.field private mControlLinesValue:I

.field private mDataBits:I

.field protected mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

.field private mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

.field private mParity:I

.field private mReadStatusException:Ljava/io/IOException;

.field private volatile mReadStatusThread:Ljava/lang/Thread;

.field private final mReadStatusThreadLock:Ljava/lang/Object;

.field private mStatus:I

.field private mStopBits:I

.field private mStopReadStatusThread:Z

.field final synthetic this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;


# direct methods
.method public constructor <init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;Landroid/hardware/usb/UsbDevice;I)V
    .locals 0

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-direct {p0, p2, p3}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;-><init>(Landroid/hardware/usb/UsbDevice;I)V

    sget-object p1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    iput-object p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 p1, 0x0

    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 p2, -0x1

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    iput-boolean p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    iput-object p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    return-void
.end method

.method public static synthetic a(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->readStatusThreadFunction()V

    return-void
.end method

.method private ctrlOut(III[B)V
    .locals 6

    const/16 v1, 0x21

    move-object v0, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method

.method private doBlackMagic()V
    .locals 6

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const v0, 0x8484

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const/16 v3, 0x404

    const/4 v4, 0x0

    invoke-direct {p0, v3, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    const v5, 0x8383

    invoke-direct {p0, v5, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    invoke-direct {p0, v3, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    invoke-direct {p0, v0, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    invoke-direct {p0, v5, v1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    invoke-direct {p0, v1, v2, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    invoke-direct {p0, v2, v1, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x24

    goto :goto_0

    :cond_1
    const/16 v0, 0x44

    :goto_0
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0, v4}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    return-void
.end method

.method private filterBaudRate(I)I
    .locals 14

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-lez p1, :cond_a

    .line 5
    .line 6
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 7
    .line 8
    sget-object v4, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 9
    .line 10
    if-ne v3, v4, :cond_0

    .line 11
    .line 12
    return p1

    .line 13
    :cond_0
    invoke-static {}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$100()[I

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    array-length v4, v3

    .line 18
    const/4 v5, 0x0

    .line 19
    :goto_0
    if-ge v5, v4, :cond_2

    .line 20
    .line 21
    aget v6, v3, v5

    .line 22
    .line 23
    if-ne v6, p1, :cond_1

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    add-int/2addr v5, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const v3, 0x16e36000

    .line 29
    .line 30
    .line 31
    div-int v4, v3, p1

    .line 32
    .line 33
    if-eqz v4, :cond_9

    .line 34
    .line 35
    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 36
    .line 37
    sget-object v6, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    .line 38
    .line 39
    const/high16 v7, -0x80000000

    .line 40
    .line 41
    const-string v8, "Baud rate to low"

    .line 42
    .line 43
    if-ne v5, v6, :cond_5

    .line 44
    .line 45
    const/4 v5, 0x0

    .line 46
    :goto_1
    const/16 v6, 0x800

    .line 47
    .line 48
    if-lt v4, v6, :cond_4

    .line 49
    .line 50
    const/16 v6, 0xf

    .line 51
    .line 52
    if-ge v5, v6, :cond_3

    .line 53
    .line 54
    shr-int/2addr v4, v2

    .line 55
    add-int/2addr v5, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_3
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 58
    .line 59
    invoke-direct {p1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    throw p1

    .line 63
    :cond_4
    and-int/lit8 v6, v5, -0x2

    .line 64
    .line 65
    shl-int/lit8 v6, v6, 0xc

    .line 66
    .line 67
    add-int/2addr v6, v4

    .line 68
    and-int/lit8 v8, v5, 0x1

    .line 69
    .line 70
    shl-int/lit8 v8, v8, 0x10

    .line 71
    .line 72
    add-int/2addr v6, v8

    .line 73
    add-int/2addr v6, v7

    .line 74
    div-int/2addr v3, v4

    .line 75
    shr-int/2addr v3, v5

    .line 76
    goto :goto_3

    .line 77
    :cond_5
    const/4 v5, 0x0

    .line 78
    :goto_2
    const/16 v6, 0x200

    .line 79
    .line 80
    if-lt v4, v6, :cond_7

    .line 81
    .line 82
    const/4 v6, 0x7

    .line 83
    if-ge v5, v6, :cond_6

    .line 84
    .line 85
    shr-int/2addr v4, v0

    .line 86
    add-int/2addr v5, v2

    .line 87
    goto :goto_2

    .line 88
    :cond_6
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 89
    .line 90
    invoke-direct {p1, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    throw p1

    .line 94
    :cond_7
    shl-int/lit8 v6, v5, 0x9

    .line 95
    .line 96
    add-int/2addr v6, v4

    .line 97
    add-int/2addr v6, v7

    .line 98
    div-int/2addr v3, v4

    .line 99
    shl-int/lit8 v7, v5, 0x1

    .line 100
    .line 101
    shr-int/2addr v3, v7

    .line 102
    :goto_3
    int-to-double v7, v3

    .line 103
    int-to-double v9, p1

    .line 104
    div-double/2addr v7, v9

    .line 105
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    .line 106
    .line 107
    sub-double/2addr v9, v7

    .line 108
    invoke-static {v9, v10}, Ljava/lang/Math;->abs(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    const-wide v9, 0x3f9fbe76c8b43958L    # 0.031

    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    .line 118
    .line 119
    cmpl-double v13, v7, v9

    .line 120
    .line 121
    if-gez v13, :cond_8

    .line 122
    .line 123
    iget-object v9, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    .line 124
    .line 125
    invoke-static {v9}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v9

    .line 129
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    mul-double v7, v7, v11

    .line 138
    .line 139
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 140
    .line 141
    .line 142
    move-result-object v7

    .line 143
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v8

    .line 147
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v5

    .line 155
    const/4 v10, 0x6

    .line 156
    new-array v10, v10, [Ljava/lang/Object;

    .line 157
    .line 158
    aput-object p1, v10, v1

    .line 159
    .line 160
    aput-object v3, v10, v2

    .line 161
    .line 162
    aput-object v7, v10, v0

    .line 163
    .line 164
    const/4 p1, 0x3

    .line 165
    aput-object v8, v10, p1

    .line 166
    .line 167
    const/4 p1, 0x4

    .line 168
    aput-object v4, v10, p1

    .line 169
    .line 170
    const/4 p1, 0x5

    .line 171
    aput-object v5, v10, p1

    .line 172
    .line 173
    const-string p1, "baud rate=%d, effective=%d, error=%.1f%%, value=0x%08x, mantissa=%d, exponent=%d"

    .line 174
    .line 175
    invoke-static {p1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-static {v9, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    return v6

    .line 183
    :cond_8
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 184
    .line 185
    mul-double v7, v7, v11

    .line 186
    .line 187
    invoke-static {v7, v8}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    new-array v2, v2, [Ljava/lang/Object;

    .line 192
    .line 193
    aput-object v0, v2, v1

    .line 194
    .line 195
    const-string v0, "Baud rate deviation %.1f%% is higher than allowed 3%%"

    .line 196
    .line 197
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw p1

    .line 205
    :cond_9
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 206
    .line 207
    const-string v0, "Baud rate to high"

    .line 208
    .line 209
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw p1

    .line 213
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 214
    .line 215
    const-string v1, "Invalid baud rate: "

    .line 216
    .line 217
    invoke-static {p1, v1}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object p1

    .line 221
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw v0
.end method

.method private getStatus()I
    .locals 6

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v3, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/16 v4, 0x80

    const/4 v5, 0x1

    if-ne v2, v3, :cond_3

    invoke-direct {p0, v4, v1, v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    move-result-object v2

    aget-byte v1, v2, v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_0

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :cond_0
    :goto_0
    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_1

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :cond_1
    and-int/lit8 v2, v1, 0x40

    if-nez v2, :cond_2

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :cond_2
    and-int/2addr v1, v4

    if-nez v1, :cond_7

    iget v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :goto_1
    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_2

    :cond_3
    const/16 v2, 0x87

    invoke-direct {p0, v2, v1, v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorIn(III)[B

    move-result-object v2

    aget-byte v1, v2, v1

    and-int/lit8 v2, v1, 0x8

    if-nez v2, :cond_4

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :cond_4
    and-int/lit8 v2, v1, 0x4

    if-nez v2, :cond_5

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :cond_5
    and-int/lit8 v2, v1, 0x2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    :cond_6
    and-int/2addr v1, v5

    if-nez v1, :cond_7

    iget v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_1

    :cond_7
    :goto_2
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/hoho/android/usbserial/driver/a;

    invoke-direct {v2, p0}, Lcom/hoho/android/usbserial/driver/a;-><init>(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1, v5}, Ljava/lang/Thread;->setDaemon(Z)V

    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8
    monitor-exit v0

    goto :goto_4

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_9
    :goto_4
    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    if-nez v0, :cond_a

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    return v0

    :cond_a
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private inControlTransfer(IIIII)[B
    .locals 9

    new-array v8, p5, [B

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v7, 0x3e8

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, v8

    move v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, p5, :cond_0

    return-object v8

    :cond_0
    new-instance p2, Ljava/io/IOException;

    iget-object p4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p4, p5, v0

    const/4 p4, 0x1

    aput-object p3, p5, p4

    const/4 p3, 0x2

    aput-object p1, p5, p3

    const-string p1, "ControlTransfer %s 0x%x failed: %d"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private outControlTransfer(IIII[B)V
    .locals 10

    const/4 v0, 0x0

    if-nez p5, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    array-length v1, p5

    :goto_0
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/16 v9, 0x1388

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move v8, v1

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/usb/UsbDeviceConnection;->controlTransfer(IIII[BII)I

    move-result p1

    if-ne p1, v1, :cond_1

    return-void

    :cond_1
    new-instance p2, Ljava/io/IOException;

    iget-object p4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {p4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p5, 0x3

    new-array p5, p5, [Ljava/lang/Object;

    aput-object p4, p5, v0

    const/4 p4, 0x1

    aput-object p3, p5, p4

    const/4 p3, 0x2

    aput-object p1, p5, p3

    const-string p1, "ControlTransfer %s 0x%x failed: %d"

    invoke-static {p1, p5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private readStatusThreadFunction()V
    .locals 8

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    if-nez v0, :cond_4

    const/16 v0, 0xa

    new-array v1, v0, [B

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v5, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    const/16 v6, 0x1f4

    invoke-virtual {v4, v5, v1, v0, v6}, Landroid/hardware/usb/UsbDeviceConnection;->bulkTransfer(Landroid/hardware/usb/UsbEndpoint;[BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-static {}, Lcom/hoho/android/usbserial/util/MonotonicClock;->millis()J

    move-result-wide v5

    cmp-long v7, v5, v2

    if-gez v7, :cond_1

    invoke-virtual {p0}, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->testConnection()V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_1
    if-lez v4, :cond_0

    if-ne v4, v0, :cond_3

    const/4 v0, 0x0

    aget-byte v2, v1, v0

    const/16 v3, -0x5f

    if-ne v2, v3, :cond_2

    const/16 v0, 0x8

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStatus:I

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid status notification, expected 161 request, got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v0, v1, v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid status notification, expected 10 bytes, got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    iput-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    :cond_4
    return-void
.end method

.method private resetDevice()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->purgeHwBuffers(ZZ)V

    return-void
.end method

.method private setControlLines(I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/16 v2, 0x22

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    return-void
.end method

.method private testHxStatus()Z
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/16 v1, 0xc0

    const/4 v2, 0x1

    const v3, 0x8080

    move-object v0, p0

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    const/4 v0, 0x0

    return v0
.end method

.method private testStatusFlag(I)Z
    .locals 1

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private vendorIn(III)[B
    .locals 7

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x81

    const/16 v3, 0x81

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0xc0

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->inControlTransfer(IIIII)[B

    move-result-object p1

    return-object p1
.end method

.method private vendorOut(II[B)V
    .locals 7

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x80

    const/16 v3, 0x80

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    const/4 v3, 0x1

    :goto_0
    const/16 v2, 0x40

    move-object v1, p0

    move v4, p1

    move v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->outControlTransfer(IIII[B)V

    return-void
.end method


# virtual methods
.method public closeInt()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThreadLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :try_start_2
    iput-boolean v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    iget-object v3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v3}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "An error occured while waiting for status read thread"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-boolean v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopReadStatusThread:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusThread:Ljava/lang/Thread;

    iput-object v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mReadStatusException:Ljava/io/IOException;

    :cond_0
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    :goto_2
    :try_start_7
    iget-object v1, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/hardware/usb/UsbDeviceConnection;->releaseInterface(Landroid/hardware/usb/UsbInterface;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    return-void
.end method

.method public getCD()Z
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getCTS()Z
    .locals 1

    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

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

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->getStatus()I

    move-result v0

    const-class v1, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-eqz v2, :cond_1

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CTS:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_1
    iget v2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DTR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->DSR:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_4

    sget-object v2, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->CD:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_4
    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    sget-object v0, Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;->RI:Lcom/hoho/android/usbserial/driver/UsbSerialPort$ControlLine;

    invoke-virtual {v1, v0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v1
.end method

.method public getDSR()Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getDTR()Z
    .locals 2

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public getDriver()Lcom/hoho/android/usbserial/driver/UsbSerialDriver;
    .locals 1

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    return-object v0
.end method

.method public getRI()Z
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testStatusFlag(I)Z

    move-result v0

    return v0
.end method

.method public getRTS()Z
    .locals 1

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    const/4 v0, 0x3

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    iget-object v4, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v5}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v6

    if-ge v4, v6, :cond_3

    invoke-virtual {v2, v4}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v7

    if-eq v7, v1, :cond_2

    const/16 v8, 0x81

    if-eq v7, v8, :cond_1

    const/16 v8, 0x83

    if-eq v7, v8, :cond_0

    goto :goto_1

    :cond_0
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mReadEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_1
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mInterruptEndpoint:Landroid/hardware/usb/UsbEndpoint;

    goto :goto_1

    :cond_2
    iput-object v6, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mWriteEndpoint:Landroid/hardware/usb/UsbEndpoint;

    :goto_1
    add-int/2addr v4, v5

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mConnection:Landroid/hardware/usb/UsbDeviceConnection;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDeviceConnection;->getRawDescriptors()[B

    move-result-object v2

    if-eqz v2, :cond_9

    array-length v4, v2

    const/16 v6, 0xe

    if-lt v4, v6, :cond_9

    aget-byte v4, v2, v0

    shl-int/lit8 v4, v4, 0x8

    aget-byte v6, v2, v1

    add-int/2addr v4, v6

    const/16 v6, 0xd

    aget-byte v6, v2, v6

    shl-int/lit8 v6, v6, 0x8

    const/16 v7, 0xc

    aget-byte v7, v2, v7

    add-int/2addr v6, v7

    const/4 v7, 0x7

    aget-byte v2, v2, v7

    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v7}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v7

    if-eq v7, v1, :cond_8

    const/16 v7, 0x40

    if-eq v2, v7, :cond_4

    goto :goto_4

    :cond_4
    const/16 v7, 0x200

    if-ne v4, v7, :cond_7

    const/16 v7, 0x300

    if-ne v6, v7, :cond_5

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testHxStatus()Z

    move-result v7

    if-eqz v7, :cond_5

    :goto_2
    sget-object v7, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_T:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    :goto_3
    iput-object v7, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_5

    :cond_5
    const/16 v7, 0x500

    if-ne v6, v7, :cond_6

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->testHxStatus()Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    sget-object v7, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    :cond_7
    sget-object v7, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HX:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    :cond_8
    :goto_4
    sget-object v7, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_01:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    goto :goto_3

    :goto_5
    iget-object v7, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->this$0:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;

    invoke-static {v7}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;->access$000(Lcom/hoho/android/usbserial/driver/ProlificSerialDriver;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v8, p0, Lcom/hoho/android/usbserial/driver/CommonUsbSerialPort;->mDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v8}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    iget-object v9, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v4, v10, v3

    aput-object v6, v10, v5

    aput-object v8, v10, v1

    aput-object v2, v10, v0

    const/4 v0, 0x4

    aput-object v9, v10, v0

    const-string v0, "usbVersion=%x, deviceVersion=%x, deviceClass=%d, packetSize=%d => deviceType=%s"

    invoke-static {v0, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->doBlackMagic()V

    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    invoke-direct {p0, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void

    :cond_9
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Could not get device descriptors"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Error claiming Prolific interface 0"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public purgeHwBuffers(ZZ)V
    .locals 3

    iget-object v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDeviceType:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    sget-object v1, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;->DEVICE_TYPE_HXN:Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_0

    or-int/lit8 p1, p1, 0x2

    :cond_0
    if-eqz p1, :cond_3

    const/4 p2, 0x7

    invoke-direct {p0, p2, p1, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-direct {p0, p1, v0, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_2
    if-eqz p2, :cond_3

    const/16 p1, 0x9

    invoke-direct {p0, p1, v0, v2}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->vendorOut(II[B)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setBreak(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const p1, 0xffff

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    const/16 v2, 0x23

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    return-void
.end method

.method public setDTR(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x2

    :goto_0
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method

.method public setParameters(IIII)V
    .locals 7

    .line 1
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->filterBaudRate(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 6
    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 10
    .line 11
    if-ne v0, p2, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 14
    .line 15
    if-ne v0, p3, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 18
    .line 19
    if-ne v0, p4, :cond_0

    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x7

    .line 23
    new-array v0, v0, [B

    .line 24
    .line 25
    and-int/lit16 v1, p1, 0xff

    .line 26
    .line 27
    int-to-byte v1, v1

    .line 28
    const/4 v2, 0x0

    .line 29
    aput-byte v1, v0, v2

    .line 30
    .line 31
    shr-int/lit8 v1, p1, 0x8

    .line 32
    .line 33
    and-int/lit16 v1, v1, 0xff

    .line 34
    .line 35
    int-to-byte v1, v1

    .line 36
    const/4 v3, 0x1

    .line 37
    aput-byte v1, v0, v3

    .line 38
    .line 39
    shr-int/lit8 v1, p1, 0x10

    .line 40
    .line 41
    and-int/lit16 v1, v1, 0xff

    .line 42
    .line 43
    int-to-byte v1, v1

    .line 44
    const/4 v4, 0x2

    .line 45
    aput-byte v1, v0, v4

    .line 46
    .line 47
    shr-int/lit8 v1, p1, 0x18

    .line 48
    .line 49
    and-int/lit16 v1, v1, 0xff

    .line 50
    .line 51
    int-to-byte v1, v1

    .line 52
    const/4 v5, 0x3

    .line 53
    aput-byte v1, v0, v5

    .line 54
    .line 55
    const/4 v1, 0x4

    .line 56
    if-eq p3, v3, :cond_3

    .line 57
    .line 58
    if-eq p3, v4, :cond_2

    .line 59
    .line 60
    if-ne p3, v5, :cond_1

    .line 61
    .line 62
    aput-byte v3, v0, v1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 66
    .line 67
    const-string p2, "Invalid stop bits: "

    .line 68
    .line 69
    invoke-static {p3, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    throw p1

    .line 77
    :cond_2
    aput-byte v4, v0, v1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    aput-byte v2, v0, v1

    .line 81
    .line 82
    :goto_0
    const/4 v6, 0x5

    .line 83
    if-eqz p4, :cond_8

    .line 84
    .line 85
    if-eq p4, v3, :cond_7

    .line 86
    .line 87
    if-eq p4, v4, :cond_6

    .line 88
    .line 89
    if-eq p4, v5, :cond_5

    .line 90
    .line 91
    if-ne p4, v1, :cond_4

    .line 92
    .line 93
    aput-byte v1, v0, v6

    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 97
    .line 98
    const-string p2, "Invalid parity: "

    .line 99
    .line 100
    invoke-static {p4, p2}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    throw p1

    .line 108
    :cond_5
    aput-byte v5, v0, v6

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_6
    aput-byte v4, v0, v6

    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_7
    aput-byte v3, v0, v6

    .line 115
    .line 116
    goto :goto_1

    .line 117
    :cond_8
    aput-byte v2, v0, v6

    .line 118
    .line 119
    :goto_1
    if-lt p2, v6, :cond_9

    .line 120
    .line 121
    const/16 v1, 0x8

    .line 122
    .line 123
    if-gt p2, v1, :cond_9

    .line 124
    .line 125
    const/4 v1, 0x6

    .line 126
    int-to-byte v3, p2

    .line 127
    aput-byte v3, v0, v1

    .line 128
    .line 129
    const/16 v1, 0x20

    .line 130
    .line 131
    invoke-direct {p0, v1, v2, v2, v0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->ctrlOut(III[B)V

    .line 132
    .line 133
    .line 134
    invoke-direct {p0}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->resetDevice()V

    .line 135
    .line 136
    .line 137
    iput p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mBaudRate:I

    .line 138
    .line 139
    iput p2, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mDataBits:I

    .line 140
    .line 141
    iput p3, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mStopBits:I

    .line 142
    .line 143
    iput p4, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mParity:I

    .line 144
    .line 145
    return-void

    .line 146
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 147
    .line 148
    const-string p3, "Invalid data bits: "

    .line 149
    .line 150
    invoke-static {p2, p3}, LA/g;->c(ILjava/lang/String;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    throw p1
.end method

.method public setRTS(Z)V
    .locals 0

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    or-int/lit8 p1, p1, 0x2

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->mControlLinesValue:I

    and-int/lit8 p1, p1, -0x3

    :goto_0
    invoke-direct {p0, p1}, Lcom/hoho/android/usbserial/driver/ProlificSerialDriver$ProlificSerialPort;->setControlLines(I)V

    return-void
.end method
