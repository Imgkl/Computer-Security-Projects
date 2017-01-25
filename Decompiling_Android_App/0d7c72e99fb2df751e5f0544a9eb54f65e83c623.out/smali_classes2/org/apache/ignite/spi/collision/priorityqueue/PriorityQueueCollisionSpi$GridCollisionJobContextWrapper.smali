.class Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;
.super Ljava/lang/Object;
.source "PriorityQueueCollisionSpi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GridCollisionJobContextWrapper"
.end annotation


# instance fields
.field private final ctx:Lorg/apache/ignite/spi/collision/CollisionJobContext;

.field private final originalIdx:I


# direct methods
.method private constructor <init>(Lorg/apache/ignite/spi/collision/CollisionJobContext;I)V
    .locals 0
    .param p1, "ctx"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .param p2, "originalIdx"    # I

    .prologue
    .line 599
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 600
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->ctx:Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .line 601
    iput p2, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->originalIdx:I

    .line 602
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/spi/collision/CollisionJobContext;ILorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$1;

    .prologue
    .line 588
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;-><init>(Lorg/apache/ignite/spi/collision/CollisionJobContext;I)V

    return-void
.end method


# virtual methods
.method public getContext()Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->ctx:Lorg/apache/ignite/spi/collision/CollisionJobContext;

    return-object v0
.end method

.method public originalIndex()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lorg/apache/ignite/spi/collision/priorityqueue/PriorityQueueCollisionSpi$GridCollisionJobContextWrapper;->originalIdx:I

    return v0
.end method
