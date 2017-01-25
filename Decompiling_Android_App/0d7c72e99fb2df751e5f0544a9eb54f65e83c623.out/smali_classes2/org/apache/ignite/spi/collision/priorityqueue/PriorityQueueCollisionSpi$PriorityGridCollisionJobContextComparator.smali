.class Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;
.super Ljava/lang/Object;
.source "PriorityQueueCollisionSpi.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PriorityGridCollisionJobContextComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;)V
    .locals 0

    .prologue
    .line 572
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;->this$0:Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;
    .param p2, "x1"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;-><init>(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 572
    check-cast p1, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;->compare(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;)I
    .locals 4
    .param p1, "o1"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
    .param p2, "o2"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;

    .prologue
    .line 578
    iget-object v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;->this$0:Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;

    invoke-virtual {p1}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->access$200(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;Lorg/apache/ignite/spi/collision/CollisionJobContext;)I

    move-result v0

    .line 579
    .local v0, "p1":I
    iget-object v2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$PriorityGridCollisionJobContextComparator;->this$0:Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;

    invoke-virtual {p2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;->access$200(Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;Lorg/apache/ignite/spi/collision/CollisionJobContext;)I

    move-result v1

    .line 581
    .local v1, "p2":I
    if-ge v0, v1, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method
