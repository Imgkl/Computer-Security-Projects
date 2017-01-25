.class Lorg/apache/ignite/internal/GridJobContextImpl$1$1;
.super Ljava/lang/Object;
.source "GridJobContextImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/internal/GridJobContextImpl$1;->onTimeout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/ignite/internal/GridJobContextImpl$1;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/GridJobContextImpl$1;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1$1;->this$1:Lorg/apache/ignite/internal/GridJobContextImpl$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lorg/apache/ignite/internal/GridJobContextImpl$1$1;->this$1:Lorg/apache/ignite/internal/GridJobContextImpl$1;

    iget-object v0, v0, Lorg/apache/ignite/internal/GridJobContextImpl$1;->this$0:Lorg/apache/ignite/internal/GridJobContextImpl;

    invoke-virtual {v0}, Lorg/apache/ignite/internal/GridJobContextImpl;->callcc()V

    .line 199
    return-void
.end method
