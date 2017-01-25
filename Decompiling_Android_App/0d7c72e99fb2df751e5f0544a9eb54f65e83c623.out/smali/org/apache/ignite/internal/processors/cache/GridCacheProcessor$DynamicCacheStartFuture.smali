.class Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "GridCacheProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DynamicCacheStartFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private cacheName:Ljava/lang/String;

.field private deploymentId:Lorg/apache/ignite/lang/IgniteUuid;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field private req:Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .annotation runtime Lorg/apache/ignite/internal/util/tostring/GridToStringInclude;
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V
    .locals 0
    .param p2, "cacheName"    # Ljava/lang/String;
    .param p3, "deploymentId"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "req"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .prologue
    .line 2561
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    .line 2562
    iput-object p3, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    .line 2563
    iput-object p2, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->cacheName:Ljava/lang/String;

    .line 2564
    iput-object p4, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->req:Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    .line 2565
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lorg/apache/ignite/lang/IgniteUuid;
    .param p4, "x3"    # Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .param p5, "x4"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$1;

    .prologue
    .line 2547
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;-><init>(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;Ljava/lang/String;Lorg/apache/ignite/lang/IgniteUuid;Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;)V

    return-void
.end method

.method static synthetic access$500(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    .prologue
    .line 2547
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method static synthetic access$502(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;Lorg/apache/ignite/lang/IgniteUuid;)Lorg/apache/ignite/lang/IgniteUuid;
    .locals 0
    .param p0, "x0"    # Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;
    .param p1, "x1"    # Lorg/apache/ignite/lang/IgniteUuid;

    .prologue
    .line 2547
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object p1
.end method


# virtual methods
.method public deploymentId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 2571
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->deploymentId:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method

.method public onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z
    .locals 2
    .param p1, "res"    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2, "err"    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .prologue
    .line 2584
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->this$0:Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$800(Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->cacheName:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2586
    invoke-super {p0, p1, p2}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public request()Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;
    .locals 1

    .prologue
    .line 2578
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;->req:Lorg/apache/ignite/internal/processors/cache/DynamicCacheChangeRequest;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2591
    const-class v0, Lorg/apache/ignite/internal/processors/cache/GridCacheProcessor$DynamicCacheStartFuture;

    invoke-static {v0, p0}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
