.class public Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;
.super Lorg/apache/ignite/IgniteCheckedException;
.source "CacheStorePartialUpdateException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private failedKeys:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "failedKeys"    # Ljava/util/Collection;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 40
    invoke-direct {p0, p2}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/Throwable;)V

    .line 42
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->failedKeys:Ljava/util/Collection;

    .line 43
    return-void
.end method


# virtual methods
.method public failedKeys()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CacheStorePartialUpdateException;->failedKeys:Ljava/util/Collection;

    return-object v0
.end method
