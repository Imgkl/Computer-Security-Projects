.class final Lorg/apache/ignite/internal/util/lang/GridFunc$49;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->qavgReducer()Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/R1",
        "<TT;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private i:I

.field private final lock:Ljava/lang/Object;

.field private sum:D


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1000
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Number;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1003
    .local p1, "e":Ljava/lang/Number;, "TT;"
    if-eqz p1, :cond_0

    .line 1004
    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1006
    .local v0, "d":D
    iget-object v3, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 1007
    :try_start_0
    iget-wide v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->sum:D

    mul-double v6, v0, v0

    add-double/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->sum:D

    .line 1009
    iget v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->i:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->i:I

    .line 1010
    monitor-exit v3

    .line 1013
    .end local v0    # "d":D
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 1010
    .restart local v0    # "d":D
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 996
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->collect(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public reduce()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 1017
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1018
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->sum:D

    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->i:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1019
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 996
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$49;->reduce()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
