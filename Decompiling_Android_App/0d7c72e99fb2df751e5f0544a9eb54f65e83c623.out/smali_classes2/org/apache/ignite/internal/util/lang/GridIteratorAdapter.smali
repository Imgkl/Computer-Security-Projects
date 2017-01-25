.class public abstract Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;
.super Ljava/lang/Object;
.source "GridIteratorAdapter.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/lang/GridIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/lang/GridIterator",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    .prologue
    .line 45
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;->hasNextX()Z
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 47
    :catch_0
    move-exception v0

    .line 48
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter<TT;>;"
    return-object p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;->nextX()Ljava/lang/Object;
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final remove()V
    .locals 2

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;, "Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter<TT;>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridIteratorAdapter;->removeX()V
    :try_end_0
    .catch Lorg/apache/ignite/IgniteCheckedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "e":Lorg/apache/ignite/IgniteCheckedException;
    new-instance v1, Lorg/apache/ignite/IgniteException;

    invoke-direct {v1, v0}, Lorg/apache/ignite/IgniteException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
