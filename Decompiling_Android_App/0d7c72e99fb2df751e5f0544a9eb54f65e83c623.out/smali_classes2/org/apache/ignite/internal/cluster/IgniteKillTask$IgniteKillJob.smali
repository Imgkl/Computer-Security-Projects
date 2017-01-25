.class Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;
.super Lorg/apache/ignite/compute/ComputeJobAdapter;
.source "IgniteKillTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/cluster/IgniteKillTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IgniteKillJob"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/cluster/IgniteKillTask;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;->this$0:Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    invoke-direct {p0}, Lorg/apache/ignite/compute/ComputeJobAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask;Lorg/apache/ignite/internal/cluster/IgniteKillTask$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/cluster/IgniteKillTask;
    .param p2, "x1"    # Lorg/apache/ignite/internal/cluster/IgniteKillTask$1;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;-><init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask;)V

    return-void
.end method


# virtual methods
.method public execute()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;->this$0:Lorg/apache/ignite/internal/cluster/IgniteKillTask;

    invoke-static {v0}, Lorg/apache/ignite/internal/cluster/IgniteKillTask;->access$100(Lorg/apache/ignite/internal/cluster/IgniteKillTask;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$1;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$1;-><init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;)V

    const-string v2, "ignite-restarter"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 100
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$2;

    invoke-direct {v1, p0}, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$2;-><init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;)V

    const-string v2, "ignite-stopper"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
