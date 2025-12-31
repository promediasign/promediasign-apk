.class public abstract Lnet/lingala/zip4j/model/ZipHeader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private signature:Lnet/lingala/zip4j/headers/HeaderSignature;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setSignature(Lnet/lingala/zip4j/headers/HeaderSignature;)V
    .locals 0

    iput-object p1, p0, Lnet/lingala/zip4j/model/ZipHeader;->signature:Lnet/lingala/zip4j/headers/HeaderSignature;

    return-void
.end method
