.class public interface abstract Ljavax/cache/event/CacheEntryEventFilter;
.super Ljava/lang/Object;
.source "CacheEntryEventFilter.java"


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
.method public abstract evaluate(Ljavax/cache/event/CacheEntryEvent;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/cache/event/CacheEntryEvent",
            "<+TK;+TV;>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/event/CacheEntryListenerException;
        }
    .end annotation
.end method
