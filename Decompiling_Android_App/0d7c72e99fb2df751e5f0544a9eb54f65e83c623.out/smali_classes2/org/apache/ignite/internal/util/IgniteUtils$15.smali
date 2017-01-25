.class final Lorg/apache/ignite/internal/util/IgniteUtils$15;
.super Ljava/lang/Object;
.source "IgniteUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/IgniteUtils;->filterReachable(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$addr:Ljava/net/InetAddress;

.field final synthetic val$res:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/net/InetAddress;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1508
    iput-object p1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$addr:Ljava/net/InetAddress;

    iput-object p2, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$res:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1511
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$addr:Ljava/net/InetAddress;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/IgniteUtils;->reachable(Ljava/net/InetAddress;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1512
    iget-object v1, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$res:Ljava/util/List;

    monitor-enter v1

    .line 1513
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$res:Ljava/util/List;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/IgniteUtils$15;->val$addr:Ljava/net/InetAddress;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1514
    monitor-exit v1

    .line 1516
    :cond_0
    return-void

    .line 1514
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
