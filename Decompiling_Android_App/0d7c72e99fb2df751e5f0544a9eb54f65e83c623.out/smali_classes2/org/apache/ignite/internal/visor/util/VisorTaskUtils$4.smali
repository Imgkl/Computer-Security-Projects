.class final Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;
.super Ljava/lang/Object;
.source "VisorTaskUtils.java"

# interfaces
.implements Lorg/apache/ignite/lang/IgnitePredicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/visor/util/VisorTaskUtils;->collectEvents(Lorg/apache/ignite/Ignite;Ljava/lang/String;Ljava/lang/String;[ILorg/apache/ignite/lang/IgniteClosure;)Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
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
.field final synthetic val$evtTypes:[I

.field final synthetic val$lastFound:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$lastOrder:J

.field final synthetic val$notOlderThan:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;JJ[I)V
    .locals 0

    .prologue
    .line 379
    iput-object p1, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-wide p2, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastOrder:J

    iput-wide p4, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$notOlderThan:J

    iput-object p6, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$evtTypes:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 379
    check-cast p1, Lorg/apache/ignite/events/Event;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->apply(Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/events/Event;)Z
    .locals 6
    .param p1, "e"    # Lorg/apache/ignite/events/Event;

    .prologue
    const/4 v0, 0x1

    .line 382
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    iget-wide v2, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastOrder:J

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->localOrder()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 383
    iget-object v1, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastFound:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 386
    :cond_0
    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->localOrder()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$lastOrder:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->timestamp()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$notOlderThan:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    iget-object v1, p0, Lorg/apache/ignite/internal/visor/util/VisorTaskUtils$4;->val$evtTypes:[I

    invoke-interface {p1}, Lorg/apache/ignite/events/Event;->type()I

    move-result v2

    invoke-static {v1, v2}, Lorg/apache/ignite/internal/util/typedef/F;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
