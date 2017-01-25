.class public interface abstract Ljavax/cache/configuration/CacheEntryListenerConfiguration;
.super Ljava/lang/Object;
.source "CacheEntryListenerConfiguration.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getCacheEntryEventFilterFactory()Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryEventFilter",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getCacheEntryListenerFactory()Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/event/CacheEntryListener",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end method

.method public abstract isOldValueRequired()Z
.end method

.method public abstract isSynchronous()Z
.end method
