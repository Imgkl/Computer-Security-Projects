.class public Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;
.super Ljava/lang/Exception;
.source "GridCacheFilterFailedException.java"


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final val:Lorg/apache/ignite/internal/processors/cache/CacheObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 37
    return-void
.end method

.method public constructor <init>(Lorg/apache/ignite/internal/processors/cache/CacheObject;)V
    .locals 0
    .param p1, "val"    # Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    .line 44
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public value()Lorg/apache/ignite/internal/processors/cache/CacheObject;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheFilterFailedException;->val:Lorg/apache/ignite/internal/processors/cache/CacheObject;

    return-object v0
.end method
