.class Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;
.super Ljava/lang/Object;
.source "JobStealingCollisionSpi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->comparator()Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/apache/ignite/spi/collision/CollisionJobContext;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;)V
    .locals 0

    .prologue
    .line 813
    iput-object p1, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 813
    check-cast p1, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;->compare(Lorg/apache/ignite/spi/collision/CollisionJobContext;Lorg/apache/ignite/spi/collision/CollisionJobContext;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/spi/collision/CollisionJobContext;Lorg/apache/ignite/spi/collision/CollisionJobContext;)I
    .locals 4
    .param p1, "o1"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;
    .param p2, "o2"    # Lorg/apache/ignite/spi/collision/CollisionJobContext;

    .prologue
    .line 815
    iget-object v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-interface {p1}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$700(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/compute/ComputeJobContext;)I

    move-result v0

    .line 816
    .local v0, "p1":I
    iget-object v2, p0, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi$3;->this$0:Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;

    invoke-interface {p2}, Lorg/apache/ignite/spi/collision/CollisionJobContext;->getJobContext()Lorg/apache/ignite/compute/ComputeJobContext;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;->access$700(Lorg/apache/ignite/spi/collision/jobstealing/JobStealingCollisionSpi;Lorg/apache/ignite/compute/ComputeJobContext;)I

    move-result v1

    .line 818
    .local v1, "p2":I
    invoke-static {v1, v0}, Ljava/lang/Integer;->compare(II)I

    move-result v2

    return v2
.end method
