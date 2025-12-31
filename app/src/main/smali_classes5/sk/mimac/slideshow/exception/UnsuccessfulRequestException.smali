.class public Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;
.super Ljava/io/IOException;
.source "SourceFile"


# instance fields
.field private final code:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    iput p2, p0, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;->code:I

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    iget v0, p0, Lsk/mimac/slideshow/exception/UnsuccessfulRequestException;->code:I

    return v0
.end method
