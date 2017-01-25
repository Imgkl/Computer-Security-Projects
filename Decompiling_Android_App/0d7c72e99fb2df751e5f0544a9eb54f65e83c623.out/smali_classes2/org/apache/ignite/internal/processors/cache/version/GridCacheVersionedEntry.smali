.class public interface abstract Lorg/apache/ignite/internal/processors/cache/version/GridCacheVersionedEntry;
.super Ljava/lang/Object;
.source "GridCacheVersionedEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract dataCenterId()B
.end method

.method public abstract expireTime()J
.end method

.method public abstract globalTime()J
.end method

.method public abstract key()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation
.end method

.method public abstract order()J
.end method

.method public abstract topologyVersion()I
.end method

.method public abstract ttl()J
.end method

.method public abstract value()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end method
