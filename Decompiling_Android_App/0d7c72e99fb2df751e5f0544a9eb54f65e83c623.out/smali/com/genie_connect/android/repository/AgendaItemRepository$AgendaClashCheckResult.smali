.class public final enum Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
.super Ljava/lang/Enum;
.source "AgendaItemRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/repository/AgendaItemRepository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AgendaClashCheckResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

.field public static final enum BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

.field public static final enum Clash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

.field public static final enum NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 162
    new-instance v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    const-string v1, "NoClash"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    .line 163
    new-instance v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    const-string v1, "Clash"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->Clash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    .line 164
    new-instance v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    const-string v1, "BlockingClash"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    sget-object v1, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->NoClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->Clash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->BlockingClash:Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->$VALUES:[Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

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
    .line 161
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 161
    const-class v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;
    .locals 1

    .prologue
    .line 161
    sget-object v0, Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->$VALUES:[Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    invoke-virtual {v0}, [Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/repository/AgendaItemRepository$AgendaClashCheckResult;

    return-object v0
.end method
