.class public interface abstract Lorg/h2/api/CustomDataTypesHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract convert(Lorg/h2/value/Value;I)Lorg/h2/value/Value;
.end method

.method public abstract getAddProofType(I)I
.end method

.method public abstract getDataTypeById(I)Lorg/h2/value/DataType;
.end method

.method public abstract getDataTypeByName(Ljava/lang/String;)Lorg/h2/value/DataType;
.end method

.method public abstract getDataTypeClassName(I)Ljava/lang/String;
.end method

.method public abstract getDataTypeOrder(I)I
.end method

.method public abstract getObject(Lorg/h2/value/Value;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/h2/value/Value;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract getTypeIdFromClass(Ljava/lang/Class;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation
.end method

.method public abstract getValue(ILjava/lang/Object;Lorg/h2/store/DataHandler;)Lorg/h2/value/Value;
.end method

.method public abstract supportsAdd(I)Z
.end method
