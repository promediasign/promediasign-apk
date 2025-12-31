.class public Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxManager;
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

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->channelCount:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->sampleRate:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxManager$AudioConfig;->bitrate:I

    return-void
.end method
