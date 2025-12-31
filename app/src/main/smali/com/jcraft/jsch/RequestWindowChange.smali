.class Lcom/jcraft/jsch/RequestWindowChange;
.super Lcom/jcraft/jsch/Request;
.source "SourceFile"


# instance fields
.field height_pixels:I

.field height_rows:I

.field width_columns:I

.field width_pixels:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/jcraft/jsch/Request;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_columns:I

    const/16 v0, 0x18

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_rows:I

    const/16 v0, 0x280

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->width_pixels:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/jcraft/jsch/RequestWindowChange;->height_pixels:I

    return-void
.end method
