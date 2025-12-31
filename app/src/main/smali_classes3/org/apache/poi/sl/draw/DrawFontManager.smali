.class public interface abstract Lorg/apache/poi/sl/draw/DrawFontManager;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract createAWTFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;DZZ)Ljava/awt/Font;
.end method

.method public abstract getFallbackFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.end method

.method public abstract getMappedFont(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;)Lorg/apache/poi/common/usermodel/fonts/FontInfo;
.end method

.method public abstract mapFontCharset(Ljava/awt/Graphics2D;Lorg/apache/poi/common/usermodel/fonts/FontInfo;Ljava/lang/String;)Ljava/lang/String;
.end method
