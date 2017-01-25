.class public abstract Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PMC;
.super Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostMissClosure;
.source "IgniteTxLocalAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "PMC"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostMissClosure",
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
    .line 3396
    .local p0, "this":Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PMC;, "Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PMC<TT;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PMC;->this$0:Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;

    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter$PostMissClosure;-><init>(Lorg/apache/ignite/internal/processors/cache/transactions/IgniteTxLocalAdapter;)V

    return-void
.end method
