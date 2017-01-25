.class final Lorg/apache/ignite/internal/util/lang/GridFunc$58;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->sumBigDecimalReducer()Lorg/apache/ignite/lang/IgniteReducer;
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
        "Ljava/math/BigDecimal;",
        "Ljava/math/BigDecimal;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private sum:Ljava/math/BigDecimal;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 1346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1347
    sget-object v0, Ljava/math/BigDecimal;->ZERO:Ljava/math/BigDecimal;

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->sum:Ljava/math/BigDecimal;

    .line 1349
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1346
    check-cast p1, Ljava/math/BigDecimal;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->collect(Ljava/math/BigDecimal;)Z

    move-result v0

    return v0
.end method

.method public collect(Ljava/math/BigDecimal;)Z
    .locals 2
    .param p1, "e"    # Ljava/math/BigDecimal;

    .prologue
    .line 1352
    if-eqz p1, :cond_0

    .line 1353
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1354
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->sum:Ljava/math/BigDecimal;

    invoke-virtual {v0, p1}, Ljava/math/BigDecimal;->add(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->sum:Ljava/math/BigDecimal;

    .line 1355
    monitor-exit v1

    .line 1357
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1355
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
    .line 1346
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->reduce()Ljava/math/BigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Ljava/math/BigDecimal;
    .locals 2

    .prologue
    .line 1361
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1362
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$58;->sum:Ljava/math/BigDecimal;

    monitor-exit v1

    return-object v0

    .line 1363
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
