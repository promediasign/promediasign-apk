.class public interface abstract Lorg/apache/poi/ss/usermodel/Row;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "Lorg/apache/poi/ss/usermodel/Cell;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract cellIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lorg/apache/poi/ss/usermodel/Cell;",
            ">;"
        }
    .end annotation
.end method

.method public abstract createCell(I)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract createCell(II)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract createCell(ILorg/apache/poi/ss/usermodel/CellType;)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract getCell(I)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract getCell(ILorg/apache/poi/ss/usermodel/Row$MissingCellPolicy;)Lorg/apache/poi/ss/usermodel/Cell;
.end method

.method public abstract getFirstCellNum()S
.end method

.method public abstract getHeight()S
.end method

.method public abstract getHeightInPoints()F
.end method

.method public abstract getLastCellNum()S
.end method

.method public abstract getOutlineLevel()I
.end method

.method public abstract getPhysicalNumberOfCells()I
.end method

.method public abstract getRowNum()I
.end method

.method public abstract getRowStyle()Lorg/apache/poi/ss/usermodel/CellStyle;
.end method

.method public abstract getSheet()Lorg/apache/poi/ss/usermodel/Sheet;
.end method

.method public abstract getZeroHeight()Z
.end method

.method public abstract isFormatted()Z
.end method

.method public abstract removeCell(Lorg/apache/poi/ss/usermodel/Cell;)V
.end method

.method public abstract setHeight(S)V
.end method

.method public abstract setHeightInPoints(F)V
.end method

.method public abstract setRowNum(I)V
.end method

.method public abstract setRowStyle(Lorg/apache/poi/ss/usermodel/CellStyle;)V
.end method

.method public abstract setZeroHeight(Z)V
.end method
