.class public interface abstract Lorg/apache/ignite/internal/processors/query/GridQueryFieldsResult;
.super Ljava/lang/Object;
.source "GridQueryFieldsResult.java"


# virtual methods
.method public abstract iterator()Lorg/apache/ignite/spi/IgniteSpiCloseableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/spi/IgniteSpiCloseableIterator",
            "<",
            "Ljava/util/List",
            "<*>;>;"
        }
    .end annotation
.end method

.method public abstract metaData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/ignite/internal/processors/query/GridQueryFieldMetadata;",
            ">;"
        }
    .end annotation
.end method
