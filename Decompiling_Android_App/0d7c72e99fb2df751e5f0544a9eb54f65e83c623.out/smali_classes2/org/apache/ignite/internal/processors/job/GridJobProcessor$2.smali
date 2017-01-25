.class Lorg/apache/ignite/internal/processors/job/GridJobProcessor$2;
.super Ljava/lang/ThreadLocal;
.source "GridJobProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/job/GridJobProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/processors/job/GridJobProcessor;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$2;->this$0:Lorg/apache/ignite/internal/processors/job/GridJobProcessor;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected initialValue()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lorg/apache/ignite/internal/processors/job/GridJobProcessor$2;->initialValue()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
