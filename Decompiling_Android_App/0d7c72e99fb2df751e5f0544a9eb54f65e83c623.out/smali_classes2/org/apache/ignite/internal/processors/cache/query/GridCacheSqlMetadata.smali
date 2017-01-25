.class public interface abstract Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlMetadata;
.super Ljava/lang/Object;
.source "GridCacheSqlMetadata.java"

# interfaces
.implements Ljava/io/Externalizable;


# virtual methods
.method public abstract cacheName()Ljava/lang/String;
.end method

.method public abstract fields(Ljava/lang/String;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract indexes(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/internal/processors/cache/query/GridCacheSqlIndexMetadata;",
            ">;"
        }
    .end annotation
.end method

.method public abstract keyClass(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method

.method public abstract types()Ljava/util/Collection;
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

.method public abstract valueClass(Ljava/lang/String;)Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
