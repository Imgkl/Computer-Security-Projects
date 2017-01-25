.class Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$2;
.super Ljava/lang/Object;
.source "IgniteKillTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;->execute()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob$2;->this$1:Lorg/apache/ignite/internal/cluster/IgniteKillTask$IgniteKillJob;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/apache/ignite/internal/util/typedef/G;->kill(Z)V

    .line 96
    return-void
.end method
