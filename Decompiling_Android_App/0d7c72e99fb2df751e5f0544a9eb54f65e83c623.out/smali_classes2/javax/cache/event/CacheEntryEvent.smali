.class public abstract Ljavax/cache/event/CacheEntryEvent;
.super Ljava/util/EventObject;
.source "CacheEntryEvent.java"

# interfaces
.implements Ljavax/cache/Cache$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/EventObject;",
        "Ljavax/cache/Cache$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field private eventType:Ljavax/cache/event/EventType;


# direct methods
.method public constructor <init>(Ljavax/cache/Cache;Ljavax/cache/event/EventType;)V
    .locals 0
    .param p1, "source"    # Ljavax/cache/Cache;
    .param p2, "eventType"    # Ljavax/cache/event/EventType;

    .prologue
    .line 32
    .local p0, "this":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<TK;TV;>;"
    invoke-direct {p0, p1}, Ljava/util/EventObject;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object p2, p0, Ljavax/cache/event/CacheEntryEvent;->eventType:Ljavax/cache/event/EventType;

    .line 34
    return-void
.end method


# virtual methods
.method public final getEventType()Ljavax/cache/event/EventType;
    .locals 1

    .prologue
    .line 65
    .local p0, "this":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<TK;TV;>;"
    iget-object v0, p0, Ljavax/cache/event/CacheEntryEvent;->eventType:Ljavax/cache/event/EventType;

    return-object v0
.end method

.method public abstract getOldValue()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation
.end method

.method public bridge synthetic getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    .local p0, "this":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<TK;TV;>;"
    invoke-virtual {p0}, Ljavax/cache/event/CacheEntryEvent;->getSource()Ljavax/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method public final getSource()Ljavax/cache/Cache;
    .locals 1

    .prologue
    .line 41
    .local p0, "this":Ljavax/cache/event/CacheEntryEvent;, "Ljavax/cache/event/CacheEntryEvent<TK;TV;>;"
    invoke-super {p0}, Ljava/util/EventObject;->getSource()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/cache/Cache;

    return-object v0
.end method

.method public abstract isOldValueAvailable()Z
.end method
