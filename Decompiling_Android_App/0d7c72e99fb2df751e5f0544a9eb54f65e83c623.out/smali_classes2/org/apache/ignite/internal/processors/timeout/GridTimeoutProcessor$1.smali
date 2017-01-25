.class Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$1;
.super Ljava/lang/Object;
.source "GridTimeoutProcessor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;
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
        "Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$1;->this$0:Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 40
    check-cast p1, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutProcessor$1;->compare(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;)I
    .locals 6
    .param p1, "o1"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;
    .param p2, "o2"    # Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;

    .prologue
    .line 43
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v0

    .line 44
    .local v0, "time1":J
    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->endTime()J

    move-result-wide v2

    .line 46
    .local v2, "time2":J
    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    const/4 v4, -0x1

    :goto_0
    return v4

    :cond_0
    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->timeoutId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v4

    invoke-interface {p2}, Lorg/apache/ignite/internal/processors/timeout/GridTimeoutObject;->timeoutId()Lorg/apache/ignite/lang/IgniteUuid;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/apache/ignite/lang/IgniteUuid;->compareTo(Lorg/apache/ignite/lang/IgniteUuid;)I

    move-result v4

    goto :goto_0
.end method
