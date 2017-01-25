.class Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;
.super Ljava/lang/Object;
.source "VisorNodeEventsCollectorTask.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->run(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/lang/IgnitePredicate",
        "<",
        "Lorg/apache/ignite/events/Event;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

.field final synthetic val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

.field final synthetic val$startEvtOrder:Ljava/lang/Long;

.field final synthetic val$startEvtTime:J


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Ljava/lang/Long;Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;J)V
    .locals 0

    .prologue
    .line 272
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    iput-object p2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$startEvtOrder:Ljava/lang/Long;

    iput-object p3, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    iput-wide p4, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$startEvtTime:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 272
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->apply(Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Z
    .locals 4
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 274
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->localOrder()J

    move-result-wide v0

    iget-object v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$startEvtOrder:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->typeArgument()[I

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->typeArgument()[I

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->timestamp()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$startEvtTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskName()Ljava/lang/String;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->filterByTaskName(Lorg/apache/ignite/events/Event;Ljava/lang/String;)Z
    invoke-static {v0, p1, v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->access$100(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Lorg/apache/ignite/events/Event;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->this$0:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob$1;->val$arg:Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;

    invoke-virtual {v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorTaskArg;->taskSessionId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v1

    # invokes: Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->filterByTaskSessionId(Lorg/apache/ignite/events/Event;Lorg/apache/ignite/lang/IgniteUuid;)Z
    invoke-static {v0, p1, v1}, Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;->access$200(Lorg/apache/ignite/internal/visor/node/VisorNodeEventsCollectorTask$VisorNodeEventsCollectorJob;Lorg/apache/ignite/events/Event;Lorg/apache/ignite/lang/IgniteUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
