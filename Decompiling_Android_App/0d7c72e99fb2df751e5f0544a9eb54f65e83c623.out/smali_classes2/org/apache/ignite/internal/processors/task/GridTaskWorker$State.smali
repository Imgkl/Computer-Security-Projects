.class final enum Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;
.super Ljava/lang/Enum;
.source "GridTaskWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/task/GridTaskWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

.field public static final enum FINISHING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

.field public static final enum REDUCED:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

.field public static final enum REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

.field public static final enum WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 68
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    const-string v1, "REDUCING"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 71
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    const-string v1, "REDUCED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCED:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 74
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    const-string v1, "FINISHING"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->FINISHING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    .line 63
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->WAITING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->REDUCED:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->FINISHING:Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->$VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

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
    .line 63
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 63
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->$VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/task/GridTaskWorker$State;

    return-object v0
.end method
