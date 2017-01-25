.class public final enum Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;
.super Ljava/lang/Enum;
.source "HadoopJobPhase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field public static final enum PHASE_CANCELLING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field public static final enum PHASE_COMPLETE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field public static final enum PHASE_MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field public static final enum PHASE_REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

.field public static final enum PHASE_SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    const-string v1, "PHASE_SETUP"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    const-string v1, "PHASE_MAP"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    const-string v1, "PHASE_REDUCE"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    const-string v1, "PHASE_CANCELLING"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_CANCELLING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    const-string v1, "PHASE_COMPLETE"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_COMPLETE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_SETUP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_MAP:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_REDUCE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_CANCELLING:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->PHASE_COMPLETE:Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->$VALUES:[Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/hadoop/HadoopJobPhase;

    return-object v0
.end method
