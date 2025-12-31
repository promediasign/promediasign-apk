.class public final Lorg/apache/poi/hssf/record/common/ExtendedColor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final THEME_ACCENT_1:I = 0x4

.field public static final THEME_ACCENT_2:I = 0x5

.field public static final THEME_ACCENT_3:I = 0x6

.field public static final THEME_ACCENT_4:I = 0x7

.field public static final THEME_ACCENT_5:I = 0x8

.field public static final THEME_ACCENT_6:I = 0x9

.field public static final THEME_DARK_1:I = 0x0

.field public static final THEME_DARK_2:I = 0x2

.field public static final THEME_FOLLOWED_HYPERLINK:I = 0xb

.field public static final THEME_HYPERLINK:I = 0xa

.field public static final THEME_LIGHT_1:I = 0x1

.field public static final THEME_LIGHT_2:I = 0x3

.field public static final TYPE_AUTO:I = 0x0

.field public static final TYPE_INDEXED:I = 0x1

.field public static final TYPE_RGB:I = 0x2

.field public static final TYPE_THEMED:I = 0x3

.field public static final TYPE_UNSET:I = 0x4


# instance fields
.field private colorIndex:I

.field private rgba:[B

.field private themeIndex:I

.field private tint:D

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/poi/util/LittleEndianInput;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianInput;->readFully([B)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    move-result v0

    iput v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readInt()I

    :goto_0
    invoke-interface {p1}, Lorg/apache/poi/util/LittleEndianInput;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void
.end method


# virtual methods
.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;->clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/poi/hssf/record/common/ExtendedColor;
    .locals 5

    .line 2
    new-instance v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;

    invoke-direct {v0}, Lorg/apache/poi/hssf/record/common/ExtendedColor;-><init>()V

    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    iget-wide v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    iput-wide v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x4

    new-array v2, v1, [B

    iput-object v2, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    iget-object v3, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    iput v1, v0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getColorIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    return v0
.end method

.method public getDataLength()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public getRGBA()[B
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    return-object v0
.end method

.method public getThemeIndex()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return v0
.end method

.method public getTint()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-wide v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    return v0
.end method

.method public serialize(Lorg/apache/poi/util/LittleEndianOutput;)V
    .locals 2

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    :goto_0
    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->writeInt(I)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    invoke-interface {p1, v0}, Lorg/apache/poi/util/LittleEndianOutput;->write([B)V

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-wide v0, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    invoke-interface {p1, v0, v1}, Lorg/apache/poi/util/LittleEndianOutput;->writeDouble(D)V

    return-void
.end method

.method public setColorIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    return-void
.end method

.method public setRGBA([B)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    :goto_0
    iput-object p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    return-void
.end method

.method public setThemeIndex(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    return-void
.end method

.method public setTint(D)V
    .locals 3

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    iput-wide p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tint/Shade must be between -1 and +1"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    const-string v1, "    [Extended Color]\n          .type  = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->type:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 11
    .line 12
    .line 13
    const-string v1, "\n          .tint  = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->tint:D

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(D)Ljava/lang/StringBuffer;

    .line 21
    .line 22
    .line 23
    const-string v1, "\n          .c_idx = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->colorIndex:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 31
    .line 32
    .line 33
    const-string v1, "\n          .rgba  = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->rgba:[B

    .line 39
    .line 40
    invoke-static {v1}, Lorg/apache/poi/util/HexDump;->toHex([B)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 45
    .line 46
    .line 47
    const-string v1, "\n          .t_idx = "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lorg/apache/poi/hssf/record/common/ExtendedColor;->themeIndex:I

    .line 53
    .line 54
    const-string v2, "\n    [/Extended Color]\n"

    .line 55
    .line 56
    invoke-static {v0, v2, v1}, Lorg/apache/ftpserver/main/a;->j(Ljava/lang/StringBuffer;Ljava/lang/String;I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    return-object v0
.end method
