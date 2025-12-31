.class public Lcom/scand/svg/css/util/SMapImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/scand/svg/css/util/SMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/scand/svg/css/util/SMapImpl$QName;
    }
.end annotation


# instance fields
.field private table:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/scand/svg/css/util/SMapImpl;->table:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/scand/svg/css/util/SMapImpl$QName;

    invoke-direct {v0, p1, p2}, Lcom/scand/svg/css/util/SMapImpl$QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :goto_0
    iget-object p1, p0, Lcom/scand/svg/css/util/SMapImpl;->table:Ljava/util/Hashtable;

    invoke-virtual {p1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
