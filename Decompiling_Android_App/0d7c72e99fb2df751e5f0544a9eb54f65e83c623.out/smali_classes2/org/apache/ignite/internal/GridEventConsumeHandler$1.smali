.class final Lorg/apache/ignite/internal/GridEventConsumeHandler$1;
.super Ljava/lang/Object;
.source "GridEventConsumeHandler.java"

# interfaces
.implements Lorg/apache/ignite/internal/util/typedef/P2;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/GridEventConsumeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/ignite/internal/util/typedef/P2",
        "<",
        "Ljava/util/UUID;",
        "Lorg/apache/ignite/events/Event;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 47
    check-cast p1, Ljava/util/UUID;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/apache/ignite/events/Event;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/ignite/internal/GridEventConsumeHandler$1;->apply(Ljava/util/UUID;Lorg/apache/ignite/events/Event;)Z

    move-result v0

    return v0
.end method

.method public apply(Ljava/util/UUID;Lorg/apache/ignite/events/Event;)Z
    .locals 1
    .param p1, "uuid"    # Ljava/util/UUID;
    .param p2, "e"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 49
    const/4 v0, 0x1

    return v0
.end method
