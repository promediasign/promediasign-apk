.class public interface abstract Lsk/mimac/slideshow/playlist/PlaylistWrapper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/Long;
.end method

.method public abstract getMusic()Lsk/mimac/slideshow/enums/MusicType;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNext(I)Lsk/mimac/slideshow/playlist/PlaylistWrapper$NextItem;
.end method

.method public abstract getSyncCode()Ljava/lang/String;
.end method

.method public abstract hasError()Z
.end method

.method public abstract shouldStillPlay()Z
.end method
