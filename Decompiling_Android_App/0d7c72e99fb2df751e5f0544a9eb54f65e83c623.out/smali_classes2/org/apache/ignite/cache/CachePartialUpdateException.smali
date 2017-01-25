.class public Lorg/apache/ignite/cache/CachePartialUpdateException;
.super Ljavax/cache/CacheException;
.source "CachePartialUpdateException.java"


# static fields
.field private static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;)V
    .locals 1
    .param p1, "e"    # Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    .prologue
    .line 37
    invoke-virtual {p1}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Ljavax/cache/CacheException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    return-void
.end method


# virtual methods
.method public failedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p0}, Lorg/apache/ignite/cache/CachePartialUpdateException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->failedKeys()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
