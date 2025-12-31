.class public abstract Lorg/apache/poi/poifs/nio/DataSource;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract close()V
.end method

.method public abstract copyTo(Ljava/io/OutputStream;)V
.end method

.method public abstract read(IJ)Ljava/nio/ByteBuffer;
.end method

.method public abstract size()J
.end method

.method public abstract write(Ljava/nio/ByteBuffer;J)V
.end method
