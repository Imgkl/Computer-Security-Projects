.class public interface abstract Lorg/apache/ignite/internal/processors/query/GridQueryIndexDescriptor;
.super Ljava/lang/Object;
.source "GridQueryIndexDescriptor.java"


# virtual methods
.method public abstract descending(Ljava/lang/String;)Z
.end method

.method public abstract fields()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract type()Lorg/apache/ignite/internal/processors/query/GridQueryIndexType;
.end method
