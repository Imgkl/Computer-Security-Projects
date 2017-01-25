.class Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;
.super Ljava/lang/Object;
.source "DataStructuresProcessor.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;->getAtomic(Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$DataStructureInfo;ZLjava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

.field final synthetic val$c:Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;)V
    .locals 0

    .prologue
    .line 370
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;->this$0:Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor;

    iput-object p2, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;->val$c:Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v0, p0, Lorg/apache/ignite/internal/processors/datastructures/DataStructuresProcessor$4;->val$c:Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/util/lang/IgniteOutClosureX;->applyx()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
