.class public interface abstract Lorg/apache/ignite/spi/indexing/IndexingQueryFilter;
.super Ljava/lang/Object;
.source "IndexingQueryFilter.java"


# virtual methods
.method public abstract forSpace(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiPredicate;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiPredicate",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
