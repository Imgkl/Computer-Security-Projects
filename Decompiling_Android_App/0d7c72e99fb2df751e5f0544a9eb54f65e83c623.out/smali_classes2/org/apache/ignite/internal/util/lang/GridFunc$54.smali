.class final Lorg/apache/ignite/internal/util/lang/GridFunc$54;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->havgReducer()Lorg/apache/ignite/lang/IgniteReducer;
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
    .line 1210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1214
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->lock:Ljava/lang/Object;

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
    .line 1217
    .local p1, "e":Ljava/lang/Number;, "TT;"
    if-eqz p1, :cond_0

    .line 1218
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1219
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->sum:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v6

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->sum:D

    .line 1221
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->i:I

    .line 1222
    monitor-exit v1

    .line 1224
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1222
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
    .line 1210
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->collect(Ljava/lang/Number;)Z

    move-result v0

    return v0
.end method

.method public reduce()Ljava/lang/Double;
    .locals 6

    .prologue
    .line 1228
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1229
    :try_start_0
    iget v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->i:I

    int-to-double v2, v0

    iget-wide v4, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->sum:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1230
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
    .line 1210
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$54;->reduce()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
