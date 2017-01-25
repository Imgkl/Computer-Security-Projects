.class final Lorg/apache/ignite/internal/util/lang/GridFunc$56;
.super Ljava/lang/Object;
.source "GridFunc.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/R1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/util/lang/GridFunc;->sumLongReducer()Lorg/apache/ignite/lang/IgniteReducer;
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
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private sum:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    .line 1267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$56;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public collect(Ljava/lang/Long;)Z
    .locals 4
    .param p1, "e"    # Ljava/lang/Long;

    .prologue
    .line 1271
    if-eqz p1, :cond_0

    .line 1272
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$56;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 1274
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic collect(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 1267
    check-cast p1, Ljava/lang/Long;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lorg/apache/ignite/internal/util/lang/GridFunc$56;->collect(Ljava/lang/Long;)Z

    move-result v0

    return v0
.end method

.method public reduce()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 1278
    iget-object v0, p0, Lorg/apache/ignite/internal/util/lang/GridFunc$56;->sum:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic reduce()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1267
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/lang/GridFunc$56;->reduce()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
