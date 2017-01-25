.class Lorg/apache/ignite/internal/util/snaptree/EpochNode$Child;
.super Lorg/apache/ignite/internal/util/snaptree/EpochNode;
.source "EpochNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/util/snaptree/EpochNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Child"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;I)V
    .locals 1
    .param p1, "parent"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .param p2, "whichInParent"    # I

    .prologue
    .line 118
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/ignite/internal/util/snaptree/EpochNode;-><init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;ILorg/apache/ignite/internal/util/snaptree/EpochNode$1;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;ILorg/apache/ignite/internal/util/snaptree/EpochNode$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/ignite/internal/util/snaptree/EpochNode$1;

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/util/snaptree/EpochNode$Child;-><init>(Lorg/apache/ignite/internal/util/snaptree/EpochNode;I)V

    return-void
.end method


# virtual methods
.method protected onClosed(I)V
    .locals 1
    .param p1, "dataSum"    # I

    .prologue
    .line 122
    new-instance v0, Ljava/lang/Error;

    invoke-direct {v0}, Ljava/lang/Error;-><init>()V

    throw v0
.end method
