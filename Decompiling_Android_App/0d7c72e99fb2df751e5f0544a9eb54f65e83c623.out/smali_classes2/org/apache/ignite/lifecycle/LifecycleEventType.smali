.class public final enum Lorg/apache/ignite/lifecycle/LifecycleEventType;
.super Ljava/lang/Enum;
.source "LifecycleEventType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/lifecycle/LifecycleEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

.field public static final enum AFTER_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

.field public static final enum AFTER_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

.field public static final enum BEFORE_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

.field public static final enum BEFORE_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

.field private static final VALS:[Lorg/apache/ignite/lifecycle/LifecycleEventType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    const-string v1, "BEFORE_NODE_START"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/lifecycle/LifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .line 40
    new-instance v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    const-string v1, "AFTER_NODE_START"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/lifecycle/LifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .line 46
    new-instance v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    const-string v1, "BEFORE_NODE_STOP"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/lifecycle/LifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .line 52
    new-instance v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    const-string v1, "AFTER_NODE_STOP"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/lifecycle/LifecycleEventType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .line 29
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/lifecycle/LifecycleEventType;

    sget-object v1, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_START:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/lifecycle/LifecycleEventType;->BEFORE_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/lifecycle/LifecycleEventType;->AFTER_NODE_STOP:Lorg/apache/ignite/lifecycle/LifecycleEventType;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->$VALUES:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    .line 55
    invoke-static {}, Lorg/apache/ignite/lifecycle/LifecycleEventType;->values()[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    move-result-object v0

    sput-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->VALS:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromOrdinal(B)Lorg/apache/ignite/lifecycle/LifecycleEventType;
    .locals 1
    .param p0, "ord"    # B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .prologue
    .line 64
    if-ltz p0, :cond_0

    sget-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->VALS:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    array-length v0, v0

    if-ge p0, v0, :cond_0

    sget-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->VALS:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    aget-object v0, v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/lifecycle/LifecycleEventType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/lifecycle/LifecycleEventType;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/ignite/lifecycle/LifecycleEventType;->$VALUES:[Lorg/apache/ignite/lifecycle/LifecycleEventType;

    invoke-virtual {v0}, [Lorg/apache/ignite/lifecycle/LifecycleEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/lifecycle/LifecycleEventType;

    return-object v0
.end method
