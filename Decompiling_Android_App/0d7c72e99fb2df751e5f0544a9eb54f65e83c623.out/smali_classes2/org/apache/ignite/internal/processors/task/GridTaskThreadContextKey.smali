.class public final enum Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
.super Ljava/lang/Enum;
.source "GridTaskThreadContextKey.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

.field public static final enum TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

.field public static final enum TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

.field public static final enum TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

.field public static final enum TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

.field public static final enum TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;


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
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const-string v1, "TC_TASK_NAME"

    invoke-direct {v0, v1, v2}, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    .line 28
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const-string v1, "TC_NO_FAILOVER"

    invoke-direct {v0, v1, v3}, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    .line 31
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const-string v1, "TC_SUBGRID"

    invoke-direct {v0, v1, v4}, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    .line 34
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const-string v1, "TC_TIMEOUT"

    invoke-direct {v0, v1, v5}, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    .line 37
    new-instance v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    const-string v1, "TC_SUBJ_ID"

    invoke-direct {v0, v1, v6}, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TASK_NAME:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_NO_FAILOVER:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBGRID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_TIMEOUT:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->TC_SUBJ_ID:Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->$VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

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

.method public static valueOf(Ljava/lang/String;)Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    return-object v0
.end method

.method public static values()[Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->$VALUES:[Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    invoke-virtual {v0}, [Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/ignite/internal/processors/task/GridTaskThreadContextKey;

    return-object v0
.end method
