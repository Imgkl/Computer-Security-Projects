.class public interface abstract Lorg/apache/ignite/cache/store/CacheStoreSession;
.super Ljava/lang/Object;
.source "CacheStoreSession.java"


# virtual methods
.method public abstract cacheName()Ljava/lang/String;
.end method

.method public abstract isWithinTransaction()Z
.end method

.method public abstract properties()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Map",
            "<TK;TV;>;"
        }
    .end annotation
.end method

.method public abstract transaction()Lorg/apache/ignite/transactions/Transaction;
.end method
