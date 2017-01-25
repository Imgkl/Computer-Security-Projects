.class public final enum Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
.super Ljava/lang/Enum;
.source "GridContinuousHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RegisterStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

.field public static final enum DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

.field public static final enum NOT_REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

.field public static final enum REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 36
    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    const-string v1, "REGISTERED"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    const-string v1, "NOT_REGISTERED"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->NOT_REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    new-instance v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    const-string v1, "DELAYED"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->NOT_REGISTERED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->DELAYED:Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    aput-object v1, v0, v4

    sput-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 35
    const-class v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->$VALUES:[Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/continuous/GridContinuousHandler$RegisterStatus;

    return-object v0
.end method
