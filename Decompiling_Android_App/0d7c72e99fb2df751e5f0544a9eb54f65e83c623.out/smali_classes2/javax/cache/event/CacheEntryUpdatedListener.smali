.class public interface abstract Ljavax/cache/event/CacheEntryUpdatedListener;
.super Ljava/lang/Object;
.source "CacheEntryUpdatedListener.java"

# interfaces
.implements Ljavax/cache/event/CacheEntryListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljavax/cache/event/CacheEntryListener",
        "<TK;TV;>;"
    }
.end annotation


# virtual methods
.method public abstract onUpdated(Ljava/lang/Iterable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/event/CacheEntryListenerException;
        }
    .end annotation
.end method
