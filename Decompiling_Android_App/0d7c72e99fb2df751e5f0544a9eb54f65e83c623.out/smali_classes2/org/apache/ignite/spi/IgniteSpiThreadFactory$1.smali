.class Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;
.super Lorg/apache/ignite/spi/IgniteSpiThread;
.source "IgniteSpiThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/ignite/spi/IgniteSpiThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/spi/IgniteSpiThreadFactory;

.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lorg/apache/ignite/spi/IgniteSpiThreadFactory;Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;Ljava/lang/Runnable;)V
    .locals 0
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;
    .param p4, "x2"    # Lorg/apache/ignite/IgniteLogger;

    .prologue
    .line 54
    iput-object p1, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;->this$0:Lorg/apache/ignite/spi/IgniteSpiThreadFactory;

    iput-object p5, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/ignite/spi/IgniteSpiThread;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/ignite/IgniteLogger;)V

    return-void
.end method


# virtual methods
.method protected body()V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/apache/ignite/spi/IgniteSpiThreadFactory$1;->val$r:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 58
    return-void
.end method
