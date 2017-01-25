.class final Lorg/apache/ignite/internal/util/lang/GridFunc$73;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->nodeForNodeIds([Ljava/util/UUID;)Lorg/apache/ignite/lang/IgnitePredicate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P1",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final ids:[Ljava/util/UUID;

.field final synthetic val$nodeIds:[Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 2407
    const-class v0, Lorg/apache/ignite/internal/util/lang/GridFunc;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>([Ljava/util/UUID;)V
    .locals 2

    .prologue
    .line 2407
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->val$nodeIds:[Ljava/util/UUID;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2411
    sget-boolean v0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->val$nodeIds:[Ljava/util/UUID;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 2413
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->val$nodeIds:[Ljava/util/UUID;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 2415
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->val$nodeIds:[Ljava/util/UUID;

    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->val$nodeIds:[Ljava/util/UUID;

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/UUID;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->ids:[Ljava/util/UUID;

    .line 2416
    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 2407
    check-cast p1, Lorg/apache/ignite/cluster/ClusterNode;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->apply(Lorg/apache/ignite/cluster/ClusterNode;)Z

    move-result v0

    return v0
.end method

.method public apply(Lorg/apache/ignite/cluster/ClusterNode;)Z
    .locals 2
    .param p1, "e"    # Lorg/apache/ignite/cluster/ClusterNode;

    .prologue
    .line 2419
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$73;->ids:[Ljava/util/UUID;

    invoke-interface {p1}, Lorg/apache/ignite/cluster/ClusterNode;->id()Ljava/util/UUID;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
