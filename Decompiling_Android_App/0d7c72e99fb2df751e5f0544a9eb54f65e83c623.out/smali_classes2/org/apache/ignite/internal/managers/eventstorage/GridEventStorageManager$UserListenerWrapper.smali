.class Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;
.super Ljava/lang/Object;
.source "GridEventStorageManager.java"

# interfaces
.implements Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserListenerWrapper"
.end annotation


# instance fields
.field private final lsnr:Lorg/apache/ignite/lang/IgnitePredicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;


# direct methods
.method private constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1117
    .local p2, "lsnr":Lorg/apache/ignite/lang/IgnitePredicate;, "Lorg/apache/ignite/lang/IgnitePredicate<+Lorg/apache/ignite/events/Event;>;"
    iput-object p1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    iput-object p2, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    .line 1119
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;
    .param p2, "x1"    # Lorg/apache/ignite/lang/IgnitePredicate;
    .param p3, "x2"    # Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$1;

    .prologue
    .line 1110
    invoke-direct {p0, p1, p2}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;-><init>(Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;Lorg/apache/ignite/lang/IgnitePredicate;)V

    return-void
.end method

.method private listener()Lorg/apache/ignite/lang/IgnitePredicate;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/ignite/lang/IgnitePredicate",
            "<+",
            "Lorg/apache/ignite/events/Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1125
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 1136
    if-ne p0, p1, :cond_0

    .line 1137
    const/4 v1, 0x1

    .line 1144
    :goto_0
    return v1

    .line 1139
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 1140
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 1142
    check-cast v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;

    .line 1144
    .local v0, "that":Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;
    iget-object v1, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    iget-object v2, v0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1150
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public onEvent(Lorg/apache/ignite/events/Event;)V
    .locals 2
    .param p1, "evt"    # Lorg/apache/ignite/events/Event;

    .prologue
    .line 1130
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->lsnr:Lorg/apache/ignite/lang/IgnitePredicate;

    invoke-interface {v0, p1}, Lorg/apache/ignite/lang/IgnitePredicate;->apply(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1131
    iget-object v0, p0, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager$UserListenerWrapper;->this$0:Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;

    const/4 v1, 0x0

    new-array v1, v1, [I

    invoke-virtual {v0, p0, v1}, Lorg/apache/ignite/internal/managers/eventstorage/GridEventStorageManager;->removeLocalEventListener(Lorg/apache/ignite/internal/managers/eventstorage/GridLocalEventListener;[I)Z

    .line 1132
    :cond_0
    return-void
.end method
