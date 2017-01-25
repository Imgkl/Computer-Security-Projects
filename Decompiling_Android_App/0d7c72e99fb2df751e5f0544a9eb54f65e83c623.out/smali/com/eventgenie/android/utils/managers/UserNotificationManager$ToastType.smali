.class public final enum Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
.super Ljava/lang/Enum;
.source "UserNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/UserNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

.field public static final enum FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

.field public static final enum INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

.field public static final enum SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 505
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 506
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 507
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    const-string v1, "FAILURE"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    .line 504
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->INFO:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->SUCCESS:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->FAILURE:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->$VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

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
    .line 504
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 504
    const-class v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;
    .locals 1

    .prologue
    .line 504
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->$VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastType;

    return-object v0
.end method
