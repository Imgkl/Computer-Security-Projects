.class Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;
.super Ljava/lang/Object;
.source "GridServiceProcessor.java"

# interfaces
.implements Ljavax/cache/event/CacheEntryUpdatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AssignmentListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/cache/event/CacheEntryUpdatedListener",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V
    .locals 0

    .prologue
    .line 1173
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;
    .param p2, "x1"    # Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$1;

    .prologue
    .line 1173
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)V

    return-void
.end method


# virtual methods
.method public onUpdated(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<",
            "Ljavax/cache/event/CacheEntryEvent",
            "<**>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/cache/event/CacheEntryListenerException;
        }
    .end annotation

    .prologue
    .line 1176
    .local p1, "assignCol":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljavax/cache/event/CacheEntryEvent<**>;>;"
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;->this$0:Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;

    # getter for: Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->depExe:Ljava/util/concurrent/ExecutorService;
    invoke-static {v0}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;->access$2100(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;

    invoke-direct {v1, p0, p1}, Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener$1;-><init>(Lorg/apache/ignite/internal/processors/service/GridServiceProcessor$AssignmentListener;Ljava/lang/Iterable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 1226
    return-void
.end method
