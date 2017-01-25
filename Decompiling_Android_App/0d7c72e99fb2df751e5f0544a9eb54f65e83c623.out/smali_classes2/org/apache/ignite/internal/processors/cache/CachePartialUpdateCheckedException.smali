.class public Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;
.super Lorg/apache/ignite/IgniteCheckedException;
.source "CachePartialUpdateCheckedException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final failedKeys:Ljava/util/Collection;
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
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lorg/apache/ignite/IgniteCheckedException;-><init>(Ljava/lang/String;)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->failedKeys:Ljava/util/Collection;

    .line 40
    return-void
.end method


# virtual methods
.method public add(Ljava/util/Collection;Ljava/lang/Throwable;)V
    .locals 1
    .param p2, "err"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "failedKeys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->failedKeys:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 57
    invoke-virtual {p0, p2}, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->addSuppressed(Ljava/lang/Throwable;)V

    .line 58
    return-void
.end method

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
    .line 47
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->failedKeys:Ljava/util/Collection;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/ignite/IgniteCheckedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/CachePartialUpdateCheckedException;->failedKeys:Ljava/util/Collection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
