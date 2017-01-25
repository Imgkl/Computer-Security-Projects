.class final Lorg/apache/ignite/internal/util/lang/GridFunc$60;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->concatReducer(Ljava/lang/String;)Lorg/apache/ignite/lang/IgniteReducer;
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
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private first:Z

.field private final lock:Ljava/lang/Object;

.field private sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

.field final synthetic val$delim:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1406
    iput-object p1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->val$delim:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1407
    new-instance v0, Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-direct {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    .line 1409
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->first:Z

    .line 1411
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->lock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1406
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->collect(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public collect(Ljava/lang/String;)Z
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1414
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1415
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->first:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->val$delim:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/ignite/internal/util/lang/GridFunc;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1416
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    iget-object v2, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->val$delim:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1418
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->a(Ljava/lang/String;)Lorg/apache/ignite/internal/util/GridStringBuilder;

    .line 1420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->first:Z

    .line 1421
    monitor-exit v1

    .line 1423
    const/4 v0, 0x1

    return v0

    .line 1421
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
    .line 1406
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->reduce()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reduce()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1427
    iget-object v1, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1428
    :try_start_0
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$60;->sb:Lorg/apache/ignite/internal/util/typedef/internal/SB;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/typedef/internal/SB;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    return-object v0

    .line 1429
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
