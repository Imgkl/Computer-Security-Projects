.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PLC2"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;


# direct methods
.method protected constructor <init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V
    .locals 0

    .prologue
    .line 3384
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PLC2;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostLockClosure2;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    return-void
.end method
