.class Lorg/apache/ignite/internal/util/GridExecutionStatistics$1;
.super Ljava/lang/ThreadLocal;
.source "GridExecutionStatistics.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/GridExecutionStatistics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Lorg/apache/ignite/lang/IgniteBiTuple",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/GridExecutionStatistics;


# direct methods
.method constructor <init>(Lorg/apache/ignite/internal/util/GridExecutionStatistics;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lorg/apache/ignite/internal/util/GridExecutionStatistics$1;->this$0:Lorg/apache/ignite/internal/util/GridExecutionStatistics;

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Lorg/apache/ignite/internal/util/GridExecutionStatistics$1;->initialValue()Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method

.method protected initialValue()Lorg/apache/ignite/lang/IgniteBiTuple;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgniteBiTuple",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/ignite/internal/util/typedef/F;->t(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/ignite/lang/IgniteBiTuple;

    move-result-object v0

    return-object v0
.end method
