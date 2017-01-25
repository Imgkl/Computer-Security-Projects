.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;
.super Ljava/lang/Object;
.source "GridJobProcessor.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionExternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CollisionExternalListener"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1504
    const-class v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 1504
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/job/GridJobProcessor$1;

    .prologue
    .line 1504
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;-><init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V

    return-void
.end method


# virtual methods
.method public onExternalCollision()V
    .locals 2

    .prologue
    .line 1507
    sget-boolean v0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$1400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1509
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2400(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1510
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2500(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Received external collision event."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V

    .line 1512
    :cond_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readLock()V

    .line 1515
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2700(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1516
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2800(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/ignite/IgniteLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1517
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2900(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/IgniteLogger;

    move-result-object v0

    const-string v1, "Received external collision notification while stopping grid (will ignore)."

    invoke-interface {v0, v1}, Lorg/apache/ignite/IgniteLogger;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1525
    :cond_2
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    .line 1527
    :goto_0
    return-void

    .line 1522
    :cond_3
    :try_start_1
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$3000(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1525
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$CollisionExternalListener;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-static {v1}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor;->access$2600(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/ignite/internal/util/GridSpinReadWriteLock;->readUnlock()V

    throw v0
.end method
