.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->waitForEvent(Lorg/apache/ignite/lang/IgnitePredicate;[I)Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

.field final synthetic val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

.field final synthetic val$p:Lorg/apache/ignite/lang/IgnitePredicate;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/util/future/GridFutureAdapter;)V
    .locals 0

    .prologue
    .line 669
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    iput-object p3, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 671
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->val$p:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    :cond_0
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->val$fut:Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;->onDone(Ljava/lang/Object;)Z

    .line 674
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 676
    :cond_1
    return-void
.end method
