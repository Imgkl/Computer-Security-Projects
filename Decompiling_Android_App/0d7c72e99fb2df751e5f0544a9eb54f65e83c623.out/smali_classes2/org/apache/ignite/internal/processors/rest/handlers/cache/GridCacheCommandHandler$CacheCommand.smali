.class abstract Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;
.super Lorg/apache/ignite/internal/util/lang/IgniteClosure2X;
.source "GridCacheCommandHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "CacheCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/lang/IgniteClosure2X",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/CacheProjection",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;",
        "Lorg/apache/ignite/internal/GridKernalContext;",
        "Lorg/apache/ignite/internal/IgniteInternalFuture",
        "<*>;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 593
    invoke-direct {p0}, Lorg/apache/ignite/internal/util/lang/IgniteClosure2X;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$1;

    .prologue
    .line 593
    invoke-direct {p0}, Lorg/apache/ignite/internal/processors/rest/handlers/cache/GridCacheCommandHandler$CacheCommand;-><init>()V

    return-void
.end method
