.class public interface abstract Lorg/apache/ignite/internal/processors/hadoop/HadoopMapReducePlan;
.super Ljava/lang/Object;
.source "HadoopMapReducePlan.java"

# interfaces
.implements Ljava/io/Serializable;


# virtual methods
.method public abstract mapperNodeIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract mappers()I
.end method

.method public abstract mappers(Ljava/util/UUID;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/hadoop/HadoopInputSplit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract nodeForReducer(I)Ljava/util/UUID;
.end method

.method public abstract reducerNodeIds()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end method

.method public abstract reducers()I
.end method

.method public abstract reducers(Ljava/util/UUID;)[I
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
