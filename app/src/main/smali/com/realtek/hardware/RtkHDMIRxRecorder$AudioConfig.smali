.class public Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioConfig"
.end annotation


# instance fields
.field public bitrate:I

.field public channelCount:I

.field public sampleRate:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->channelCount:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->sampleRate:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$AudioConfig;->bitrate:I

    return-void
.end method
