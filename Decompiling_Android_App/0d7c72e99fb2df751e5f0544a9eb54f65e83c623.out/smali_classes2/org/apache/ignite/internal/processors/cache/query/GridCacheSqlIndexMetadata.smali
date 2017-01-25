.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;
.super Ljava/lang/Object;
.source "GridCacheSqlIndexMetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


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

.method public abstract name()Ljava/lang/String;
.end method

.method public abstract unique()Z
.end method
