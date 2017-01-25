.class public interface abstract Lorg/apache/ignite/internal/processors/cache/GridCacheMvccFuture;
.super Ljava/lang/Object;
.source "GridCacheMvccFuture.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheFuture",
        "<TT;>;"
    }
.end annotation


# virtual methods
.method public abstract onOwnerChanged(Lorg/apache/ignite/internal/processors/cache/GridCacheEntryEx;Lorg/apache/ignite/internal/processors/cache/GridCacheMvccCandidate;)Z
.end method
