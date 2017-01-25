.class final Lorg/apache/ignite/internal/util/lang/GridFunc$57;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->sumDoubleReducer()Lorg/apache/ignite/lang/IgniteReducer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/R1",
        "<",
        "Ljava/lang/Double;",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sum:D


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1295
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Double;)Z
    .locals 6
    .param p1, "e"    # Ljava/lang/Double;

    .prologue
    .line 1298
    if-eqz p1, :cond_0

    .line 1299
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1300
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->sum:D

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    add-double/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->sum:D

    .line 1301
    monitor-exit v1

    .line 1303
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1301
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
    .line 1292
    check-cast p1, Ljava/lang/Double;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->collect(Ljava/lang/Double;)Z

    move-result v0

    return v0
.end method

.method public reduce()Ljava/lang/Double;
    .locals 4

    .prologue
    .line 1307
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1308
    :try_start_0
    iget-wide v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->sum:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1309
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
    .line 1292
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$57;->reduce()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
