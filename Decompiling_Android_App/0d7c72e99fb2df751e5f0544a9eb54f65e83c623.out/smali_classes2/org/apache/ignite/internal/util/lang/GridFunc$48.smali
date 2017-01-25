.class final Lorg/apache/ignite/internal/util/lang/GridFunc$48;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->avgReducer()Lorg/apache/ignite/lang/IgniteReducer;
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
    .line 938
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 942
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Number;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 945
    .local p1, "e":Ljava/lang/Number;, "TT;"
    if-eqz p1, :cond_0

    .line 946
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 947
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->sum:D

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->sum:D

    .line 948
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->i:I

    .line 949
    monitor-exit v1

    .line 951
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 949
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 938
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->collect(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public reduce()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 955
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 956
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->sum:D

    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->i:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 957
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
    .line 938
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$48;->reduce()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
