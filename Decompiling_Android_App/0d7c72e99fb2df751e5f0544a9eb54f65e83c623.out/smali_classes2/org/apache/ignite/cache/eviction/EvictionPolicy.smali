.class public interface abstract Lorg/apache/ignite/cache/eviction/EvictionPolicy;
.super Ljava/lang/Object;
.source "EvictionPolicy.java"


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
.method public abstract onEntryAccessed(ZLorg/apache/ignite/cache/eviction/EvictableEntry;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lorg/apache/ignite/cache/eviction/EvictableEntry",
            "<TK;TV;>;)V"
        }
    .end annotation
.end method
