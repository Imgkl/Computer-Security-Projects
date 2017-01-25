.class public final enum Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;
.super Ljava/lang/Enum;
.source "UserNotificationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/managers/UserNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ToastDuration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

.field public static final enum LONG:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

.field public static final enum MEDIUM:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

.field public static final enum SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 499
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    .line 500
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    const-string v1, "MEDIUM"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->MEDIUM:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    .line 501
    new-instance v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    const-string v1, "LONG"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->LONG:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    .line 498
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->SHORT:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->MEDIUM:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->LONG:Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    aput-object v1, v0, v4

    sput-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->$VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

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
    .line 498
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 498
    const-class v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;
    .locals 1

    .prologue
    .line 498
    sget-object v0, Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->$VALUES:[Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/managers/UserNotificationManager$ToastDuration;

    return-object v0
.end method
