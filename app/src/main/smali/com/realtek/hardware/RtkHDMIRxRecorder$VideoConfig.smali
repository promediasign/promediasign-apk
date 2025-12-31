.class public Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/realtek/hardware/RtkHDMIRxRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoConfig"
.end annotation


# instance fields
.field public fps:I

.field public height:I

.field public width:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->width:I

    iput p2, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->height:I

    iput p3, p0, Lcom/realtek/hardware/RtkHDMIRxRecorder$VideoConfig;->fps:I

    return-void
.end method
