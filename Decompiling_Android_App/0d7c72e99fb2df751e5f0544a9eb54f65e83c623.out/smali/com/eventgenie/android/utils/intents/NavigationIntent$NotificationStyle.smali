.class public final enum Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;
.super Ljava/lang/Enum;
.source "NavigationIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/eventgenie/android/utils/intents/NavigationIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

.field public static final enum NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

.field public static final enum POPUP_OK:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

.field public static final enum TOAST_FAILURE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

.field public static final enum TOAST_INFO:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

.field public static final enum TOAST_SUCCESS:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 111
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 112
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    const-string v1, "TOAST_INFO"

    invoke-direct {v0, v1, v3}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_INFO:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 113
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    const-string v1, "TOAST_SUCCESS"

    invoke-direct {v0, v1, v4}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_SUCCESS:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 114
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    const-string v1, "TOAST_FAILURE"

    invoke-direct {v0, v1, v5}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_FAILURE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 115
    new-instance v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    const-string v1, "POPUP_OK"

    invoke-direct {v0, v1, v6}, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->POPUP_OK:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    .line 110
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->NONE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    aput-object v1, v0, v2

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_INFO:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    aput-object v1, v0, v3

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_SUCCESS:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    aput-object v1, v0, v4

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->TOAST_FAILURE:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    aput-object v1, v0, v5

    sget-object v1, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->POPUP_OK:Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    aput-object v1, v0, v6

    sput-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->$VALUES:[Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

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
    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    const-class v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    return-object v0
.end method

.method public static values()[Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->$VALUES:[Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    invoke-virtual {v0}, [Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/eventgenie/android/utils/intents/NavigationIntent$NotificationStyle;

    return-object v0
.end method
