.class Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;
.super Ljava/lang/Object;
.source "GridIoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/communication/GridIoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedMessage"
.end annotation


# instance fields
.field private final msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

.field private final msgC:Lorg/apache/ignite/lang/IgniteRunnable;

.field private final nodeId:Ljava/util/UUID;


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V
    .locals 0
    .param p1, "nodeId"    # Ljava/util/UUID;
    .param p2, "msg"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "msgC"    # Lorg/apache/ignite/lang/IgniteRunnable;

    .prologue
    .line 2044
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2045
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->nodeId:Ljava/util/UUID;

    .line 2046
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    .line 2047
    iput-object p3, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    .line 2048
    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/util/UUID;
    .param p2, "x1"    # Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .param p3, "x2"    # Lorg/apache/ignite/lang/IgniteRunnable;
    .param p4, "x3"    # Lorg/apache/ignite/internal/managers/communication/GridIoManager$1;

    .prologue
    .line 2029
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;-><init>(Ljava/util/UUID;Lorg/apache/ignite/internal/managers/communication/GridIoMessage;Lorg/apache/ignite/lang/IgniteRunnable;)V

    return-void
.end method


# virtual methods
.method public callback()Lorg/apache/ignite/lang/IgniteRunnable;
    .locals 1

    .prologue
    .line 2054
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->msgC:Lorg/apache/ignite/lang/IgniteRunnable;

    return-object v0
.end method

.method public message()Lorg/apache/ignite/internal/managers/communication/GridIoMessage;
    .locals 1

    .prologue
    .line 2061
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->msg:Lorg/apache/ignite/internal/managers/communication/GridIoMessage;

    return-object v0
.end method

.method public nodeId()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 2068
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;->nodeId:Ljava/util/UUID;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2073
    const-class v0, Lorg/apache/ignite/internal/managers/communication/GridIoManager$DelayedMessage;

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lorg/apache/ignite/internal/util/typedef/internal/S;->toString(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
