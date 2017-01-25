.class public interface abstract Lorg/apache/ignite/spi/eventstorage/EventStorageSpi;
.super Ljava/lang/Object;
.source "EventStorageSpi.java"

# interfaces
.implements Lorg/apache/ignite/spi/IgniteSpi;


# virtual methods
.method public abstract localEvents(Lorg/apache/ignite/lang/IgnitePredicate;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/ignite/events/Event;",
            ">(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<TT;>;)",
            "Ljava/util/Collection",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract record(Lorg/apache/ignite/events/Event;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/spi/IgniteSpiException;
        }
    .end annotation
.end method
