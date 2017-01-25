.class Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$1;
.super Lorg/apache/ignite/internal/util/future/GridFutureAdapter;
.source "IgniteTxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;->finishFuture()Lorg/apache/ignite/internal/IgniteInternalFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/ignite/internal/util/future/GridFutureAdapter",
        "<",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteInternalTx;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;)V
    .locals 0

    .prologue
    .line 988
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 990
    const-class v0, Lorg/apache/ignite/internal/util/future/GridFutureAdapter;

    const-string v1, "tx"

    iget-object v2, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter$1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxAdapter;

    invoke-static {v0, p0, v1, v2}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
