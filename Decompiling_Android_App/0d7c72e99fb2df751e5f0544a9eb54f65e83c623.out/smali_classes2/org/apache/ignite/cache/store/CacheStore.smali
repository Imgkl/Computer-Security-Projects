.class public interface abstract Lorg/apache/ignite/cache/store/CacheStore;
.super Ljava/lang/Object;
.source "CacheStore.java"

# interfaces
.implements Ljavax/cache/integration/CacheLoader;
.implements Ljavax/cache/integration/CacheWriter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/integration/CacheLoader",
        "<TK;TV;>;",
        "Ljavax/cache/integration/CacheWriter",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public varargs abstract loadCache(Lorg/apache/ignite/lang/IgniteBiInClosure;[Ljava/lang/Object;)V
    .param p2    # [Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgniteBiInClosure",
            "<TK;TV;>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheLoaderException;
        }
    .end annotation
.end method

.method public abstract sessionEnd(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/integration/CacheWriterException;
        }
    .end annotation
.end method
