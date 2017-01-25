.class Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$1;
.super Ljava/lang/Object;
.source "GridCollisionManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionExternalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$1;->this$0:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onExternalCollision()V
    .locals 2

    .prologue
    .line 53
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$1;->this$0:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    invoke-static {v1}, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->access$000(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/spi/collision/CollisionExternalListener;

    .line 55
    .local v0, "lsnr":Lorg/apache/ignite/spi/collision/CollisionExternalListener;
    if-eqz v0, :cond_0

    .line 56
    invoke-interface {v0}, Lorg/apache/ignite/spi/collision/CollisionExternalListener;->onExternalCollision()V

    .line 57
    :cond_0
    return-void
.end method
