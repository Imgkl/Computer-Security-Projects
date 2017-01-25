.class public interface abstract Lorg/apache/ignite/configuration/AddressResolver;
.super Ljava/lang/Object;
.source "AddressResolver.java"


# virtual methods
.method public abstract getExternalAddresses(Ljava/net/InetSocketAddress;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/net/InetSocketAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method
