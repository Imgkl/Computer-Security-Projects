.class public interface abstract Ljavax/cache/configuration/CompleteConfiguration;
.super Ljava/lang/Object;
.source "CompleteConfiguration.java"

# interfaces
.implements Ljavax/cache/configuration/Configuration;
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
        "Ljavax/cache/configuration/Configuration",
        "<TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# virtual methods
.method public abstract getCacheEntryListenerConfigurations()Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/configuration/CacheEntryListenerConfiguration",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getCacheLoaderFactory()Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheLoader",
            "<TK;TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getCacheWriterFactory()Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/integration/CacheWriter",
            "<-TK;-TV;>;>;"
        }
    .end annotation
.end method

.method public abstract getExpiryPolicyFactory()Ljavax/cache/configuration/Factory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavax/cache/configuration/Factory",
            "<",
            "Ljavax/cache/expiry/ExpiryPolicy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isManagementEnabled()Z
.end method

.method public abstract isReadThrough()Z
.end method

.method public abstract isStatisticsEnabled()Z
.end method

.method public abstract isWriteThrough()Z
.end method
