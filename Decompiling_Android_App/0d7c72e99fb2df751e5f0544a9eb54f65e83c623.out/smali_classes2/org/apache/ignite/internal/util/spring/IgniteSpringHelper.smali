.class public interface abstract Lorg/apache/ignite/internal/util/spring/IgniteSpringHelper;
.super Ljava/lang/Object;
.source "IgniteSpringHelper.java"


# virtual methods
.method public abstract loadBean(Ljava/net/URL;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public varargs abstract loadBeans(Ljava/net/URL;[Ljava/lang/Class;)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public varargs abstract loadConfigurations(Ljava/net/URL;Ljava/lang/Class;[Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/net/URL;",
            "Ljava/lang/Class",
            "<TT;>;[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<TT;>;+",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public varargs abstract loadConfigurations(Ljava/net/URL;[Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteBiTuple;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/configuration/IgniteConfiguration;",
            ">;+",
            "Lorg/apache/ignite/internal/processors/resource/GridSpringResourceContext;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/ignite/IgniteCheckedException;
        }
    .end annotation
.end method

.method public abstract userVersion(Ljava/lang/ClassLoader;Lorg/apache/ignite/IgniteLogger;)Ljava/lang/String;
.end method
