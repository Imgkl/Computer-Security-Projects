.class public interface abstract Lorg/apache/ignite/spi/discovery/DiscoverySpiDataExchange;
.super Ljava/lang/Object;
.source "DiscoverySpiDataExchange.java"


# virtual methods
.method public abstract collect(Ljava/util/UUID;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract onExchange(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Ljava/util/UUID;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method
