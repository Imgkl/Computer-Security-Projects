.class Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;
.super Ljava/lang/Object;
.source "GridCollisionManager.java"

# interfaces
.implements Lorg/apache/ignite/spi/collision/CollisionContext;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;->onCollision(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

.field final synthetic val$activeJobs:Ljava/util/Collection;

.field final synthetic val$heldJobs:Ljava/util/Collection;

.field final synthetic val$waitJobs:Ljava/util/Collection;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->this$0:Lorg/apache/ignite/internal/managers/collision/GridCollisionManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$activeJobs:Ljava/util/Collection;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$waitJobs:Ljava/util/Collection;

    iput-object p4, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$heldJobs:Ljava/util/Collection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeJobs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$activeJobs:Ljava/util/Collection;

    return-object v0
.end method

.method public heldJobs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$heldJobs:Ljava/util/Collection;

    return-object v0
.end method

.method public waitingJobs()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
            ">;"
        }
    .end annotation

    .prologue
    .line 122
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/collision/GridCollisionManager$2;->val$waitJobs:Ljava/util/Collection;

    return-object v0
.end method
