.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->onReassignmentFailed(JLjava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private id:Lorg/apache/ignite/lang/IgniteUuid;

.field private start:J

.field final synthetic this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

.field final synthetic val$retries:Ljava/util/Collection;

.field final synthetic val$topVer:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;JLjava/util/Collection;)V
    .locals 2

    .prologue
    .line 1145
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iput-wide p2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->val$topVer:J

    iput-object p4, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->val$retries:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1146
    invoke-static {}, Lorg/apache/ignite/lang/IgniteUuid;->randomUuid()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->id:Lorg/apache/ignite/lang/IgniteUuid;

    .line 1148
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->start:J

    return-void
.end method


# virtual methods
.method public endTime()J
    .locals 4

    .prologue
    .line 1155
    iget-wide v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->start:J

    const-wide/16 v2, 0x3e8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public onTimeout()V
    .locals 4

    .prologue
    .line 1159
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->this$1:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;

    iget-wide v2, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->val$topVer:J

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->val$retries:Ljava/util/Collection;

    # invokes: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->onReassignmentFailed(JLjava/util/Collection;)V
    invoke-static {v0, v2, v3, v1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;->access$3500(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener;JLjava/util/Collection;)V

    .line 1160
    return-void
.end method

.method public timeoutId()Lorg/apache/ignite/lang/IgniteUuid;
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$TopologyListener$2;->id:Lorg/apache/ignite/lang/IgniteUuid;

    return-object v0
.end method
