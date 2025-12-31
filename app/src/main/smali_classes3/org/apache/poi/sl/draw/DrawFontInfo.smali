.class Lorg/apache/poi/sl/draw/DrawFontInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/poi/common/usermodel/fonts/FontInfo;


# annotations
.annotation runtime Lorg/apache/poi/util/Internal;
.end annotation


# instance fields
.field private final typeface:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getCharset()Lorg/apache/poi/common/usermodel/fonts/FontCharset;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontCharset;->ANSI:Lorg/apache/poi/common/usermodel/fonts/FontCharset;

    return-object v0
.end method

.method public getFamily()Lorg/apache/poi/common/usermodel/fonts/FontFamily;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontFamily;->FF_SWISS:Lorg/apache/poi/common/usermodel/fonts/FontFamily;

    return-object v0
.end method

.method public getIndex()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPitch()Lorg/apache/poi/common/usermodel/fonts/FontPitch;
    .locals 1

    sget-object v0, Lorg/apache/poi/common/usermodel/fonts/FontPitch;->VARIABLE:Lorg/apache/poi/common/usermodel/fonts/FontPitch;

    return-object v0
.end method

.method public getTypeface()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/poi/sl/draw/DrawFontInfo;->typeface:Ljava/lang/String;

    return-object v0
.end method

.method public setCharset(Lorg/apache/poi/common/usermodel/fonts/FontCharset;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setFamily(Lorg/apache/poi/common/usermodel/fonts/FontFamily;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setIndex(I)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setPitch(Lorg/apache/poi/common/usermodel/fonts/FontPitch;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setTypeface(Ljava/lang/String;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "DrawFontManagers FontInfo can\'t be changed."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
