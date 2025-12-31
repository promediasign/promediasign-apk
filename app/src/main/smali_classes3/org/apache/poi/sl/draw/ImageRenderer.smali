.class public interface abstract Lorg/apache/poi/sl/draw/ImageRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;)Z
.end method

.method public abstract drawImage(Ljava/awt/Graphics2D;Ljava/awt/geom/Rectangle2D;Ljava/awt/Insets;)Z
.end method

.method public abstract getDimension()Ljava/awt/Dimension;
.end method

.method public abstract getImage()Ljava/awt/image/BufferedImage;
.end method

.method public abstract getImage(Ljava/awt/Dimension;)Ljava/awt/image/BufferedImage;
.end method

.method public abstract loadImage(Ljava/io/InputStream;Ljava/lang/String;)V
.end method

.method public abstract loadImage([BLjava/lang/String;)V
.end method

.method public abstract setAlpha(D)V
.end method
