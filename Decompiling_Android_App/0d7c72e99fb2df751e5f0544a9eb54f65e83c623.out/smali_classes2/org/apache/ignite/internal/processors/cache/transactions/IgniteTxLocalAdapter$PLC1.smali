.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PLC1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 3366
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 3367
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;)V

    .line 3368
    return-void
.end method

.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;Z)V
    .locals 0
    .param p3, "commit"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;Z)V"
        }
    .end annotation

    .prologue
    .line 3374
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1<TT;>;"
    .local p2, "arg":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC1;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    .line 3375
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure1;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;Ljava/lang/Object;Z)V

    .line 3376
    return-void
.end method
