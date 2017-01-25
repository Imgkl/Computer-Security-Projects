.class public final enum Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
.super Ljava/lang/Enum;
.source "IGenieNotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/genie_connect/android/notifications/IGenieNotificationsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SimpleNotificationsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

.field public static final enum SENT:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

.field public static final enum UPDATED:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

.field public static final enum WAITING:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v2}, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->WAITING:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    new-instance v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    const-string v1, "SENT"

    invoke-direct {v0, v1, v3}, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->SENT:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    new-instance v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    const-string v1, "UPDATED"

    invoke-direct {v0, v1, v4}, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->UPDATED:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    sget-object v1, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->WAITING:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->SENT:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->UPDATED:Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->$VALUES:[Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 34
    const-class v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    return-object v0
.end method

.method public static values()[Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->$VALUES:[Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    invoke-virtual {v0}, [Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/genie_connect/android/notifications/IGenieNotificationsManager$SimpleNotificationsState;

    return-object v0
.end method
