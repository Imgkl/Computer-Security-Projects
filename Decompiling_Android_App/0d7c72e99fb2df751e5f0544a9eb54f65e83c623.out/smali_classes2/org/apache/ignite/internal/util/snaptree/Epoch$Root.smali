.class Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;
.super Lorg/apache/ignite/internal/util/snaptree/EpochNode;
.source "Epoch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/Epoch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Root"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final synthetic this$0:Lorg/apache/ignite/internal/util/snaptree/Epoch;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/Epoch;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;->this$0:Lorg/apache/ignite/internal/util/snaptree/Epoch;

    invoke-direct {p0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/Epoch;Lorg/apache/ignite/internal/util/snaptree/Epoch$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/Epoch;
    .param p2, "x1"    # Lorg/apache/ignite/internal/util/snaptree/Epoch$1;

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;-><init>(Lorg/apache/ignite/internal/util/snaptree/Epoch;)V

    return-void
.end method


# virtual methods
.method protected onClosed(I)V
    .locals 1
    .param p1, "dataSum"    # I

    .prologue
    .line 128
    iget-object v0, p0, Lorg/apache/ignite/internal/util/snaptree/Epoch$Root;->this$0:Lorg/apache/ignite/internal/util/snaptree/Epoch;

    invoke-virtual {v0, p1}, Lorg/apache/ignite/internal/util/snaptree/Epoch;->onClosed(I)V

    .line 129
    return-void
.end method
