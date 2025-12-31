.class public Lsk/mimac/slideshow/exception/ApiException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/exception/ApiException$Type;
    }
.end annotation


# instance fields
.field private final type:Lsk/mimac/slideshow/exception/ApiException$Type;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lsk/mimac/slideshow/exception/ApiException$Type;)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lsk/mimac/slideshow/exception/ApiException;->type:Lsk/mimac/slideshow/exception/ApiException$Type;

    return-void
.end method


# virtual methods
.method public getType()Lsk/mimac/slideshow/exception/ApiException$Type;
    .locals 1

    iget-object v0, p0, Lsk/mimac/slideshow/exception/ApiException;->type:Lsk/mimac/slideshow/exception/ApiException$Type;

    return-object v0
.end method
