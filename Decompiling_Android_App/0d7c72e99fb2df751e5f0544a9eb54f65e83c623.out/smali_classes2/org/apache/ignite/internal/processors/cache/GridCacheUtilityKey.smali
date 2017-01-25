.class public abstract Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;
.super Ljava/lang/Object;
.source "GridCacheUtilityKey.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/processors/cache/GridCacheInternal;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;, "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 32
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;, "Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey<TK;>;"
    if-eq p1, p0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_1

    check-cast p1, Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;->equalsx(Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected abstract equalsx(Lorg/apache/ignite/internal/processors/cache/GridCacheUtilityKey;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)Z"
        }
    .end annotation
.end method

.method public abstract hashCode()I
.end method
